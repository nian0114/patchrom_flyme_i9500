.class public Lcom/sec/android/app/camera/glwidget/TwGLHandler;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLHandler.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;
    }
.end annotation


# static fields
.field private static final BOUND_RECT_THICKNESS:I

.field public static final HANDLER_4POINT:I = 0x4

.field public static final HANDLER_8POINT:I = 0x8

.field private static final HANDLER_AREA_PADDING:I

.field public static LEFT_LOCK:I = 0x0

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_RIGHT:I = 0x2

.field private static final MOVE_TOP:I = 0x4

.field private static final MOVE_WHOLERECT:I = 0x10

.field public static NONE_LOCK:I = 0x0

.field private static final OUTER_BOUND_RECT_THICKNESS:I

.field private static final RECT_NORMAL_WIDTH_POS_X:I

.field private static final RESIZE_HANDLE_OFFSET:I

.field private static final RESIZE_HANDLE_SIZE:I

.field public static RIGHT_LOCK:I = 0x0

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "TwGLHandler"


# instance fields
.field private HANDLE_SIZE:F

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAspectRatio:F

.field private mBackGround:Lcom/sec/android/glview/TwGLImage;

.field private mBoundRect:Landroid/graphics/RectF;

.field private mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

.field private mDisable:Z

.field private mDragStartPoint:Landroid/graphics/PointF;

.field private mDraggable:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowBoundry:Z

.field private mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

.field private mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

.field private mHandlerType:I

.field private mHandler_area_bottom_boundary:I

.field private mHandler_area_left_boundary:I

.field private mHandler_area_right_boundary:I

.field private mHandler_area_top_boundary:I

.field private mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

.field private mIsAspectRatioLocked:Z

.field private mMaxRect:Landroid/graphics/RectF;

.field private mMinRect:Landroid/graphics/RectF;

.field private mNumberOfPointer:I

.field private mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

.field private mRect:Landroid/graphics/RectF;

.field private mRectBeforeDragged:Landroid/graphics/RectF;

.field private mRectBeforeInvisible:Landroid/graphics/RectF;

.field private mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

.field private mResizeHandleType:[I

.field private mShowBoundry:Z

.field private mSideLock:I

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mWidthOffsetForhandle:I

.field private shiftRect:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    .line 90
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    .line 91
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    .line 102
    const v0, 0x7f0a0305

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->BOUND_RECT_THICKNESS:I

    .line 103
    const v0, 0x7f0a0306

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    .line 104
    const v0, 0x7f0a0307

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RESIZE_HANDLE_SIZE:I

    .line 105
    const v0, 0x7f0a0308

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RESIZE_HANDLE_OFFSET:I

    .line 106
    const v0, 0x7f0a02cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RECT_NORMAL_WIDTH_POS_X:I

    .line 108
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_WIDTH:I

    .line 109
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_HEIGHT:I

    .line 110
    const v0, 0x7f0a01f6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 13
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "type"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 141
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 56
    iput v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    .line 61
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    .line 62
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    .line 64
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 65
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 66
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 67
    new-array v0, v12, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    .line 68
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    .line 80
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDragStartPoint:Landroid/graphics/PointF;

    .line 84
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDraggable:Z

    .line 85
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mShowBoundry:Z

    .line 86
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGrowBoundry:Z

    .line 87
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    .line 93
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    .line 95
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    .line 96
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    .line 97
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    const v1, -0x3a63c000    # -5000.0f

    const v3, -0x3a63c000    # -5000.0f

    const v4, 0x459c4000    # 5000.0f

    const v5, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x43160000    # 150.0f

    const/high16 v3, 0x43160000    # 150.0f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x43fa0000    # 500.0f

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    .line 112
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mWidthOffsetForhandle:I

    .line 113
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    .line 114
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_right_boundary:I

    .line 115
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_top_boundary:I

    .line 116
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_bottom_boundary:I

    .line 117
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->shiftRect:F

    .line 119
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    .line 120
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    .line 122
    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownX:I

    .line 123
    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownY:I

    .line 125
    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mNumberOfPointer:I

    .line 142
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    .line 143
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 145
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 147
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v3, 0x7f090013

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->BOUND_RECT_THICKNESS:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 148
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v3, 0x7f090014

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 149
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v3, 0x7f090014

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 154
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, v11}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLImage;->setDragSensitivity(I)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 161
    const v0, 0x7f0a02ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mWidthOffsetForhandle:I

    .line 162
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mWidthOffsetForhandle:I

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mWidthOffsetForhandle:I

    .line 166
    :cond_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v9, v0, :cond_1

    .line 167
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RESIZE_HANDLE_SIZE:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RESIZE_HANDLE_SIZE:I

    int-to-float v5, v3

    const v7, 0x7f0203e3

    move v3, v2

    move v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    aput-object v0, v10, v9

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RESIZE_HANDLE_OFFSET:I

    int-to-float v1, v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RESIZE_HANDLE_OFFSET:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->setResourceOffset(FF)Z

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setDragVibration(Z)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLImage;->setDragSensitivity(I)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 166
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    const/4 v1, 0x5

    aput v1, v0, v11

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    const/4 v1, 0x6

    aput v1, v0, v8

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    const/4 v1, 0x2

    const/16 v2, 0xa

    aput v2, v0, v1

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    const/4 v1, 0x3

    const/16 v2, 0x9

    aput v2, v0, v1

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    const/16 v1, 0x10

    aput v1, v0, v12

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    return v0
.end method

.method private applyMovement(Landroid/graphics/PointF;I)V
    .locals 8
    .param p1, "delta_in"    # Landroid/graphics/PointF;
    .param p2, "index"    # I

    .prologue
    .line 930
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 931
    .local v6, "delta":Landroid/graphics/PointF;
    new-instance v7, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 932
    .local v7, "rect":Landroid/graphics/RectF;
    invoke-virtual {v6, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDraggable:Z

    if-eqz v0, :cond_1

    .line 935
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v7, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v7

    .line 942
    :goto_0
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;->onMove(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 947
    :cond_0
    return-void

    .line 936
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGrowBoundry:Z

    if-eqz v0, :cond_0

    .line 937
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v7, v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->growBy(Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;

    move-result-object v7

    goto :goto_0
.end method

.method private filterMovement(Landroid/graphics/PointF;I)V
    .locals 2
    .param p1, "delta"    # Landroid/graphics/PointF;
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 971
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 972
    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 975
    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 977
    :cond_1
    return-void
.end method

.method private getHandleIndex(Lcom/sec/android/glview/TwGLView;)I
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 288
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    const/4 v0, 0x4

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private growBy(Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;
    .locals 7
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "index"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 346
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 348
    .local v2, "ret":Landroid/graphics/RectF;
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-eqz v3, :cond_3d

    .line 349
    packed-switch p4, :pswitch_data_0

    .line 495
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 496
    .local v0, "mHeight":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 498
    .local v1, "mWidth":F
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 501
    :cond_1
    packed-switch p4, :pswitch_data_1

    .line 587
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 588
    :cond_3
    packed-switch p4, :pswitch_data_2

    .line 662
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 663
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 665
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 666
    packed-switch p4, :pswitch_data_3

    .line 706
    :cond_5
    :goto_3
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 708
    :cond_6
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 709
    packed-switch p4, :pswitch_data_4

    .line 749
    :cond_7
    :goto_4
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 751
    :cond_8
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    .line 752
    packed-switch p4, :pswitch_data_5

    .line 813
    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 815
    :cond_a
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    .line 816
    packed-switch p4, :pswitch_data_6

    .line 875
    :cond_b
    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 925
    :cond_c
    :goto_7
    return-object v2

    .line 351
    .end local v0    # "mHeight":F
    .end local v1    # "mWidth":F
    :pswitch_2
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 353
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_e

    .line 354
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    .line 355
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 356
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 357
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 359
    :cond_d
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 360
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 361
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 364
    :cond_e
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_0

    .line 365
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    .line 366
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 367
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 369
    :cond_f
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 370
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 375
    :pswitch_3
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 377
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_11

    .line 378
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    .line 379
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 380
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 381
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 384
    :cond_10
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 385
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 386
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 389
    :cond_11
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_0

    .line 390
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    .line 391
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 392
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 394
    :cond_12
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 395
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 400
    :pswitch_4
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 402
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_14

    .line 403
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    .line 404
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 405
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 406
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 409
    :cond_13
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 410
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 411
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 414
    :cond_14
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_0

    .line 415
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    .line 416
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 417
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 419
    :cond_15
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 420
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 425
    :pswitch_5
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 427
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_17

    .line 428
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    .line 429
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 430
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 431
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 434
    :cond_16
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 435
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 436
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 439
    :cond_17
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_0

    .line 440
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_18

    .line 441
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 442
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 444
    :cond_18
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 445
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 450
    :pswitch_6
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_19

    .line 451
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 452
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 453
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 454
    :cond_19
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_1a

    .line 455
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 456
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 457
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 458
    :cond_1a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_0

    .line 459
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 460
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 461
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 465
    :pswitch_7
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 467
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 468
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 469
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 472
    :pswitch_8
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_1b

    .line 473
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 474
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 475
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 476
    :cond_1b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_1c

    .line 477
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 478
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 479
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 480
    :cond_1c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_0

    .line 481
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 482
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 483
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 487
    :pswitch_9
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 489
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 490
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 491
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 503
    .restart local v0    # "mHeight":F
    .restart local v1    # "mWidth":F
    :pswitch_a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_1d

    .line 504
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 505
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 506
    :cond_1d
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 507
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 508
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 509
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 513
    :pswitch_b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_1e

    .line 514
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 515
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 516
    :cond_1e
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 517
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 518
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 519
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 523
    :pswitch_c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_1f

    .line 524
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 525
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 526
    :cond_1f
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 527
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 528
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 529
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 533
    :pswitch_d
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_20

    .line 534
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 535
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 536
    :cond_20
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 537
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 538
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 539
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 543
    :pswitch_e
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_21

    .line 544
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 545
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 546
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 547
    :cond_21
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_22

    .line 548
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 549
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 550
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 551
    :cond_22
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 552
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 553
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 554
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 558
    :pswitch_f
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 559
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 560
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 563
    :pswitch_10
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_23

    .line 564
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 565
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 566
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 567
    :cond_23
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_24

    .line 568
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 569
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 570
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 571
    :cond_24
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 572
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 573
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 574
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 578
    :pswitch_11
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 579
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 580
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 590
    :pswitch_12
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_25

    .line 591
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 592
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 593
    :cond_25
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_4

    .line 594
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 595
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 596
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 600
    :pswitch_13
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_26

    .line 601
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 602
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 603
    :cond_26
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_4

    .line 604
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 605
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 606
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 610
    :pswitch_14
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_27

    .line 611
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 612
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 613
    :cond_27
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_4

    .line 614
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 615
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 616
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 620
    :pswitch_15
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_28

    .line 621
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 622
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 623
    :cond_28
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_4

    .line 624
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 625
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 626
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 630
    :pswitch_16
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_29

    .line 631
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 632
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 633
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 634
    :cond_29
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_2a

    .line 635
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 636
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 637
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 638
    :cond_2a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_4

    .line 639
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 640
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 641
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    .line 645
    :pswitch_17
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 646
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 647
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 650
    :pswitch_18
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 651
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 652
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 655
    :pswitch_19
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 656
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 657
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    .line 668
    :pswitch_1a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_2b

    .line 669
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 670
    :cond_2b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_5

    .line 671
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 672
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 676
    :pswitch_1b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_2c

    .line 677
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 678
    :cond_2c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_5

    .line 679
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 680
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 684
    :pswitch_1c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_2d

    .line 685
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 686
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    .line 687
    :cond_2d
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_5

    .line 688
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 689
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 693
    :pswitch_1d
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_2e

    .line 694
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 695
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    .line 696
    :cond_2e
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_5

    .line 697
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 698
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 702
    :pswitch_1e
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 703
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 711
    :pswitch_1f
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_2f

    .line 712
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_4

    .line 713
    :cond_2f
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_7

    .line 714
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 715
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 719
    :pswitch_20
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_30

    .line 720
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 721
    :cond_30
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_7

    .line 722
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 723
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 727
    :pswitch_21
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_31

    .line 728
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 729
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    .line 730
    :cond_31
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_7

    .line 731
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 732
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 736
    :pswitch_22
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 737
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 740
    :pswitch_23
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_32

    .line 741
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 742
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    .line 743
    :cond_32
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_7

    .line 744
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 745
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 754
    :pswitch_24
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_33

    .line 755
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_5

    .line 756
    :cond_33
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 757
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 758
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 762
    :pswitch_25
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_34

    .line 763
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    .line 765
    :cond_34
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 766
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 767
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 771
    :pswitch_26
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 772
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 773
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 777
    :pswitch_27
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 778
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 779
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 783
    :pswitch_28
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_35

    .line 784
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 785
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    .line 786
    :cond_35
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_36

    .line 787
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 788
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 789
    :cond_36
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 790
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 791
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 795
    :pswitch_29
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 796
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    .line 799
    :pswitch_2a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_37

    .line 800
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 801
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 802
    :cond_37
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 803
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 804
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 808
    :pswitch_2b
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 809
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_5

    .line 818
    :pswitch_2c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 819
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 820
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 824
    :pswitch_2d
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 825
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 826
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 830
    :pswitch_2e
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_38

    .line 831
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 832
    :cond_38
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 833
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 834
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 838
    :pswitch_2f
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_39

    .line 839
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_6

    .line 840
    :cond_39
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 841
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 842
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 846
    :pswitch_30
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_3a

    .line 847
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 848
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 849
    :cond_3a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 850
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 851
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 855
    :pswitch_31
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 856
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 859
    :pswitch_32
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_3b

    .line 860
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 861
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 862
    :cond_3b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_3c

    .line 863
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 864
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 865
    :cond_3c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 866
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 867
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 871
    :pswitch_33
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 872
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_6

    .line 878
    .end local v0    # "mHeight":F
    .end local v1    # "mWidth":F
    :cond_3d
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 879
    .restart local v0    # "mHeight":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 881
    .restart local v1    # "mWidth":F
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3e

    .line 882
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 883
    :cond_3e
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3f

    .line 884
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 885
    :cond_3f
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_40

    .line 886
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 887
    :cond_40
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_41

    .line 888
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 890
    :cond_41
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_43

    .line 891
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    .line 892
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 893
    :cond_42
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_43

    .line 894
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 896
    :cond_43
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_45

    .line 897
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_44

    .line 898
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 899
    :cond_44
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_45

    .line 900
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 903
    :cond_45
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_47

    .line 904
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_46

    .line 905
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 906
    :cond_46
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_47

    .line 907
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 909
    :cond_47
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_49

    .line 910
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_48

    .line 911
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 912
    :cond_48
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_49

    .line 913
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 916
    :cond_49
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4a

    .line 917
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 918
    :cond_4a
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4b

    .line 919
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 920
    :cond_4b
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4c

    .line 921
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 922
    :cond_4c
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    .line 923
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_7

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 501
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 588
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 666
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    .line 709
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
        :pswitch_1
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    .line 752
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    .line 816
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public applyInvisible()V
    .locals 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 956
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    .line 958
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 960
    .local v6, "rect":Landroid/graphics/RectF;
    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget v1, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;->onMove(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 965
    :cond_0
    return-void
.end method

.method public calcBoundary(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4
    .param p1, "in"    # Landroid/graphics/RectF;

    .prologue
    .line 1313
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1315
    .local v0, "out":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1316
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1317
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1319
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1320
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1321
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1323
    :cond_1
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 1324
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1325
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1327
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1328
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1329
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1331
    :cond_3
    return-object v0
.end method

.method public calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;
    .locals 24
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "rotationIndex"    # I
    .param p3, "Boundrycheck"    # Z

    .prologue
    .line 1254
    const-wide/16 v16, 0x0

    .line 1255
    .local v16, "theta":D
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1257
    .local v6, "out":Landroid/graphics/RectF;
    packed-switch p2, :pswitch_data_0

    .line 1271
    const-wide/16 v16, 0x0

    .line 1275
    :goto_0
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    add-float v7, v7, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v7, v18

    float-to-double v2, v7

    .line 1276
    .local v2, "Tx":D
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    add-float v7, v7, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v7, v18

    float-to-double v4, v7

    .line 1278
    .local v4, "Ty":D
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v7

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    add-double v10, v18, v2

    .line 1279
    .local v10, "pleft":D
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v7

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v14, v18, v4

    .line 1280
    .local v14, "ptop":D
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v7

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    add-double v12, v18, v2

    .line 1281
    .local v12, "pright":D
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v7

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v8, v18, v4

    .line 1284
    .local v8, "pbottom":D
    cmpg-double v7, v10, v12

    if-gez v7, :cond_3

    move-wide/from16 v18, v10

    :goto_1
    move-wide/from16 v0, v18

    double-to-float v7, v0

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 1285
    cmpg-double v7, v14, v8

    if-gez v7, :cond_4

    move-wide/from16 v18, v14

    :goto_2
    move-wide/from16 v0, v18

    double-to-float v7, v0

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 1288
    cmpl-double v7, v10, v12

    if-lez v7, :cond_5

    .end local v10    # "pleft":D
    :goto_3
    double-to-float v7, v10

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 1289
    cmpl-double v7, v14, v8

    if-lez v7, :cond_6

    .end local v14    # "ptop":D
    :goto_4
    double-to-float v7, v14

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 1297
    iget v7, v6, Landroid/graphics/RectF;->left:F

    const/16 v18, 0x0

    cmpg-float v7, v7, v18

    if-gez v7, :cond_0

    .line 1298
    iget v7, v6, Landroid/graphics/RectF;->right:F

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v7, v7, v18

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 1299
    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 1301
    :cond_0
    iget v7, v6, Landroid/graphics/RectF;->top:F

    const/16 v18, 0x0

    cmpg-float v7, v7, v18

    if-gez v7, :cond_1

    .line 1302
    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    sub-float v7, v7, v18

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 1303
    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 1306
    :cond_1
    if-eqz p3, :cond_2

    .line 1307
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcBoundary(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    .line 1309
    .end local v6    # "out":Landroid/graphics/RectF;
    :cond_2
    return-object v6

    .line 1259
    .end local v2    # "Tx":D
    .end local v4    # "Ty":D
    .end local v8    # "pbottom":D
    .end local v12    # "pright":D
    .restart local v6    # "out":Landroid/graphics/RectF;
    :pswitch_0
    const-wide/16 v16, 0x0

    .line 1260
    goto/16 :goto_0

    .line 1262
    :pswitch_1
    const-wide v16, 0x4012d97c7f3321d2L    # 4.71238898038469

    .line 1263
    goto/16 :goto_0

    .line 1265
    :pswitch_2
    const-wide v16, 0x400921fb54442d18L    # Math.PI

    .line 1266
    goto/16 :goto_0

    .line 1268
    :pswitch_3
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 1269
    goto/16 :goto_0

    .restart local v2    # "Tx":D
    .restart local v4    # "Ty":D
    .restart local v8    # "pbottom":D
    .restart local v10    # "pleft":D
    .restart local v12    # "pright":D
    .restart local v14    # "ptop":D
    :cond_3
    move-wide/from16 v18, v12

    .line 1284
    goto :goto_1

    :cond_4
    move-wide/from16 v18, v8

    .line 1285
    goto :goto_2

    :cond_5
    move-wide v10, v12

    .line 1288
    goto :goto_3

    .end local v10    # "pleft":D
    :cond_6
    move-wide v14, v8

    .line 1289
    goto :goto_4

    .line 1257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aput-object v2, v1, v0

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    .line 303
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_3

    .line 304
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aput-object v2, v1, v0

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    .line 310
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_4

    .line 311
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 313
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_5

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 315
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    .line 317
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    .line 318
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 320
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_7

    .line 321
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    .line 323
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_8

    .line 324
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    .line 326
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_9

    .line 327
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    .line 329
    :cond_9
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 330
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 331
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 332
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 333
    return-void
.end method

.method public getBackGroundImage()Lcom/sec/android/glview/TwGLImage;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method public getBoundryShowed()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mShowBoundry:Z

    return v0
.end method

.method public getDisable()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    return v0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDraggable:Z

    return v0
.end method

.method public getGrowable()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGrowBoundry:Z

    return v0
.end method

.method public getPosition()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPositionForVisible()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRectBeforeDragged()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 950
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 951
    .local v0, "rect":Landroid/graphics/RectF;
    return-object v0
.end method

.method public getSideLock()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    return v0
.end method

.method public getonHandlerMoveListener()Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    return-object v0
.end method

.method public hideBoundryRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mShowBoundry:Z

    .line 269
    return-void
.end method

.method public moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;
    .locals 5
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v4, 0x0

    .line 336
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 338
    .local v0, "ret":Landroid/graphics/RectF;
    invoke-virtual {v0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 342
    return-object v0
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    .line 1140
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isContextMenuOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_2

    .line 1144
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    if-eqz v2, :cond_2

    .line 1145
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1150
    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1151
    .local v1, "point":Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 1153
    .local v0, "delta":Landroid/graphics/PointF;
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDragStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 1154
    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDragStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 1157
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getHandleIndex(Lcom/sec/android/glview/TwGLView;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->filterMovement(Landroid/graphics/PointF;I)V

    .line 1159
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getHandleIndex(Lcom/sec/android/glview/TwGLView;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->applyMovement(Landroid/graphics/PointF;I)V

    goto :goto_0
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDragStartPoint:Landroid/graphics/PointF;

    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;->onHandlerDragEnd(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    .line 1170
    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBound()V

    .line 1123
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDragStartPoint:Landroid/graphics/PointF;

    .line 1126
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;->onHandlerDragStart(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    .line 1131
    :cond_0
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x30

    const/4 v0, 0x1

    .line 1183
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isContextMenuOpened()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1184
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isContextMenuOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1187
    :cond_2
    const/4 v0, 0x0

    .line 1241
    :cond_3
    :goto_0
    return v0

    .line 1189
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mNumberOfPointer:I

    .line 1191
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1195
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_3

    .line 1197
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1200
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownX:I

    .line 1201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownY:I

    goto :goto_0

    .line 1238
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1217
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mNumberOfPointer:I

    if-ne v1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, v2, Lcom/sec/android/app/camera/Camera;->mMoveThreshold:I

    if-ge v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, v2, Lcom/sec/android/app/camera/Camera;->mMoveThreshold:I

    if-ge v1, v2, :cond_3

    .line 1220
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v1

    if-eq v1, v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_3

    .line 1223
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1225
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->handleShutterReleaseEvent()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetHandler()V
    .locals 5

    .prologue
    const/high16 v4, 0x43fa0000    # 500.0f

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v2, 0x42c80000    # 100.0f

    .line 1335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 1336
    const/high16 v0, 0x43c80000    # 400.0f

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1337
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1338
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1339
    return-void
.end method

.method public setAspectRatioLocked(Z)V
    .locals 4
    .param p1, "locked"    # Z

    .prologue
    .line 1038
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-ne v2, p1, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    .line 1043
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    .line 1046
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1047
    .local v1, "width":F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1049
    .local v0, "height":F
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v0

    .line 1050
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1052
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1053
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1055
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v0

    .line 1056
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public setBackGroundInvisible()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 255
    return-void
.end method

.method public setBackGroundVisible()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 251
    return-void
.end method

.method public setDisable(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 197
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDragVibration(Z)V
    .locals 1
    .param p1, "vibration"    # Z

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->setDragVibration(Z)V

    .line 237
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "drag"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDraggable:Z

    .line 205
    return-void
.end method

.method public setGrowable(Z)V
    .locals 0
    .param p1, "grow"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGrowBoundry:Z

    .line 219
    return-void
.end method

.method public setHandlerAreaBottomBoundary(I)V
    .locals 0
    .param p1, "bottom_boundary"    # I

    .prologue
    .line 1346
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_bottom_boundary:I

    .line 1347
    return-void
.end method

.method public setHandlerAreaTopBoundary(I)V
    .locals 0
    .param p1, "top_boundary"    # I

    .prologue
    .line 1342
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_top_boundary:I

    .line 1343
    return-void
.end method

.method public setMaxBound()V
    .locals 5

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x0

    .line 984
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->IsNormalCameraPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 985
    const v1, 0x7f0a02ff

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mWidthOffsetForhandle:I

    .line 986
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mWidthOffsetForhandle:I

    if-nez v1, :cond_0

    .line 987
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getDualHandlerOffset()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mWidthOffsetForhandle:I

    .line 989
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 990
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mWidthOffsetForhandle:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    .line 994
    :goto_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_right_boundary:I

    .line 1006
    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_top_boundary:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1007
    .local v0, "boundRecf":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 1008
    return-void

    .line 992
    .end local v0    # "boundRecf":Landroid/graphics/RectF;
    :cond_1
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mWidthOffsetForhandle:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    goto :goto_0

    .line 996
    :cond_2
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mWidthOffsetForhandle:I

    .line 997
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 998
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    .line 999
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_WIDTH:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_right_boundary:I

    goto :goto_1

    .line 1001
    :cond_3
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    .line 1002
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_right_boundary:I

    goto :goto_1
.end method

.method public setMaxBoundRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/RectF;

    .prologue
    .line 980
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 981
    return-void
.end method

.method public setMaxSizeF(FF)V
    .locals 4
    .param p1, "in_width"    # F
    .param p2, "in_height"    # F

    .prologue
    const/4 v3, 0x0

    .line 1025
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    .line 1027
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1028
    .local v1, "width":F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1030
    .local v0, "height":F
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    .line 1031
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v0

    .line 1032
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1034
    :cond_0
    return-void
.end method

.method public setMinSizeF(FF)V
    .locals 4
    .param p1, "in_width"    # F
    .param p2, "in_height"    # F

    .prologue
    const/4 v3, 0x0

    .line 1011
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    .line 1013
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1014
    .local v1, "width":F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1016
    .local v0, "height":F
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    .line 1017
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v0

    .line 1018
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1022
    :cond_0
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 1067
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->IsNormalCameraPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    :cond_0
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->shiftRect:F

    .line 1072
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p1, p3

    add-float v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    .line 1074
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, p3, p4}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1075
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    add-float/2addr v2, v7

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1077
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    add-float/2addr v1, p3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->shiftRect:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    add-float/2addr v2, p4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setSize(FF)V

    .line 1078
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v1, v6

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    sub-float v2, p2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->moveLayoutAbsolute(FF)V

    .line 1080
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->shiftRect:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p3, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, p4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 1082
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    add-float/2addr v2, v7

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->shiftRect:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 1083
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->shiftRect:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    sub-float v4, p3, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->OUTER_BOUND_RECT_THICKNESS:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    sub-float v5, p4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 1088
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_1

    .line 1089
    packed-switch v0, :pswitch_data_0

    .line 1088
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1092
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->shiftRect:F

    invoke-virtual {v1, v2, v7}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1095
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->shiftRect:F

    add-float/2addr v2, p3

    invoke-virtual {v1, v2, v7}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1098
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->shiftRect:F

    add-float/2addr v2, p3

    invoke-virtual {v1, v2, p4}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1101
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->shiftRect:F

    invoke-virtual {v1, v2, p4}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1118
    :cond_1
    return-void

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setResizeHandleDragVibration(Z)V
    .locals 2
    .param p1, "vibration"    # Z

    .prologue
    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLImage;->setDragVibration(Z)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public setSideLock(I)V
    .locals 2
    .param p1, "lock"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    .line 227
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 229
    :cond_0
    return-void
.end method

.method public setonHandlerDragChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    .line 285
    return-void
.end method

.method public setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    .line 277
    return-void
.end method

.method public showBoundryRect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mShowBoundry:Z

    .line 247
    return-void
.end method

.method public updateRectBeforeDragged()V
    .locals 2

    .prologue
    .line 1134
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    .line 1135
    return-void
.end method
