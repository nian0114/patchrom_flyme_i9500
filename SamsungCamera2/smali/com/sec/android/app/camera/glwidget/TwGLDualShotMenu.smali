.class public Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLDualShotMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;
    }
.end annotation


# static fields
.field private static final DUAL_ASYNC_FRONT_ICON_POS_X:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_HEIGHT:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_WIDTH:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_X:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_Y:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_HEIGHT:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_WIDTH:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X_180:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X_270:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X_90:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y_180:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y_270:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y_90:I

.field private static final DUAL_REAR_PROGRESS_BAR_POS_HEIGHT:I

.field private static final DUAL_REAR_PROGRESS_BAR_POS_WIDTH:I

.field private static final DUAL_REAR_PROGRESS_BAR_POS_X:I

.field private static final DUAL_REAR_PROGRESS_BAR_POS_Y:I

.field protected static final DUAL_SHOT_PROGRESS_TIMER_MSG:I = 0x2

.field protected static final DUAL_SHOT_PROGRESS_UPDATE_TIME:I = 0xc8

.field private static final DUAL_TRACKING_BUTTON_POS_X:I

.field private static final DUAL_TRACKING_BUTTON_POS_Y:I

.field private static final HANDLER_AREA_PADDING:I

.field protected static final HIDE_BOUNDRY:I = 0x1

.field public static final HIDE_TIMEOUT:I = 0xbb8

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field protected static final SHOW_BOUNDRY:I = 0x3

.field public static final SHOW_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "TwGLDualShotMenu"


# instance fields
.field private mAsyncFront:Lcom/sec/android/glview/TwGLImage;

.field private mAsyncRear:Lcom/sec/android/glview/TwGLImage;

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field protected mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

.field private mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

.field private mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field protected mDualMsgHandler:Landroid/os/Handler;

.field private mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mDualshot_splitview_height:I

.field private mDualshot_splitview_start_posX:I

.field private mDualshot_splitview_start_posY:I

.field private mDualshot_splitview_width:I

.field private mEffectSizeRatio:F

.field private mHandler_area_bottom_boundary:I

.field private mHandler_area_left_boundary:I

.field private mHandler_area_right_boundary:I

.field private mHandler_area_top_boundary:I

.field private mHeightOffsetForhandle:I

.field private mInvisible:Z

.field private mNeedToOrientation:Z

.field private mOffsetForhandle:I

.field private mOrientation:I

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPreOrientation:I

.field private mPreviousEffect:I

.field private mRectinfo:[Landroid/graphics/RectF;

.field private mShowEditableShortMenu:Z

.field private mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

.field private mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

.field private mTrackingStart:Z

.field private mWidthOffsetForFullPreview:I

.field private mWidthOffsetForhandle:I

.field private mX:[F

.field private mY:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    .line 50
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_HEIGHT:I

    .line 53
    const v0, 0x7f0a01f6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    .line 108
    const v0, 0x7f0a02ec

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X:I

    .line 109
    const v0, 0x7f0a02ed

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y:I

    .line 110
    const v0, 0x7f0a02ee

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_WIDTH:I

    .line 111
    const v0, 0x7f0a02ef

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_HEIGHT:I

    .line 112
    const v0, 0x7f0a02f0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_ASYNC_FRONT_ICON_POS_X:I

    .line 113
    const v0, 0x7f0a02f1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_REAR_PROGRESS_BAR_POS_X:I

    .line 114
    const v0, 0x7f0a02f2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_REAR_PROGRESS_BAR_POS_Y:I

    .line 115
    const v0, 0x7f0a02f3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_REAR_PROGRESS_BAR_POS_WIDTH:I

    .line 116
    const v0, 0x7f0a02f4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_REAR_PROGRESS_BAR_POS_HEIGHT:I

    .line 117
    const v0, 0x7f0a02f5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_FRONT_PROGRESS_BAR_POS_X:I

    .line 118
    const v0, 0x7f0a02f6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_FRONT_PROGRESS_BAR_POS_Y:I

    .line 119
    const v0, 0x7f0a02f7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_FRONT_PROGRESS_BAR_POS_WIDTH:I

    .line 120
    const v0, 0x7f0a02f8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_FRONT_PROGRESS_BAR_POS_HEIGHT:I

    .line 121
    const v0, 0x7f0a02f9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_90:I

    .line 122
    const v0, 0x7f0a02fa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_90:I

    .line 123
    const v0, 0x7f0a02fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_180:I

    .line 124
    const v0, 0x7f0a02fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_180:I

    .line 125
    const v0, 0x7f0a02fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_270:I

    .line 126
    const v0, 0x7f0a02fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_270:I

    .line 127
    const v0, 0x7f0a0303

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_TRACKING_BUTTON_POS_X:I

    .line 128
    const v0, 0x7f0a0304

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_TRACKING_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 197
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 60
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    .line 61
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    .line 62
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_top_boundary:I

    .line 63
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    .line 65
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    .line 68
    const v0, 0x7f0a0301

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForFullPreview:I

    .line 69
    const v0, 0x7f0a02e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    .line 70
    const v0, 0x7f0a02e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_height:I

    .line 71
    const v0, 0x7f0a02e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_start_posX:I

    .line 72
    const v0, 0x7f0a02e1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_start_posY:I

    .line 76
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreOrientation:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mNeedToOrientation:Z

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    .line 102
    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    .line 137
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mShowEditableShortMenu:Z

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    .line 148
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    .line 200
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setCaptureEnabled(Z)V

    .line 203
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->readEffectRectinfo()V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/high16 v1, -0x3e600000    # -20.0f

    const/high16 v2, -0x3e600000    # -20.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBound()V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDragVibration(Z)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 212
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 213
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020001

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mAsyncRear:Lcom/sec/android/glview/TwGLImage;

    .line 214
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_ASYNC_FRONT_ICON_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x7f020000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mAsyncFront:Lcom/sec/android/glview/TwGLImage;

    .line 216
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_REAR_PROGRESS_BAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_REAR_PROGRESS_BAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_REAR_PROGRESS_BAR_POS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_REAR_PROGRESS_BAR_POS_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202f8

    const v7, 0x7f0202f7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 217
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_FRONT_PROGRESS_BAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_FRONT_PROGRESS_BAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_FRONT_PROGRESS_BAR_POS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_FRONT_PROGRESS_BAR_POS_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202f8

    const v7, 0x7f0202f7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_90:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_90:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_180:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_180:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_270:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_270:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mAsyncRear:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mAsyncFront:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 230
    const v0, 0x7f0a02ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    .line 231
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setonHandlerDragChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;)V

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    .line 251
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_TRACKING_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_TRACKING_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020318

    const v5, 0x7f02031a

    const v6, 0x7f020319

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c00ab

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 260
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_TRACKING_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DUAL_TRACKING_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020315

    const v5, 0x7f020317

    const v6, 0x7f020316

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 274
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setOrientationChanged(I)V

    .line 275
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setOrientationListener()V

    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setTouchHandled(Z)V

    .line 277
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/glview/TwGLProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/glview/TwGLProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/glwidget/TwGLHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private canRestoreDualEffectRectPosition()Z
    .locals 1

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    const/4 v0, 0x1

    .line 1938
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRectIndex(I)I
    .locals 1
    .param p1, "menu"    # I

    .prologue
    const/4 v0, 0x0

    .line 1956
    packed-switch p1, :pswitch_data_0

    .line 1982
    :goto_0
    :pswitch_0
    return v0

    .line 1960
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1962
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1964
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1966
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1968
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1970
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 1972
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1974
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 1976
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 1978
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 1980
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 1956
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private readEffectRectinfo()V
    .locals 13

    .prologue
    const v12, 0x7f0a02e8

    const v11, 0x7f0a02cf

    const v10, 0x7f0a02ce

    const v9, 0x7f0a02cd

    const v8, 0x7f0a02cc

    .line 1861
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1867
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a02d0

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a02d1

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1873
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a02d2

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a02d3

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1879
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a02d4

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a02d5

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1885
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a02d6

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a02d7

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1891
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a02d8

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a02d9

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1897
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a02da

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a02db

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1903
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a02dc

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a02dd

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1909
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a02de

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a02df

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_start_posX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_start_posY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_start_posX:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_start_posY:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_height:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1921
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v12}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    const v4, 0x7f0a02e9

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v12}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a02ea

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const v6, 0x7f0a02e9

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a02eb

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1927
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1931
    return-void
.end method

.method private restoreDualEffectRectPosition()V
    .locals 9

    .prologue
    .line 1942
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    .line 1953
    :cond_0
    :goto_0
    return-void

    .line 1944
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    .line 1946
    .local v0, "nEffectMode":I
    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 1949
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->getRectIndex(I)I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectPosX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectPosY()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectPosX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectPosY()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public applyInvisible()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 658
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 659
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 660
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 661
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundInvisible()V

    .line 663
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mShowEditableShortMenu:Z

    if-nez v1, :cond_0

    .line 664
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    .line 665
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->showTrackingButton()V

    .line 666
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    .line 667
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreOrientation:I

    .line 668
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v0

    .line 669
    .local v0, "Rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 670
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 671
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 672
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 673
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x4

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 674
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x5

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 675
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x6

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x7

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 678
    .end local v0    # "Rect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method public applyInvisibleForDualOff()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 681
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundInvisible()V

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    .line 686
    return-void
.end method

.method public applyVisible()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getIsCalledSwitchToCameraSync()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 705
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 712
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v6

    .line 714
    .local v6, "Rect":Landroid/graphics/RectF;
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_6

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v6, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 719
    .end local v6    # "Rect":Landroid/graphics/RectF;
    :cond_3
    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 722
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundVisible()V

    .line 723
    return-void

    .line 703
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->showBoundryRect()V

    goto :goto_0

    .line 717
    .restart local v6    # "Rect":Landroid/graphics/RectF;
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v6, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto :goto_1
.end method

.method public calulateCoordinateForNormalPreviewRatio()V
    .locals 3

    .prologue
    const/16 v2, 0x30

    const/4 v1, 0x0

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 803
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->IsNormalCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 761
    const v0, 0x7f0a02ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    .line 762
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-nez v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    .line 765
    :cond_1
    const v0, 0x7f0a0302

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    .line 766
    const v0, 0x7f0a02e6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    .line 767
    const v0, 0x7f0a02e7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_height:I

    .line 768
    const v0, 0x7f0a02e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_start_posX:I

    .line 769
    const v0, 0x7f0a02e5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_start_posY:I

    .line 770
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 771
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    .line 775
    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    .line 798
    :goto_2
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_top_boundary:I

    .line 799
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_top_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setHandlerAreaTopBoundary(I)V

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setHandlerAreaBottomBoundary(I)V

    .line 802
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->readEffectRectinfo()V

    goto/16 :goto_0

    .line 773
    :cond_2
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    goto :goto_1

    .line 777
    :cond_3
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    .line 782
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    .line 783
    const v0, 0x7f0a0300

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    .line 786
    const v0, 0x7f0a02e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    .line 787
    const v0, 0x7f0a02e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_height:I

    .line 788
    const v0, 0x7f0a02e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_start_posX:I

    .line 789
    const v0, 0x7f0a02e1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_start_posY:I

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 791
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    .line 792
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    goto :goto_2

    .line 794
    :cond_4
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    .line 795
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    goto :goto_2
.end method

.method public checkTrackingBoundary(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1080
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 1082
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 1083
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v1

    .line 1084
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v1

    .line 1085
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v4

    .line 1086
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v4

    .line 1087
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v5

    .line 1088
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v5

    .line 1089
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v6

    .line 1090
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v6

    .line 1092
    const-string v0, "TwGLDualShotMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mX[0]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mY[0]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mX[1]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mY[1]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mX[2]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mY[2]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mX[3]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mY[3]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreOrientation:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 1143
    :goto_0
    return v0

    .line 1096
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-nez v0, :cond_1

    .line 1097
    invoke-virtual {p0, p1, p2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1098
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v4, :cond_2

    .line 1099
    invoke-virtual {p0, p1, p2, v6}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1100
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v5, :cond_3

    .line 1101
    invoke-virtual {p0, p1, p2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1102
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v6, :cond_0

    .line 1103
    invoke-virtual {p0, p1, p2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1107
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v4, :cond_4

    .line 1108
    invoke-virtual {p0, p1, p2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1109
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v5, :cond_5

    .line 1110
    invoke-virtual {p0, p1, p2, v6}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1111
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v6, :cond_6

    .line 1112
    invoke-virtual {p0, p1, p2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1113
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-nez v0, :cond_0

    .line 1114
    invoke-virtual {p0, p1, p2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1118
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v5, :cond_7

    .line 1119
    invoke-virtual {p0, p1, p2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1120
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v6, :cond_8

    .line 1121
    invoke-virtual {p0, p1, p2, v6}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1122
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-nez v0, :cond_9

    .line 1123
    invoke-virtual {p0, p1, p2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1124
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v4, :cond_0

    .line 1125
    invoke-virtual {p0, p1, p2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1129
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v6, :cond_a

    .line 1130
    invoke-virtual {p0, p1, p2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1131
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-nez v0, :cond_b

    .line 1132
    invoke-virtual {p0, p1, p2, v6}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto :goto_0

    .line 1133
    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v4, :cond_c

    .line 1134
    invoke-virtual {p0, p1, p2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto/16 :goto_0

    .line 1135
    :cond_c
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v5, :cond_0

    .line 1136
    invoke-virtual {p0, p1, p2, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideGlueHandlerArea(FFI)Z

    move-result v0

    goto/16 :goto_0

    .line 1094
    nop

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

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aput-object v2, v1, v0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    .line 356
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 358
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;)V

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->clear()V

    .line 363
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_4

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 367
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 369
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_5

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 371
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    .line 373
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_6

    .line 374
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 375
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    .line 377
    :cond_6
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    .line 378
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 379
    return-void
.end method

.method public clearGLView()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 346
    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 347
    return-void
.end method

.method public decideEffectSize(I)F
    .locals 4
    .param p1, "effect"    # I

    .prologue
    const v3, 0x7f0a02ce

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1575
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v0

    .line 1576
    .local v0, "rect":Landroid/graphics/RectF;
    packed-switch p1, :pswitch_data_0

    .line 1615
    :pswitch_0
    const/16 v1, 0x1f40

    if-lt p1, v1, :cond_2

    .line 1616
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1617
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1630
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    return v1

    .line 1578
    :pswitch_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1581
    :pswitch_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a02d0

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1584
    :pswitch_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a02d2

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1587
    :pswitch_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a02d4

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1590
    :pswitch_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a02d6

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1593
    :pswitch_6
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a02d8

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1596
    :pswitch_7
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a02da

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1599
    :pswitch_8
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a02dc

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1602
    :pswitch_9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a02de

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1605
    :pswitch_a
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1608
    :pswitch_b
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1609
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1611
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    const v2, 0x7f0a02cf

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1619
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_1
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1625
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 1623
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1576
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public decideGlueHandlerArea(FFI)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "mGlueOrientation"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1147
    packed-switch p3, :pswitch_data_0

    move v0, v1

    .line 1175
    :cond_0
    :goto_0
    return v0

    .line 1149
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v1

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    cmpg-float v2, v2, p1

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v0

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v4, v4, v0

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v1

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v5

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_0

    :cond_1
    move v0, v1

    .line 1152
    goto/16 :goto_0

    .line 1155
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v1

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v0

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v4, v4, v0

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v1

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v5

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v5

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    .line 1158
    goto/16 :goto_0

    .line 1161
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v1

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    cmpl-float v2, v2, p2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v0

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v0

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v1

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v5

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v4, v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1164
    goto/16 :goto_0

    .line 1167
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v1

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v0

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v0

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v1

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v2, v2, v5

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v4, v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v4, v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v5

    add-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    :cond_4
    move v0, v1

    .line 1170
    goto/16 :goto_0

    .line 1147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public decideGlueHanlderRect(I)V
    .locals 22
    .param p1, "mGlueOrientation"    # I

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v15}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v14

    .line 388
    .local v14, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    const/16 v18, 0x1

    aget v15, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-float v15, v15, v18

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 389
    .local v2, "a01":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    const/16 v18, 0x2

    aget v15, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-float v15, v15, v18

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 390
    .local v4, "a02":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    const/16 v16, 0x3

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    const/16 v18, 0x3

    aget v15, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-float v15, v15, v18

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 392
    .local v6, "a03":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    const/16 v16, 0x3

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    sub-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    const/16 v18, 0x3

    aget v15, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-float v15, v15, v18

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 393
    .local v10, "a13":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    sub-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    const/16 v18, 0x2

    aget v15, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-float v15, v15, v18

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 394
    .local v8, "a12":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    const/16 v16, 0x3

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    sub-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    const/16 v18, 0x3

    aget v15, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    sub-float v15, v15, v18

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 395
    .local v12, "a23":D
    packed-switch p1, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 397
    :pswitch_0
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v2

    if-eqz v15, :cond_1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v12

    if-nez v15, :cond_2

    .line 398
    :cond_1
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v16

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    .line 399
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    invoke-virtual/range {v15 .. v19}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    goto :goto_0

    .line 401
    :cond_2
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v8

    if-eqz v15, :cond_3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v6

    if-nez v15, :cond_0

    .line 402
    :cond_3
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_0

    .line 403
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    invoke-virtual/range {v15 .. v19}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    goto/16 :goto_0

    .line 408
    :pswitch_1
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v2

    if-eqz v15, :cond_4

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v12

    if-nez v15, :cond_5

    .line 409
    :cond_4
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    invoke-virtual/range {v15 .. v19}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    goto/16 :goto_0

    .line 412
    :cond_5
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v8

    if-eqz v15, :cond_6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v6

    if-nez v15, :cond_0

    .line 413
    :cond_6
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v16

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    invoke-virtual/range {v15 .. v19}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    goto/16 :goto_0

    .line 419
    :pswitch_2
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v2

    if-eqz v15, :cond_7

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v12

    if-nez v15, :cond_8

    .line 420
    :cond_7
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v16

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    invoke-virtual/range {v15 .. v19}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    goto/16 :goto_0

    .line 423
    :cond_8
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v8

    if-eqz v15, :cond_9

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v15, v16, v6

    if-nez v15, :cond_0

    .line 424
    :cond_9
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_0

    .line 425
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v18

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v19

    invoke-virtual/range {v15 .. v19}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    goto/16 :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getBackGroundImage()Lcom/sec/android/glview/TwGLImage;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBackGroundImage()Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    return-object v0
.end method

.method public getBoundryShowed()Z
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v0

    return v0
.end method

.method public getDualPreviewOffsetForFullPreview()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    return v0
.end method

.method public getEditableShortMenuShow()Z
    .locals 1

    .prologue
    .line 1051
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mShowEditableShortMenu:Z

    return v0
.end method

.method public hideBoundryRect()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 944
    return-void
.end method

.method public hideTrackingButton()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    .line 980
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundInvisible()V

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 987
    :cond_0
    return-void
.end method

.method public isInvisibleMode()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    return v0
.end method

.method public isTrackingStart()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    return v0
.end method

.method public needToOrientation()V
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mNeedToOrientation:Z

    .line 748
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x33

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1056
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return v0

    .line 1058
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->checkTrackingBoundary(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocusState()V

    :cond_2
    move v0, v1

    .line 1062
    goto :goto_0

    .line 1063
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v2

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    move v0, v1

    .line 1065
    goto :goto_0

    .line 1066
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v2

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 1067
    goto/16 :goto_0

    .line 1068
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1070
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1071
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocusState()V

    :cond_7
    move v0, v1

    .line 1074
    goto/16 :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 384
    :cond_0
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x1

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->applyInvisible()V

    .line 438
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreOrientation:I

    .line 444
    :goto_0
    return v0

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->showGlueHanlderRect()V

    goto :goto_0

    .line 444
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnd(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;->onHandlerDragEnd(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    .line 586
    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;->onHandlerDragStart(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    .line 581
    :cond_0
    return-void
.end method

.method public onDualModeAsyncCaptureCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 627
    return-void
.end method

.method public onDualModeAsyncCaptureInit()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualShotMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    .line 649
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDualModeAsyncFirstCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 336
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 337
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1180
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return v0

    .line 1183
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1185
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v2

    const/16 v3, 0x33

    if-eq v2, v3, :cond_2

    .line 1186
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    move v0, v1

    .line 1188
    goto :goto_0

    .line 1191
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    move v0, v1

    .line 1193
    goto :goto_0

    .line 1197
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    move v0, v1

    .line 1199
    goto :goto_0

    .line 1183
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_2

    .line 914
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->showBoundryRect()V

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getSideLock()I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v0, v1, :cond_3

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 929
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 933
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleSync(Z)V

    goto/16 :goto_0
.end method

.method public onMove(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 9
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBound()V

    .line 816
    cmpl-float v0, p4, p5

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v8, :cond_5

    :cond_2
    cmpg-float v0, p4, p5

    if-gez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eqz v0, :cond_5

    :cond_3
    cmpg-float v0, p4, p5

    if-gez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v8, :cond_5

    :cond_4
    cmpl-float v0, p4, p5

    if-lez v0, :cond_d

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    if-ne v0, v4, :cond_d

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-nez v0, :cond_d

    .line 820
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v6

    .line 821
    .local v6, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v6, v8, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v7

    .line 822
    .local v7, "rotateRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 823
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_c

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 838
    .end local v6    # "rect":Landroid/graphics/RectF;
    .end local v7    # "rotateRect":Landroid/graphics/RectF;
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_a

    .line 839
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->showBoundryRect()V

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getSideLock()I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v0, v1, :cond_8

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    .line 843
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 847
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 850
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 826
    .restart local v6    # "rect":Landroid/graphics/RectF;
    .restart local v7    # "rotateRect":Landroid/graphics/RectF;
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 828
    .end local v6    # "rect":Landroid/graphics/RectF;
    .end local v7    # "rotateRect":Landroid/graphics/RectF;
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_6

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 830
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_e

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v2, v2

    sub-float v2, p3, v2

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFF)V

    goto/16 :goto_1

    .line 833
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v2, v2

    sub-float v2, p3, v2

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFF)V

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->restoreDualTrackingEffectRectPosition()V

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    .line 573
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    .line 575
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 576
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 560
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    .line 561
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->showTrackingButton()V

    .line 563
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 564
    return-void
.end method

.method public onShow()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualShotMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    .line 308
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_6

    .line 309
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mShowEditableShortMenu:Z

    if-nez v0, :cond_2

    .line 310
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    if-eqz v0, :cond_5

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->applyInvisible()V

    .line 316
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    .line 323
    :goto_3
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    goto :goto_0

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_1

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    goto :goto_1

    .line 313
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->applyVisible()V

    goto :goto_2

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_3
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setTouchHandled(Z)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 655
    :cond_0
    return-void
.end method

.method public restoreDualTrackingEffectRectPosition()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1987
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    if-nez v3, :cond_0

    .line 1988
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v3

    const/16 v4, 0x33

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    if-eqz v3, :cond_0

    .line 1989
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1990
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    aput v3, v4, v7

    .line 1991
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    aput v3, v4, v7

    .line 1992
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v1

    .line 1993
    .local v1, "rect":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v3, v3, v7

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v4, v4, v7

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    aget v5, v5, v7

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    aget v6, v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1994
    .end local v1    # "rect":Landroid/graphics/RectF;
    .local v2, "rect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v3, v2, v8, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v0

    .line 1995
    .local v0, "newrect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1996
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectPosX(I)V

    .line 1997
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectPosY(I)V

    .line 1998
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectWidth(I)V

    .line 1999
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectHeight(I)V

    .line 2003
    .end local v0    # "newrect":Landroid/graphics/RectF;
    .end local v2    # "rect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method public roundOrientation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1016
    add-int/lit8 v0, p1, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 614
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 615
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 616
    return-void
.end method

.method public setEditableShortMenuShow(Z)V
    .locals 0
    .param p1, "showEditableShortMenu"    # Z

    .prologue
    .line 689
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mShowEditableShortMenu:Z

    .line 690
    return-void
.end method

.method public setEffect(I)V
    .locals 12
    .param p1, "effect"    # I

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundVisible()V

    .line 1636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 1637
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 1638
    const/16 v0, 0x33

    if-eq p1, v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->resetHandler()V

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setSideLock(I)V

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    .line 1642
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 1643
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->canRestoreDualEffectRectPosition()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    if-nez v0, :cond_2

    .line 1645
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->restoreDualEffectRectPosition()V

    .line 1647
    :cond_2
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    .line 1648
    packed-switch p1, :pswitch_data_0

    .line 1802
    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_18

    .line 1803
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_18

    .line 1804
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1805
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1806
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1807
    const-string v0, "TwGLDualShotMenu"

    const-string v1, "setDualEffectSync : fail to load external filters"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :cond_3
    :goto_0
    return-void

    .line 1650
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1651
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02ce

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f0a02cf

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1652
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02ce

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f0a02cf

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1653
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1654
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_9

    .line 1655
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 1837
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    .line 1838
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_5

    .line 1839
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 1840
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 1841
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 1843
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1844
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 1846
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3

    .line 1847
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v9

    .line 1848
    .local v9, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v10

    .line 1849
    .local v10, "rotateRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1850
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_19

    .line 1851
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 1657
    .end local v9    # "rect":Landroid/graphics/RectF;
    .end local v10    # "rotateRect":Landroid/graphics/RectF;
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1661
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1662
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02d0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f0a02d1

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1664
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02d0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f0a02d1

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1667
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_a

    .line 1668
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1670
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1674
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1675
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02d2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f0a02d3

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1677
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02d2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f0a02d3

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1679
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1680
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_b

    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1683
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1687
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02d4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f0a02d5

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02d4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f0a02d5

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1692
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1693
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_c

    .line 1694
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1696
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1700
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1701
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02d6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f0a02d7

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1703
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02d6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f0a02d7

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1705
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1706
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_d

    .line 1707
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1709
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1713
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02d8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f0a02d9

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1716
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02d8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f0a02d9

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1719
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_e

    .line 1720
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1722
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1726
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1727
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02da

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f0a02db

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1729
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02da

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f0a02db

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1731
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1732
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_f

    .line 1733
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1735
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1739
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1740
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02dc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f0a02dd

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1742
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02dc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f0a02dd

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1744
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1745
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_10

    .line 1746
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1748
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1752
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1753
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02de

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f0a02df

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1755
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02de

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f0a02df

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1757
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1758
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_11

    .line 1759
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1761
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1765
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 1766
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1767
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_height:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1769
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_height:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1771
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_12

    .line 1772
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_13

    .line 1773
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 1777
    :cond_12
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setSideLock(I)V

    .line 1778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    goto/16 :goto_1

    .line 1775
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto :goto_2

    .line 1781
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1782
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1786
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 1787
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_14

    .line 1788
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    .line 1790
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    .line 1791
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02ce

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f0a02cf

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1793
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f0a02ce

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f0a02cf

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1794
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 1795
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_15

    .line 1796
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1798
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1813
    :cond_16
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPosx(I)I

    move-result v7

    .line 1814
    .local v7, "posx":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPosy(I)I

    move-result v8

    .line 1815
    .local v8, "posy":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v11

    .line 1816
    .local v11, "width":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v6

    .line 1817
    .local v6, "height":I
    const-string v0, "TwGLDualShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min setEffect :: unknown effext setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "posy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    add-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    add-int/2addr v2, v8

    int-to-float v2, v2

    int-to-float v3, v11

    int-to-float v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1819
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    mul-int/lit8 v1, v11, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-int/lit8 v2, v6, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    mul-int/lit8 v1, v11, 0x3

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    mul-int/lit8 v2, v6, 0x3

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_17

    .line 1822
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    int-to-float v1, v7

    int-to-float v2, v8

    int-to-float v3, v11

    int-to-float v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 1824
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1825
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 1826
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    .end local v6    # "height":I
    .end local v7    # "posx":I
    .end local v8    # "posy":I
    .end local v11    # "width":I
    :cond_18
    :goto_3
    const-string v0, "TwGLDualShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect :: unknown effext setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1853
    .restart local v9    # "rect":Landroid/graphics/RectF;
    .restart local v10    # "rotateRect":Landroid/graphics/RectF;
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 1828
    .end local v9    # "rect":Landroid/graphics/RectF;
    .end local v10    # "rotateRect":Landroid/graphics/RectF;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1648
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public setEffectMenuSelect(I)V
    .locals 17
    .param p1, "effect"    # I

    .prologue
    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v14

    .line 1207
    .local v14, "rect":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 1208
    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 1209
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setEffect(I)V

    .line 1572
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v3, 0x1f40

    if-lt v2, v3, :cond_2

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_2

    .line 1214
    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FALSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1215
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setEffect(I)V

    goto :goto_0

    .line 1220
    :cond_2
    const/16 v2, 0x33

    move/from16 v0, p1

    if-eq v0, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v3, 0x33

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    if-eqz v2, :cond_4

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBound()V

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v4

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v4

    .line 1225
    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v7

    add-float/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v8

    add-float/2addr v7, v8

    invoke-direct {v15, v2, v3, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1226
    .end local v14    # "rect":Landroid/graphics/RectF;
    .local v15, "rect":Landroid/graphics/RectF;
    const-string v2, "TwGLDualShotMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mX[0]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mX:[F

    const/4 v7, 0x0

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mY[0]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mY:[F

    const/4 v7, 0x0

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v15

    .line 1228
    .end local v15    # "rect":Landroid/graphics/RectF;
    .restart local v14    # "rect":Landroid/graphics/RectF;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v13

    .line 1229
    .local v13, "newrect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v13, Landroid/graphics/RectF;->left:F

    iget v4, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1230
    move-object v14, v13

    .line 1232
    .end local v13    # "newrect":Landroid/graphics/RectF;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideEffectSize(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    .line 1234
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 1235
    const/16 v2, 0x33

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->resetHandler()V

    .line 1237
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setSideLock(I)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundVisible()V

    .line 1241
    packed-switch p1, :pswitch_data_0

    .line 1514
    const/16 v2, 0x1f40

    move/from16 v0, p1

    if-lt v0, v2, :cond_3a

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v2

    if-nez v2, :cond_36

    .line 1518
    const-string v2, "TwGLDualShotMenu"

    const-string v3, "setDualEffectSync : fail to load external filters"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1243
    :pswitch_0
    const v2, 0x7f0a02ce

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1244
    .local v5, "width":F
    const v2, 0x7f0a02cf

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1246
    .local v6, "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 1247
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1249
    :cond_6
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 1250
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1252
    :cond_7
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1253
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1255
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a02cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a02cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1259
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_e

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 1552
    .end local v5    # "width":F
    .end local v6    # "height":F
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v2

    const/16 v3, 0x33

    if-eq v2, v3, :cond_a

    .line 1554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 1558
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 1561
    :cond_b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    .line 1562
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v3, 0x31

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v14

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v14, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v16

    .line 1565
    .local v16, "rotateRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1566
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_3c

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float v8, v2, v3

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float v9, v2, v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 1262
    .end local v16    # "rotateRect":Landroid/graphics/RectF;
    .restart local v5    # "width":F
    .restart local v6    # "height":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1266
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_1
    const v2, 0x7f0a02d0

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1267
    .restart local v5    # "width":F
    const v2, 0x7f0a02d1

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1269
    .restart local v6    # "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    .line 1270
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1272
    :cond_f
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    .line 1273
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1275
    :cond_10
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    .line 1276
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1278
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02d0

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a02d1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02d0

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a02d1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1284
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_12

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1287
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1291
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_2
    const v2, 0x7f0a02d2

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1292
    .restart local v5    # "width":F
    const v2, 0x7f0a02d3

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1294
    .restart local v6    # "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    .line 1295
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1297
    :cond_13
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_14

    .line 1298
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1300
    :cond_14
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    .line 1301
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1303
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02d2

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a02d3

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02d2

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a02d3

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1309
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_16

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1312
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1316
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_3
    const v2, 0x7f0a02d4

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1317
    .restart local v5    # "width":F
    const v2, 0x7f0a02d5

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1319
    .restart local v6    # "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_17

    .line 1320
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1322
    :cond_17
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_18

    .line 1323
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1325
    :cond_18
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    .line 1326
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1328
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02d4

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a02d5

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02d4

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a02d5

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1334
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_1a

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1337
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1341
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_4
    const v2, 0x7f0a02d6

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1342
    .restart local v5    # "width":F
    const v2, 0x7f0a02d7

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1344
    .restart local v6    # "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    .line 1345
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1347
    :cond_1b
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1c

    .line 1348
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1350
    :cond_1c
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d

    .line 1351
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1353
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02d6

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a02d7

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02d6

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a02d7

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_1e

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1362
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1366
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_5
    const v2, 0x7f0a02d8

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1367
    .restart local v5    # "width":F
    const v2, 0x7f0a02d9

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1369
    .restart local v6    # "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1f

    .line 1370
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1372
    :cond_1f
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20

    .line 1373
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1375
    :cond_20
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_21

    .line 1376
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1378
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02d8

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a02d9

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02d8

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a02d9

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1384
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_22

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1387
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1391
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_6
    const v2, 0x7f0a02da

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1392
    .restart local v5    # "width":F
    const v2, 0x7f0a02db

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1394
    .restart local v6    # "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_23

    .line 1395
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1397
    :cond_23
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_24

    .line 1398
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1400
    :cond_24
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_25

    .line 1401
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1403
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02da

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a02db

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02da

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a02db

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1409
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_26

    .line 1410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1412
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1416
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_7
    const v2, 0x7f0a02dc

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1417
    .restart local v5    # "width":F
    const v2, 0x7f0a02dd

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1419
    .restart local v6    # "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_27

    .line 1420
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1422
    :cond_27
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_28

    .line 1423
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1425
    :cond_28
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_29

    .line 1426
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1428
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02dc

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a02dd

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02dc

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a02dd

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1434
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_2a

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1437
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1441
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_8
    const v2, 0x7f0a02de

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1442
    .restart local v5    # "width":F
    const v2, 0x7f0a02df

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1444
    .restart local v6    # "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2b

    .line 1445
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1447
    :cond_2b
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2c

    .line 1448
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1450
    :cond_2c
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2d

    .line 1451
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1453
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02de

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a02df

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02de

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a02df

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1459
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_2e

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1462
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1466
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x9

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_2f

    .line 1473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_30

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v8, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v9, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 1478
    :cond_2f
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setSideLock(I)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    goto/16 :goto_1

    .line 1476
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v3, v3

    add-float v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v9, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto :goto_2

    .line 1482
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget v8, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget v9, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1487
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_31

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    .line 1491
    :cond_31
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    .line 1492
    const v2, 0x7f0a02ce

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1493
    .restart local v5    # "width":F
    const v2, 0x7f0a02cf

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1494
    .restart local v6    # "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_32

    .line 1495
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1497
    :cond_32
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_33

    .line 1498
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1500
    :cond_33
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_34

    .line 1501
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1503
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a02cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v3, 0x7f0a02ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a02cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_9

    .line 1507
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_35

    .line 1508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1510
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 1524
    .end local v5    # "width":F
    .end local v6    # "height":F
    :cond_36
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_3a

    .line 1525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1526
    .restart local v5    # "width":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1527
    .restart local v6    # "height":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_37

    .line 1528
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1530
    :cond_37
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_38

    .line 1531
    iget v2, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 1533
    :cond_38
    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_39

    .line 1534
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 1536
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v2, :cond_3b

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    .end local v5    # "width":F
    .end local v6    # "height":F
    :cond_3a
    :goto_3
    const-string v2, "TwGLDualShotMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffect :: unknown effext setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1542
    .restart local v5    # "width":F
    .restart local v6    # "height":F
    :cond_3b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1544
    .end local v5    # "width":F
    .end local v6    # "height":F
    :catch_0
    move-exception v2

    goto :goto_3

    .line 1569
    .restart local v16    # "rotateRect":Landroid/graphics/RectF;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v3, v3

    add-float v8, v2, v3

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float v9, v2, v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 1241
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public setOrientationChanged(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1021
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, p1, :cond_2

    .line 1022
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    and-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eq v0, v1, :cond_4

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    if-ne v0, v2, :cond_3

    .line 1030
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 1048
    :cond_2
    :goto_0
    return-void

    .line 1034
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v6

    .line 1035
    .local v6, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x0

    iget v1, v6, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, v6, Landroid/graphics/RectF;->right:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 1036
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v6, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v7

    .line 1037
    .local v7, "rotateRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->updateRectBeforeDragged()V

    .line 1039
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_5

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 1045
    .end local v6    # "rect":Landroid/graphics/RectF;
    .end local v7    # "rotateRect":Landroid/graphics/RectF;
    :cond_4
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    goto :goto_0

    .line 1042
    .restart local v6    # "rect":Landroid/graphics/RectF;
    .restart local v7    # "rotateRect":Landroid/graphics/RectF;
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto :goto_1
.end method

.method public setOrientationForDual()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 744
    :cond_0
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 994
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$3;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1005
    return-void
.end method

.method public setPreviousPosition(I)V
    .locals 12
    .param p1, "effect"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 859
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBound()V

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v7

    .line 865
    .local v7, "rect":Landroid/graphics/RectF;
    const/16 v0, 0x30

    if-eq p1, v0, :cond_a

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v7, v1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v6

    .line 867
    .local v6, "newrect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 868
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v11, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v9, :cond_3

    :cond_0
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v10, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v11, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v9, :cond_3

    :cond_2
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v10, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-nez v0, :cond_8

    .line 872
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v7

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v7, v9, v9}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v8

    .line 874
    .local v8, "rotateRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 876
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_7

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 891
    .end local v8    # "rotateRect":Landroid/graphics/RectF;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_6

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_5

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 894
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mNeedToOrientation:Z

    if-eqz v0, :cond_6

    .line 895
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mNeedToOrientation:Z

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 904
    .end local v6    # "newrect":Landroid/graphics/RectF;
    :cond_6
    :goto_1
    return-void

    .line 879
    .restart local v6    # "newrect":Landroid/graphics/RectF;
    .restart local v8    # "rotateRect":Landroid/graphics/RectF;
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto :goto_0

    .line 882
    .end local v8    # "rotateRect":Landroid/graphics/RectF;
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 884
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    if-lez v0, :cond_9

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v6, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFF)V

    goto :goto_0

    .line 887
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v6, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFF)V

    goto/16 :goto_0

    .line 902
    .end local v6    # "newrect":Landroid/graphics/RectF;
    :cond_a
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setEffect(I)V

    goto :goto_1
.end method

.method public setResizeHandleDragVibration(Z)V
    .locals 1
    .param p1, "vibration"    # Z

    .prologue
    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setResizeHandleDragVibration(Z)V

    .line 739
    return-void
.end method

.method public setonGLHandlerChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    .line 281
    return-void
.end method

.method public setonHandlerMoveListener()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getonHandlerMoveListener()Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;)V

    .line 754
    :cond_0
    return-void
.end method

.method public showGlueHanlderRect()V
    .locals 6

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBound()V

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v0

    .line 551
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 552
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->applyVisible()V

    .line 553
    return-void
.end method

.method public showTrackingButton()V
    .locals 7

    .prologue
    const/16 v2, 0x33

    const/4 v6, 0x4

    const/4 v1, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    if-eqz v0, :cond_3

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_2

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 955
    :cond_2
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundInvisible()V

    goto :goto_0

    .line 959
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingStart:Z

    if-nez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getIsCalledSwitchToCameraSync()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 964
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 967
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_5

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOnButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 971
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 972
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundVisible()V

    goto/16 :goto_0

    .line 966
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->showBoundryRect()V

    goto :goto_1
.end method
