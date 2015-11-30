.class public Lcom/sec/android/app/camera/MenuBase;
.super Ljava/lang/Object;
.source "MenuBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuBase$OnHideListener;,
        Lcom/sec/android/app/camera/MenuBase$OnShowListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MenuBase"

.field public static final Z_LEVEL_0:I = 0x0

.field public static final Z_LEVEL_1:I = 0x1

.field public static final Z_LEVEL_10:I = 0xb

.field public static final Z_LEVEL_11:I = 0xc

.field public static final Z_LEVEL_12:I = 0xd

.field public static final Z_LEVEL_13:I = 0xe

.field public static final Z_LEVEL_14:I = 0xf

.field public static final Z_LEVEL_2:I = 0x2

.field public static final Z_LEVEL_3:I = 0x3

.field public static final Z_LEVEL_4:I = 0x5

.field public static final Z_LEVEL_5:I = 0x6

.field public static final Z_LEVEL_6:I = 0x7

.field public static final Z_LEVEL_7:I = 0x8

.field public static final Z_LEVEL_8:I = 0x9

.field public static final Z_LEVEL_9:I = 0xa

.field public static final Z_LEVEL_FULLSCREEN:I = 0x11

.field public static final Z_LEVEL_TOP:I = 0x10

.field public static final Z_LEVEL_TOUCH_FOCUS:I = 0x4


# instance fields
.field private mActive:Z

.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field protected mAnchor:Lcom/sec/android/glview/TwGLImage;

.field protected mBaseView:Landroid/view/ViewGroup;

.field private mCaptureEnabled:Z

.field protected mChild:Lcom/sec/android/app/camera/MenuBase;

.field private mEffect:Z

.field private mGLActive:Z

.field protected mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLaunchX:F

.field protected mLaunchY:F

.field public mLayoutId:I

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

.field private mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

.field private mPreviewTouchEnabled:Z

.field protected mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private final mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field public mViewId:I

.field protected mVisibility:Z

.field protected mZorder:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "layoutId"    # I
    .param p3, "viewId"    # I
    .param p4, "baseLayout"    # Landroid/view/ViewGroup;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I

    .prologue
    .line 137
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V
    .locals 12
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "layoutId"    # I
    .param p3, "viewId"    # I
    .param p4, "baseLayout"    # Landroid/view/ViewGroup;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "effect"    # Z

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 55
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 58
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 60
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 62
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 87
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 88
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 89
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 104
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 105
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    .line 106
    iput p3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 107
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 108
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 109
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 117
    .local v11, "baseView":Landroid/view/View;
    if-eqz v11, :cond_1

    .line 118
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 121
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 123
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 127
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 131
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 133
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "zOrder"    # I
    .param p6, "effect"    # Z

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 87
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 88
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 89
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 143
    iput-object p3, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 145
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 146
    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 147
    iput p5, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 148
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 151
    iput-boolean p6, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 163
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;IZ)V
    .locals 11
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "resource"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p6, "zOrder"    # I
    .param p7, "effect"    # Z

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 55
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 58
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 60
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 62
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 87
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 88
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 89
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 167
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 168
    iput-object p3, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 170
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 171
    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 172
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 173
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 174
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 176
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 177
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 179
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 187
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 386
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 390
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    .line 392
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 393
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 394
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 395
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    .line 396
    return-void
.end method

.method public clearGLView()V
    .locals 3

    .prologue
    .line 376
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 378
    .local v0, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 380
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 383
    .end local v0    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_0
    return-void
.end method

.method public final getBaseResourceId()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    return v0
.end method

.method public final getBaseViewId()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    return v0
.end method

.method public final getVisibility()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    return v0
.end method

.method public final getZorder()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public hideMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-eqz v2, :cond_2

    .line 231
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-nez v2, :cond_5

    .line 232
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "baseView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 234
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .end local v0    # "baseView":Landroid/view/View;
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_3

    .line 252
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 255
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 257
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    if-eqz v2, :cond_4

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/MenuBase$OnHideListener;->onHide(Lcom/sec/android/app/camera/MenuBase;)V

    .line 261
    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    goto :goto_0

    .line 236
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 238
    .local v1, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_1

    .line 239
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_6

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 241
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_1

    .line 243
    :cond_6
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_1
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    return v0
.end method

.method public isAnimationFinished()Z
    .locals 3

    .prologue
    .line 417
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 418
    .local v0, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v0, :cond_0

    .line 419
    const/4 v1, 0x1

    .line 420
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isAnimationFinished()Z

    move-result v1

    goto :goto_0
.end method

.method public final isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    return v0
.end method

.method public final isFullScreen()Z
    .locals 2

    .prologue
    .line 349
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    return v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public onAutoFocusCompleted()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 369
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public onStartingPreviewCompleted()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method protected resourceChanged(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 0
    .param p1, "resource"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 193
    return-void
.end method

.method public restoreMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-nez v2, :cond_1

    .line 266
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-nez v2, :cond_4

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "baseView":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 269
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .end local v0    # "baseView":Landroid/view/View;
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 292
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    if-eqz v2, :cond_3

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/MenuBase$OnShowListener;->onShow(Lcom/sec/android/app/camera/MenuBase;)V

    .line 295
    :cond_3
    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 296
    return-void

    .line 273
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 274
    .local v1, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_0

    .line 275
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_5

    .line 277
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 278
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 280
    :cond_5
    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0
    .param p1, "anchor"    # Lcom/sec/android/glview/TwGLImage;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 341
    return-void
.end method

.method public final setBaseResourceId(I)V
    .locals 0
    .param p1, "layoutId"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    .line 313
    return-void
.end method

.method public final setBaseViewId(I)V
    .locals 0
    .param p1, "viewId"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 321
    return-void
.end method

.method protected setCaptureEnabled(Z)V
    .locals 0
    .param p1, "capture"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 366
    return-void
.end method

.method public final setChild(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .param p1, "child"    # Lcom/sec/android/app/camera/MenuBase;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 329
    return-void
.end method

.method public final setDim(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    .line 299
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 301
    .local v0, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_0

    .line 302
    if-eqz p1, :cond_1

    const/16 v1, 0x20

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 305
    .end local v0    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_0
    return-void

    .line 302
    .restart local v0    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    .line 213
    return-void
.end method

.method public final setLaunchPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 344
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchX:F

    .line 345
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    .line 346
    return-void
.end method

.method public setOnHideListener(Lcom/sec/android/app/camera/MenuBase$OnHideListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    .line 205
    return-void
.end method

.method public setOnShowListener(Lcom/sec/android/app/camera/MenuBase$OnShowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    .line 201
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 209
    return-void
.end method

.method protected setTouchHandled(Z)V
    .locals 0
    .param p1, "handle"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 362
    return-void
.end method

.method public final setZorder(I)V
    .locals 1
    .param p1, "zOrder"    # I

    .prologue
    .line 336
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 337
    return-void
.end method

.method public showMenu()V
    .locals 3

    .prologue
    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/Camera;->pushMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 221
    .local v0, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    goto :goto_0
.end method
