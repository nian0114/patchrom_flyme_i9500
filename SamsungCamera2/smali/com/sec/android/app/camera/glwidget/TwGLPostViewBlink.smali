.class public Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;
.super Lcom/sec/android/glview/TwGLAniViewGroup;
.source "TwGLPostViewBlink.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLPostViewBlink"


# instance fields
.field private final LINE_THICK:I

.field mRect:Lcom/sec/android/glview/TwGLViewGroup;

.field mRectangleBottom:Lcom/sec/android/glview/TwGLRectangle;

.field mRectangleLeft:Lcom/sec/android/glview/TwGLRectangle;

.field mRectangleRight:Lcom/sec/android/glview/TwGLRectangle;

.field mRectangleTop:Lcom/sec/android/glview/TwGLRectangle;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 16
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "previewLeft"    # F
    .param p3, "previewTop"    # F
    .param p4, "previewWidth"    # F
    .param p5, "previewHeight"    # F

    .prologue
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLAniViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 34
    const v6, 0x7f0b0019

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    .line 46
    move/from16 v0, p4

    float-to-int v15, v0

    .line 47
    .local v15, "width":I
    move/from16 v0, p5

    float-to-int v14, v0

    .line 49
    .local v14, "height":I
    new-instance v2, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    sub-int v7, v14, v7

    int-to-float v7, v7

    const v8, 0x7f090011

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x3

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLRectangle;

    .line 50
    new-instance v2, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    int-to-float v4, v6

    const/4 v5, 0x0

    int-to-float v6, v15

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    int-to-float v7, v7

    const v8, 0x7f090011

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x3

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLRectangle;

    .line 51
    new-instance v2, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    sub-int v6, v15, v6

    int-to-float v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    int-to-float v5, v6

    int-to-float v6, v15

    int-to-float v7, v14

    const v8, 0x7f090011

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x3

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLRectangle;

    .line 52
    new-instance v2, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    sub-int v6, v14, v6

    int-to-float v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    sub-int v6, v15, v6

    int-to-float v6, v6

    int-to-float v7, v14

    const v8, 0x7f090011

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x3

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLRectangle;

    .line 54
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    .line 55
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 58
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 61
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x0

    move/from16 v8, p2

    move/from16 v10, p3

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 62
    .local v2, "Left":Landroid/view/animation/ScaleAnimation;
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v9, p2

    move/from16 v11, p3

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 63
    .local v3, "Top":Landroid/view/animation/ScaleAnimation;
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    add-float v10, p2, p4

    const/4 v11, 0x0

    move/from16 v12, p3

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 64
    .local v4, "Right":Landroid/view/animation/ScaleAnimation;
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v12, 0x0

    add-float v13, p5, p3

    move/from16 v11, p2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 66
    .local v5, "Bottom":Landroid/view/animation/ScaleAnimation;
    move/from16 v0, p4

    float-to-int v6, v0

    move/from16 v0, p5

    float-to-int v7, v0

    invoke-virtual {v2, v6, v7, v15, v14}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 67
    const-wide/16 v6, 0x32

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 68
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 69
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 71
    move/from16 v0, p4

    float-to-int v6, v0

    move/from16 v0, p5

    float-to-int v7, v0

    invoke-virtual {v3, v6, v7, v15, v14}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 72
    const-wide/16 v6, 0x32

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 73
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 74
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 76
    move/from16 v0, p4

    float-to-int v6, v0

    move/from16 v0, p5

    float-to-int v7, v0

    invoke-virtual {v4, v6, v7, v15, v14}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 77
    const-wide/16 v6, 0x32

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 78
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 79
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 81
    move/from16 v0, p4

    float-to-int v6, v0

    move/from16 v0, p5

    float-to-int v7, v0

    invoke-virtual {v5, v6, v7, v15, v14}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 82
    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 83
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 84
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 86
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v6, v2}, Lcom/sec/android/glview/TwGLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v6, v3}, Lcom/sec/android/glview/TwGLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v6, v4}, Lcom/sec/android/glview/TwGLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v6, v5}, Lcom/sec/android/glview/TwGLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method


# virtual methods
.method protected setAnimationStep(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    const/4 v2, 0x2

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLRectangle;->startAnimation()V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLRectangle;->startAnimation()V

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_6

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLRectangle;->startAnimation()V

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_7

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLRectangle;->startAnimation()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
