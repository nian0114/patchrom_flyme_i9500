.class public Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLWheelList.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;,
        Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x96

.field private static final CENTER_LAYOUT_INDEX:I

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final FLING_DECELERATION_DIP:F = 1.0f

.field private static final FLING_STOP_THRESHOLD_DIP:F = 10.0f

.field private static final FLING_VELOCITY_DIVIDE_FACTOR:I

.field private static final LAYOUT_POSITIONS:I

.field private static final LIST_ITEM0_LANDSCAPE_POS_X:I

.field private static final LIST_ITEM0_LANDSCAPE_POS_Y:I

.field private static final LIST_ITEM0_PORTRAIT_POS_X:I

.field private static final LIST_ITEM0_PORTRAIT_POS_Y:I

.field private static final LIST_ITEM0_POS_Z:I

.field private static final LIST_ITEM0_SCALE:F = 0.51f

.field private static final LIST_ITEM1_LANDSCAPE_POS_X:I

.field private static final LIST_ITEM1_LANDSCAPE_POS_Y:I

.field private static final LIST_ITEM1_PORTRAIT_POS_X:I

.field private static final LIST_ITEM1_PORTRAIT_POS_Y:I

.field private static final LIST_ITEM1_POS_Z:I

.field private static final LIST_ITEM1_SCALE:F = 0.65f

.field private static final LIST_ITEM2_LANDSCAPE_POS_X:I

.field private static final LIST_ITEM2_LANDSCAPE_POS_Y:I

.field private static final LIST_ITEM2_PORTRAIT_POS_X:I

.field private static final LIST_ITEM2_PORTRAIT_POS_Y:I

.field private static final LIST_ITEM2_POS_Z:I

.field private static final LIST_ITEM2_SCALE:F = 0.8f

.field private static final LIST_ITEM3_LANDSCAPE_POS_X:I

.field private static final LIST_ITEM3_LANDSCAPE_POS_Y:I

.field private static final LIST_ITEM3_PORTRAIT_POS_X:I

.field private static final LIST_ITEM3_PORTRAIT_POS_Y:I

.field private static final LIST_ITEM3_POS_Z:I

.field private static final LIST_ITEM3_SCALE:F = 1.0f

.field private static final LIST_ITEM4_LANDSCAPE_POS_X:I

.field private static final LIST_ITEM4_LANDSCAPE_POS_Y:I

.field private static final LIST_ITEM4_PORTRAIT_POS_X:I

.field private static final LIST_ITEM4_PORTRAIT_POS_Y:I

.field private static final LIST_ITEM4_POS_Z:I

.field private static final LIST_ITEM4_SCALE:F = 0.8f

.field private static final LIST_ITEM5_LANDSCAPE_POS_X:I

.field private static final LIST_ITEM5_LANDSCAPE_POS_Y:I

.field private static final LIST_ITEM5_PORTRAIT_POS_X:I

.field private static final LIST_ITEM5_PORTRAIT_POS_Y:I

.field private static final LIST_ITEM5_POS_Z:I

.field private static final LIST_ITEM5_SCALE:F = 0.65f

.field private static final LIST_ITEM6_LANDSCAPE_POS_X:I

.field private static final LIST_ITEM6_LANDSCAPE_POS_Y:I

.field private static final LIST_ITEM6_PORTRAIT_POS_X:I

.field private static final LIST_ITEM6_PORTRAIT_POS_Y:I

.field private static final LIST_ITEM6_POS_Z:I

.field private static final LIST_ITEM6_SCALE:F = 0.51f

.field private static final LIST_ITEM_FOCUS_PADDING:I

.field private static final MODE_MENU_ITEM_HEIGHT:I

.field private static final MODE_MENU_ITEM_WIDTH:I

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_PORTRAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLWheelList"

.field private static final VELOCITY_MODERATION_RATIO:F = 0.2f

.field private static final VELOCITY_REVISE_LIMIT_DIP:F = 30.0f

.field public static final VISIBLE_ITEMS:I


# instance fields
.field private alignAnimation:Ljava/lang/Runnable;

.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mAlignAnimator:Landroid/animation/ValueAnimator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseOffset:F

.field private mCenterIndex:I

.field private mCurrentScrollRatio:F

.field private final mFlingStopThreshold:F

.field private mFlingVelocity:F

.field private mFlingVelocityY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mItemOrientation:I

.field private mLastCenterIndex:I

.field private mLastTouchedLayoutIndex:I

.field private mLayoutIndexCompensation:I

.field private mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

.field protected mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

.field private mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

.field private mOrientationUpdatePended:Z

.field private mPlaySwipeSoundThread:Ljava/lang/Thread;

.field private mPreviousAnimatedValue:F

.field private mScrollDirection:I

.field private mScrollThreshold:F

.field private mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

.field private mScrollY:F

.field private mScrolling:Z

.field private mStartIndex:I

.field private mStreamVolume:I

.field private mSwipeSoundId:I

.field private mSwipeSoundPool:Landroid/media/SoundPool;

.field private final mVelocityLimit:F

.field private mViewIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scrollToCenterAnimation:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f0a005b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    .line 31
    const v0, 0x7f0a005c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    .line 33
    const v0, 0x7f0a006c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_LANDSCAPE_POS_X:I

    .line 34
    const v0, 0x7f0a006d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_LANDSCAPE_POS_Y:I

    .line 35
    const v0, 0x7f0a006e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_PORTRAIT_POS_X:I

    .line 36
    const v0, 0x7f0a006f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_PORTRAIT_POS_Y:I

    .line 37
    const v0, 0x7f0a0070

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_POS_Z:I

    .line 38
    const v0, 0x7f0a0071

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_X:I

    .line 39
    const v0, 0x7f0a0072

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_Y:I

    .line 40
    const v0, 0x7f0a0073

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_X:I

    .line 41
    const v0, 0x7f0a0074

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_Y:I

    .line 42
    const v0, 0x7f0a0075

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    .line 43
    const v0, 0x7f0a0076

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_X:I

    .line 44
    const v0, 0x7f0a0077

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_Y:I

    .line 45
    const v0, 0x7f0a0078

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_X:I

    .line 46
    const v0, 0x7f0a0079

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_Y:I

    .line 47
    const v0, 0x7f0a007a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    .line 48
    const v0, 0x7f0a007b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_LANDSCAPE_POS_X:I

    .line 49
    const v0, 0x7f0a007c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_LANDSCAPE_POS_Y:I

    .line 50
    const v0, 0x7f0a007d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_PORTRAIT_POS_X:I

    .line 51
    const v0, 0x7f0a007e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_PORTRAIT_POS_Y:I

    .line 52
    const v0, 0x7f0a007f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_POS_Z:I

    .line 53
    const v0, 0x7f0a0080

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_X:I

    .line 54
    const v0, 0x7f0a0081

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_Y:I

    .line 55
    const v0, 0x7f0a0082

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_X:I

    .line 56
    const v0, 0x7f0a0083

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_Y:I

    .line 57
    const v0, 0x7f0a0084

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    .line 58
    const v0, 0x7f0a0085

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_X:I

    .line 59
    const v0, 0x7f0a0086

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_Y:I

    .line 60
    const v0, 0x7f0a0087

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_X:I

    .line 61
    const v0, 0x7f0a0088

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_Y:I

    .line 62
    const v0, 0x7f0a0089

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    .line 63
    const v0, 0x7f0a008a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_LANDSCAPE_POS_X:I

    .line 64
    const v0, 0x7f0a008b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_LANDSCAPE_POS_Y:I

    .line 65
    const v0, 0x7f0a008c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_PORTRAIT_POS_X:I

    .line 66
    const v0, 0x7f0a008d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_PORTRAIT_POS_Y:I

    .line 67
    const v0, 0x7f0a008e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_POS_Z:I

    .line 69
    const v0, 0x7f0a008f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM_FOCUS_PADDING:I

    .line 85
    const v0, 0x7f0b0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    .line 86
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LAYOUT_POSITIONS:I

    .line 88
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I

    .line 101
    const v0, 0x7f0b0008

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->FLING_VELOCITY_DIVIDE_FACTOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 6
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 267
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 109
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LAYOUT_POSITIONS:I

    new-array v0, v0, [Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mViewIds:Ljava/util/ArrayList;

    .line 113
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollDirection:I

    .line 116
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollThreshold:F

    .line 119
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollY:F

    .line 121
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 122
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocity:F

    .line 125
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    .line 126
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPreviousAnimatedValue:F

    .line 128
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mItemOrientation:I

    .line 130
    iput-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    .line 131
    iput-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    .line 133
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 134
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I

    .line 137
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOrientationUpdatePended:Z

    .line 139
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mBaseOffset:F

    .line 140
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 142
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    .line 144
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I

    .line 146
    iput-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    .line 166
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->alignAnimation:Ljava/lang/Runnable;

    .line 213
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->scrollToCenterAnimation:Ljava/lang/Runnable;

    .line 268
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollThreshold:F

    .line 269
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocity:F

    .line 270
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mVelocityLimit:F

    .line 271
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F

    .line 272
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v2, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    .line 274
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAudioManager:Landroid/media/AudioManager;

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001e

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundId:I

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->init(I)V

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mVelocityLimit:F

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->FLING_VELOCITY_DIVIDE_FACTOR:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStreamVolume:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->onCenterItemChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    return p1
.end method

.method private init(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    .line 281
    packed-switch p1, :pswitch_data_0

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LAYOUT_POSITIONS:I

    div-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LAYOUT_POSITIONS:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mBaseOffset:F

    .line 337
    return-void

    .line 284
    :pswitch_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_LANDSCAPE_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_LANDSCAPE_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_LANDSCAPE_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_LANDSCAPE_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3ee147ae    # 0.44f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 287
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f028f5c    # 0.51f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 288
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666    # 0.65f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 289
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 290
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x4

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_POS_Z:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 291
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 292
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x6

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666    # 0.65f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 293
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x7

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f028f5c    # 0.51f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 294
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/16 v7, 0x8

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_LANDSCAPE_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_LANDSCAPE_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_LANDSCAPE_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_LANDSCAPE_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3ee147ae    # 0.44f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    goto/16 :goto_0

    .line 297
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f133332    # 0.5749999f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 299
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666    # 0.65f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 300
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 301
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_POS_Z:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 302
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x4

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 303
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666    # 0.65f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 304
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x6

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f133332    # 0.5749999f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    goto/16 :goto_0

    .line 310
    :pswitch_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 311
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_PORTRAIT_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_PORTRAIT_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_PORTRAIT_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_PORTRAIT_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3ee147ae    # 0.44f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 313
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM0_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f028f5c    # 0.51f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 314
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666    # 0.65f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 315
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 316
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x4

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_POS_Z:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 317
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 318
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x6

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666    # 0.65f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 319
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x7

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f028f5c    # 0.51f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 320
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/16 v7, 0x8

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_PORTRAIT_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_PORTRAIT_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_PORTRAIT_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_PORTRAIT_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM6_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3ee147ae    # 0.44f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    goto/16 :goto_0

    .line 323
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f133332    # 0.5749999f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 325
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666    # 0.65f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 326
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 327
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_POS_Z:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 328
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x4

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 329
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666    # 0.65f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 330
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x6

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f133332    # 0.5749999f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    goto/16 :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized onCenterItemChanged()V
    .locals 2

    .prologue
    .line 867
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    if-eq v0, v1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;->onCenterItemChanged(I)V

    .line 869
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I

    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    :cond_0
    monitor-exit p0

    return-void

    .line 867
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scrollItems(F)V
    .locals 14
    .param p1, "offset"    # F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 601
    cmpl-float v9, p1, v12

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 697
    :cond_0
    return-void

    .line 604
    :cond_1
    const/4 v4, 0x0

    .line 605
    .local v4, "newLayout":Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mBaseOffset:F

    div-float v9, p1, v9

    float-to-int v5, v9

    .line 606
    .local v5, "offsetQuotient":I
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mBaseOffset:F

    rem-float v9, p1, v9

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mBaseOffset:F

    div-float v7, v9, v10

    .line 607
    .local v7, "scrollRatio":F
    const/4 v6, 0x0

    .line 608
    .local v6, "roundedStartIndex":I
    const/4 v2, 0x0

    .line 609
    .local v2, "isRounded":Z
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    add-float/2addr v9, v7

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 611
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    cmpl-float v9, v9, v13

    if-ltz v9, :cond_4

    .line 612
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    sub-float/2addr v9, v13

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 613
    add-int/lit8 v5, v5, 0x1

    .line 618
    :cond_2
    :goto_0
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    sub-int/2addr v9, v5

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 619
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v10}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v10

    rem-int/2addr v9, v10

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 620
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_5

    .line 621
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 622
    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v3

    .line 623
    .local v3, "newCenterIndex":I
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    if-eq v9, v3, :cond_3

    .line 624
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->playSwipeSound()V

    .line 626
    :cond_3
    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 636
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v9}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 637
    add-int v9, v6, v0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v1

    .line 638
    .local v1, "index":I
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mViewIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v8

    .line 639
    .local v8, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v8, :cond_7

    .line 636
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 614
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v3    # "newCenterIndex":I
    .end local v8    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_4
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    cmpg-float v9, v9, v12

    if-gez v9, :cond_2

    .line 615
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    add-float/2addr v9, v13

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 616
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 628
    :cond_5
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v10}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v10

    rem-int v6, v9, v10

    .line 629
    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v3

    .line 630
    .restart local v3    # "newCenterIndex":I
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    if-eq v9, v3, :cond_6

    .line 631
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->playSwipeSound()V

    .line 633
    :cond_6
    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 634
    const/4 v2, 0x1

    goto :goto_1

    .line 642
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v8    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_7
    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    if-ge v0, v9, :cond_e

    .line 643
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mItemOrientation:I

    packed-switch v9, :pswitch_data_0

    .line 669
    :goto_4
    if-eqz v2, :cond_c

    .line 670
    add-int/lit8 v9, v0, 0x1

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getLayoutFromYOffset(IF)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    move-result-object v4

    .line 674
    :goto_5
    iget v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget v10, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 675
    iget v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    invoke-virtual {v8, v9, v11}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayoutAbsolute(FZ)V

    .line 676
    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 677
    iget v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    iget v10, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 679
    iget v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    cmpl-float v9, v9, v12

    if-lez v9, :cond_d

    .line 680
    invoke-virtual {v8, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 694
    :cond_8
    :goto_6
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto :goto_3

    .line 645
    :pswitch_0
    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I

    if-ge v0, v9, :cond_9

    move-object v9, v8

    .line 646
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_4

    :cond_9
    move-object v9, v8

    .line 648
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_4

    .line 652
    :pswitch_1
    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I

    if-gt v0, v9, :cond_a

    move-object v9, v8

    .line 653
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_4

    :cond_a
    move-object v9, v8

    .line 655
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_4

    .line 659
    :pswitch_2
    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I

    if-ne v0, v9, :cond_b

    move-object v9, v8

    .line 660
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_4

    :cond_b
    move-object v9, v8

    .line 662
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_4

    :pswitch_3
    move-object v9, v8

    .line 666
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_4

    .line 672
    :cond_c
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    invoke-virtual {p0, v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getLayoutFromYOffset(IF)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    move-result-object v4

    goto :goto_5

    .line 681
    :cond_d
    iget v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    cmpg-float v9, v9, v12

    if-gtz v9, :cond_8

    .line 682
    invoke-virtual {v8, v12}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_6

    .line 686
    :cond_e
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v9, v9, v11

    iget v9, v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v10, v10, v11

    iget v10, v10, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 687
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v9, v9, v11

    iget v9, v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    invoke-virtual {v8, v9, v11}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayoutAbsolute(FZ)V

    .line 688
    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 689
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v9, v9, v11

    iget v9, v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v10, v10, v11

    iget v10, v10, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 691
    invoke-virtual {v8, v12}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_6

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public centerAlign()V
    .locals 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->alignAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    .line 880
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 881
    return-void
.end method

.method public getCenterItem()Lcom/sec/android/glview/TwGLView;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public getCurrentSelectedIndex()I
    .locals 4

    .prologue
    .line 388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 389
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 390
    .local v1, "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :goto_1
    return v0

    .line 388
    .restart local v0    # "i":I
    .restart local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCurrentSelectedItem()Lcom/sec/android/glview/TwGLView;
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getCurrentSelectedIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    return-object v0
.end method

.method public getItemIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 482
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    rem-int v0, p1, v1

    .line 483
    .local v0, "tempIndex":I
    if-gez v0, :cond_1

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final getLayoutFromYOffset(IF)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;
    .locals 12
    .param p1, "index"    # I
    .param p2, "offsetRatio"    # F

    .prologue
    .line 738
    const/4 v8, 0x0

    .line 739
    .local v8, "xDiff":F
    const/4 v9, 0x0

    .line 740
    .local v9, "yDiff":F
    const/4 v10, 0x0

    .line 741
    .local v10, "zDiff":F
    const/4 v7, 0x0

    .line 742
    .local v7, "scaleDiff":F
    const/4 v6, 0x0

    .line 744
    .local v6, "alphaDiff":F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    sub-float v8, v0, v1

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    sub-float v9, v0, v1

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    sub-float v10, v0, v1

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    sub-float v7, v0, v1

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    sub-float v6, v0, v1

    .line 750
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    mul-float v2, v8, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    mul-float v3, v9, p2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    mul-float v4, v10, p2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    mul-float v5, v7, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    mul-float v11, v6, p2

    add-float/2addr v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    return-object v0
.end method

.method public getLayoutIndex(I)I
    .locals 4
    .param p1, "itemIndex"    # I

    .prologue
    .line 492
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 493
    .local v1, "startIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    if-ge v0, v2, :cond_1

    .line 494
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 498
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 493
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v2, 0x0

    .line 756
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPreviousAnimatedValue:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 762
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPreviousAnimatedValue:F

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 764
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 765
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 766
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    .line 775
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->scrollItems(F)V

    goto :goto_0

    .line 767
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 768
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    goto :goto_1

    .line 770
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    goto :goto_1
.end method

.method protected declared-synchronized onDraw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 704
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOrientationUpdatePended:Z

    if-eqz v0, :cond_0

    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOrientationUpdatePended:Z

    .line 708
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 709
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->scrollItems(F)V

    .line 710
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 711
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocity:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 712
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->alignAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 719
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 734
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    monitor-exit p0

    return-void

    .line 722
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocity:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 723
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 726
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->alignAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 730
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "focusStatus"    # I

    .prologue
    const/4 v3, 0x0

    .line 503
    monitor-enter p0

    if-nez p1, :cond_1

    .line 519
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 505
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    .line 506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 509
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 510
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    if-eq v1, v2, :cond_0

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;->onCenterItemChanged(I)V

    .line 513
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 503
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 506
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 524
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 525
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 527
    .local v0, "curView":Lcom/sec/android/glview/TwGLView;
    if-nez v0, :cond_1

    .line 536
    .end local v0    # "curView":Lcom/sec/android/glview/TwGLView;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 530
    .restart local v0    # "curView":Lcom/sec/android/glview/TwGLView;
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getLayoutIndex(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I

    goto :goto_1

    .line 525
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 541
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 542
    .local v0, "e":Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mapPointReverse([FFF)V

    .line 543
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mTransformedScreenCoordinate:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mTransformedScreenCoordinate:[F

    aget v4, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 545
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v3, :cond_0

    .line 546
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mGestureDetector:Landroid/view/GestureDetector;

    .line 549
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    :goto_0
    return v1

    .line 552
    :catch_0
    move-exception v3

    .line 556
    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 557
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollY:F

    .line 559
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 560
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v1, v2

    .line 561
    goto :goto_0

    .line 562
    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 563
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    if-nez v3, :cond_5

    .line 564
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollY:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 565
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    .line 566
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    if-eqz v1, :cond_3

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;->onScrollStart()V

    .line 569
    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 575
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v1, v2

    .line 576
    goto :goto_0

    .line 572
    :cond_5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollY:F

    sub-float/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->scrollItems(F)V

    .line 573
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollY:F

    goto :goto_1

    .line 577
    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    if-nez v3, :cond_9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_9

    .line 578
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I

    if-eq v1, v3, :cond_8

    .line 579
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 580
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_8

    .line 581
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->scrollToCenterAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 596
    :cond_8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v1, v2

    .line 597
    goto/16 :goto_0

    .line 584
    :cond_9
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_8

    .line 586
    :cond_b
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_d

    .line 587
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 588
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_d

    .line 589
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->alignAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    :cond_d
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    .line 593
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v1, v2

    .line 594
    goto/16 :goto_0
.end method

.method public playSwipeSound()V
    .locals 3

    .prologue
    .line 840
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 841
    const-string v1, "TwGLWheelList"

    const-string v2, "playSound - mSoundPool is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStreamVolume:I

    .line 848
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPlaySwipeSoundThread:Ljava/lang/Thread;

    .line 854
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPlaySwipeSoundThread:Ljava/lang/Thread;

    const-string v2, "mPlaySwipeSoundThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 855
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPlaySwipeSoundThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshList(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 378
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mItemOrientation:I

    .line 379
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->init(I)V

    .line 380
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOrientationUpdatePended:Z

    goto :goto_0
.end method

.method public refreshList(Z)V
    .locals 10
    .param p1, "resetPosition"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 406
    const/4 v3, 0x0

    .line 407
    .local v3, "roundedStartIndex":I
    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 408
    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 410
    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getCurrentSelectedIndex()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 412
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 414
    :cond_0
    const/4 v2, 0x0

    .line 416
    .local v2, "isRounded":Z
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 417
    const/4 v2, 0x1

    .line 418
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    add-int/lit8 v3, v5, 0x1

    .line 419
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 421
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v5}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 423
    add-int v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v1

    .line 424
    .local v1, "index":I
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    .line 425
    .local v4, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v4, :cond_2

    .line 426
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mItemOrientation:I

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    move-object v5, v4

    .line 427
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    .line 428
    iput-object p0, v4, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 430
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    if-ge v0, v5, :cond_7

    .line 431
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mItemOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 457
    :goto_1
    if-eqz v2, :cond_6

    .line 458
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 459
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayoutAbsolute(FZ)V

    .line 460
    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 461
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 468
    :goto_2
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 474
    :goto_3
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 475
    invoke-virtual {v4, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 421
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :pswitch_0
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I

    if-ge v0, v5, :cond_3

    move-object v5, v4

    .line 434
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 436
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_1

    .line 440
    :pswitch_1
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I

    if-gt v0, v5, :cond_4

    move-object v5, v4

    .line 441
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_1

    :cond_4
    move-object v5, v4

    .line 443
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_1

    .line 447
    :pswitch_2
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->CENTER_LAYOUT_INDEX:I

    if-ne v0, v5, :cond_5

    move-object v5, v4

    .line 448
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_1

    :cond_5
    move-object v5, v4

    .line 450
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_1

    :pswitch_3
    move-object v5, v4

    .line 454
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto/16 :goto_1

    .line 463
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 464
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayoutAbsolute(FZ)V

    .line 465
    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 466
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    goto :goto_2

    .line 470
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v6, v6, v8

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 471
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(FZ)V

    .line 472
    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto/16 :goto_3

    .line 478
    .end local v1    # "index":I
    .end local v4    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->onCenterItemChanged()V

    .line 479
    return-void

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/sec/android/glview/TwGLList$Adapter;

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 357
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 359
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 360
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v3}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    .line 367
    .local v2, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v2, :cond_3

    .line 375
    .end local v2    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2
    return-void

    .line 370
    .restart local v2    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mViewIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 372
    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 373
    new-instance v3, Landroid/graphics/Rect;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM_FOCUS_PADDING:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM_FOCUS_PADDING:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM_FOCUS_PADDING:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM_FOCUS_PADDING:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setOnCenterItemChangeListener(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    .line 341
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    .line 345
    return-void
.end method
