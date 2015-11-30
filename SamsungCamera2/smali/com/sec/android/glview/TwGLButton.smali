.class public Lcom/sec/android/glview/TwGLButton;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;
    }
.end annotation


# static fields
.field private static final DRAW_HIGHLIGHT_DELAY:I = 0xc8

.field private static final DRAW_HIGHLIGHT_MINIMUM_DURATION:I = 0xc8

.field private static final HIGHLIGHTTYPE_COLOR:I = 0x2

.field private static final HIGHLIGHTTYPE_NONE:I = 0x0

.field private static final HIGHLIGHTTYPE_RESOURCE:I = 0x1

.field private static final HIGHLIGHT_FADE_OUT_ANIM_DURATION:I = 0x190


# instance fields
.field protected mBackgroundRotatable:Z

.field protected mButtonHeight:F

.field protected mButtonWidth:F

.field protected mDimBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mDimForeground:Lcom/sec/android/glview/TwGLTexture;

.field protected mDimId:I

.field protected mDrawHighlight:Z

.field protected mForegroundOffsetX:F

.field protected mForegroundOffsetY:F

.field protected mHighlight:Lcom/sec/android/glview/TwGLTexture;

.field protected mHighlightFadeOut:Z

.field protected mHighlightId:I

.field protected mHighlightType:I

.field protected mImageData:[B

.field protected mImagePath:Ljava/lang/String;

.field protected mIsNinePatchButton:Z

.field protected mMute:Z

.field protected mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

.field protected mNormalId:I

.field protected mNormalTextColor:I

.field protected mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

.field protected mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

.field protected mPressed:Z

.field protected mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

.field protected mPressedId:I

.field protected mPressedTextColor:I

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F

.field protected mShowHighlight:Z

.field protected mShowText:Z

.field protected mText:Lcom/sec/android/glview/TwGLText;

.field private resetDrawHighlight:Ljava/lang/Runnable;

.field private setDrawHighlight:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I
    .param p9, "npHighlightId"    # I

    .prologue
    .line 416
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v1, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v1, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v1, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 418
    if-eqz p6, :cond_0

    .line 419
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 421
    :cond_0
    if-eqz p7, :cond_1

    .line 422
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 423
    :cond_1
    if-eqz p8, :cond_2

    .line 424
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 427
    :cond_2
    if-eqz p9, :cond_3

    .line 428
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 429
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 431
    :cond_3
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 432
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 434
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 435
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 437
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 438
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 440
    :cond_5
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 441
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    .line 442
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 443
    :cond_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    .line 444
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 445
    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_9

    .line 446
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 449
    :cond_9
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_a

    .line 450
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 451
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_b

    .line 452
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 453
    :cond_b
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_c

    .line 454
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 455
    :cond_c
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_d

    .line 456
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 460
    :cond_d
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 461
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 462
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 463
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 464
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 465
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 10
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I
    .param p9, "highlightColor"    # I
    .param p10, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 530
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v1, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v1, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v1, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 532
    if-eqz p6, :cond_0

    .line 533
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 535
    :cond_0
    if-eqz p7, :cond_1

    .line 536
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p7

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 537
    :cond_1
    if-eqz p8, :cond_2

    .line 538
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 541
    :cond_2
    if-eqz p9, :cond_3

    .line 542
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 543
    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x3

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 545
    :cond_3
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 546
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 548
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 549
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 551
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 552
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 554
    :cond_5
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 555
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    .line 556
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 557
    :cond_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    .line 558
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 559
    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_9

    .line 560
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 563
    :cond_9
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_a

    .line 564
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 565
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_b

    .line 566
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 567
    :cond_b
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_c

    .line 568
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 569
    :cond_c
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_d

    .line 570
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 571
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 574
    :cond_d
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 575
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 576
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 577
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 578
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 579
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 219
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 59
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    if-eqz p6, :cond_0

    .line 222
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 223
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 224
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 230
    :cond_1
    iput-object p6, p0, Lcom/sec/android/glview/TwGLButton;->mImagePath:Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "image"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 291
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 59
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 293
    if-eqz p6, :cond_0

    .line 294
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF[BZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 295
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 296
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 302
    :cond_1
    iput-object p6, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 303
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 304
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "npHighlightId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 365
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 59
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 367
    if-eqz p4, :cond_0

    .line 368
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 369
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 370
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 372
    :cond_0
    if-eqz p5, :cond_1

    .line 373
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 374
    :cond_1
    if-eqz p6, :cond_2

    .line 375
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 376
    :cond_2
    if-eqz p7, :cond_3

    .line 377
    iput v7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 378
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 379
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 384
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 385
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 388
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 389
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 390
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 391
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 392
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 395
    :cond_7
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 396
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 397
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 398
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 399
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 400
    return-void

    .line 381
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 591
    int-to-float v4, p7

    int-to-float v5, p8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 593
    int-to-float v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 594
    int-to-float v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 598
    if-eqz p4, :cond_0

    .line 599
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 601
    :cond_0
    if-eqz p5, :cond_1

    .line 602
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 604
    :cond_1
    if-eqz p6, :cond_2

    .line 605
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 610
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 611
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 612
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 614
    :cond_5
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 615
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 616
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 617
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 618
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 10
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "highlightColor"    # I
    .param p8, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 479
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v1, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v1, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v1, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 481
    if-eqz p4, :cond_0

    .line 482
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 483
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 484
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 486
    :cond_0
    if-eqz p5, :cond_1

    .line 487
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 488
    :cond_1
    if-eqz p6, :cond_2

    .line 489
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 490
    :cond_2
    if-eqz p7, :cond_3

    .line 491
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 492
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    .line 493
    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v5

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x3

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 498
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    .line 499
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 500
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    .line 501
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 502
    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_6

    .line 503
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 504
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    .line 505
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 509
    :cond_7
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 510
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 511
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 512
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 513
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 514
    return-void

    .line 495
    :cond_8
    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x3

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 5
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 59
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 195
    if-eqz p4, :cond_0

    .line 196
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 197
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 198
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 204
    :cond_1
    iput-object p4, p0, Lcom/sec/android/glview/TwGLButton;->mImagePath:Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 5
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "image"    # [B

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 59
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 267
    if-eqz p4, :cond_0

    .line 268
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 269
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 270
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 276
    :cond_1
    iput-object p4, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 277
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 278
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;IIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "normalId"    # I
    .param p3, "pressedId"    # I
    .param p4, "dimmedId"    # I
    .param p5, "npHighlightId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 316
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 59
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 318
    if-eqz p2, :cond_0

    .line 319
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 320
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 321
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 323
    :cond_0
    if-eqz p3, :cond_1

    .line 324
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 325
    :cond_1
    if-eqz p4, :cond_2

    .line 326
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 327
    :cond_2
    if-eqz p5, :cond_3

    .line 328
    iput v7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 329
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 330
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 335
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 337
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 338
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 339
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 340
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 341
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 342
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 343
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 346
    :cond_7
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 347
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 348
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 349
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 350
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 351
    return-void

    .line 332
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 59
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 173
    if-eqz p2, :cond_0

    .line 174
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 175
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 176
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;[B)V
    .locals 5
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "image"    # [B

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 59
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 62
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 68
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 71
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 83
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 86
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 89
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 92
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 95
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 98
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 101
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 106
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 112
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 121
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 124
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 141
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 243
    if-eqz p2, :cond_0

    .line 244
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 245
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 246
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 252
    :cond_1
    iput-object p2, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 253
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLButton;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    return-void
.end method

.method private getBgMatrix()[F
    .locals 1

    .prologue
    .line 1585
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    if-eqz v0, :cond_0

    .line 1586
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v0

    .line 1588
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrixWithoutRotate()[F

    move-result-object v0

    goto :goto_0
.end method

.method private initButton()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 621
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 622
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 623
    return-void
.end method

.method private setDrawHighlight(Z)V
    .locals 2
    .param p1, "draw"    # Z

    .prologue
    .line 1514
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1515
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    if-ne v0, p1, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 1519
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;->onButtonHighlightChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 787
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 789
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 793
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 797
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 800
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 801
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 803
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 804
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 805
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 807
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 808
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 809
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 811
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 812
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 813
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 815
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_7

    .line 816
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 817
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 819
    :cond_7
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 820
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 821
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getDimState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v0, :cond_0

    .line 869
    const v0, 0x3ee66666    # 0.45f

    .line 874
    :goto_0
    return v0

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 873
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mAlpha:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 874
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mAlpha:F

    goto :goto_0
.end method

.method public getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1534
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHasExtraDescription:Z

    if-ne v1, v2, :cond_1

    .line 1550
    :cond_0
    :goto_0
    return-object v0

    .line 1537
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eq v1, v2, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1541
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/glview/HoverPopupWindow;-><init>(Landroid/view/View;Lcom/sec/android/glview/TwGLView;I)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 1543
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_2

    .line 1544
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mHoverPopupGravity:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupGravity(I)V

    .line 1545
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mHoverPopupOffsetX:I

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mHoverPopupOffsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 1546
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 1550
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    goto :goto_0
.end method

.method public getLoaded()Z
    .locals 2

    .prologue
    .line 882
    const/4 v0, 0x1

    .line 883
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_0

    .line 885
    const/4 v0, 0x0

    .line 887
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_1

    .line 888
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_1

    .line 889
    const/4 v0, 0x0

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_2

    .line 892
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_2

    .line 893
    const/4 v0, 0x0

    .line 895
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_3

    .line 896
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_3

    .line 897
    const/4 v0, 0x0

    .line 899
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    .line 900
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_4

    .line 901
    const/4 v0, 0x0

    .line 903
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    .line 904
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_5

    .line 905
    const/4 v0, 0x0

    .line 907
    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_6

    .line 908
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_6

    .line 909
    const/4 v0, 0x0

    .line 911
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_7

    .line 912
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->load()Z

    move-result v1

    if-nez v1, :cond_7

    .line 913
    const/4 v0, 0x0

    .line 916
    :cond_7
    return v0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 1344
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 1346
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_1

    .line 1347
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 1348
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1350
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 1351
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1354
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    .line 1355
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 1356
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1358
    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 1359
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1362
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_5

    .line 1363
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 1364
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1366
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 1367
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1370
    :cond_5
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_7

    .line 1371
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_6

    .line 1372
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v1

    .line 1374
    :cond_6
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_7

    .line 1375
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v0

    .line 1379
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 1380
    return-void
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 1530
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    return v0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1121
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1126
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public mStringName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getStringName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 693
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mText()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 1011
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 1012
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1019
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 1021
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 1024
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1025
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 1027
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 1028
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 1030
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 1031
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 1033
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_7

    .line 1034
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onAlphaUpdated()V

    .line 1036
    :cond_7
    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 3

    .prologue
    .line 924
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 926
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->getBgMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 927
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 973
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->draw([FLandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    :cond_1
    monitor-exit p0

    return-void

    .line 930
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->getBgMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 932
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 936
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v0, :cond_6

    .line 937
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_4

    .line 938
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 940
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 941
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->getBgMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 942
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 945
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->getBgMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 947
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 951
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_9

    .line 952
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    if-eqz v0, :cond_7

    .line 953
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 955
    :cond_7
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 956
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->getBgMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 960
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->getBgMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 962
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 966
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->getBgMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 968
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw([FLandroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1131
    sparse-switch p1, :sswitch_data_0

    .line 1150
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 1136
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    goto :goto_0

    .line 1141
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1143
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1144
    invoke-direct {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1145
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1131
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 1155
    sparse-switch p1, :sswitch_data_0

    .line 1179
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 1158
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1160
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1161
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    add-long/2addr v2, v10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1162
    invoke-direct {p0, v1}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1163
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long v4, v10, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1167
    :goto_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_2

    .line 1168
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    if-nez v2, :cond_1

    .line 1169
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1170
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1172
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    .line 1174
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v2, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1165
    :cond_3
    invoke-direct {p0, v8}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    goto :goto_1

    .line 1155
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 983
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 984
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 991
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 993
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 994
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 996
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 997
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 999
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 1000
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 1002
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 1003
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 1005
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_7

    .line 1006
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onLayoutUpdated()V

    .line 1008
    :cond_7
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 828
    const/4 v0, 0x1

    .line 830
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_1

    .line 834
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 836
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_2

    .line 837
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 839
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_3

    .line 840
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 842
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    .line 843
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 845
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    .line 846
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 848
    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_6

    .line 849
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 851
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_7

    .line 852
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 855
    :cond_7
    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1491
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1494
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1496
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1497
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1499
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1500
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1502
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 1503
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1505
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 1506
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1508
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_7

    .line 1509
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->reset()V

    .line 1511
    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1048
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v2, :cond_0

    .line 1049
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1050
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1052
    :cond_0
    const/4 v2, 0x1

    .line 1116
    :goto_0
    return v2

    .line 1054
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 1055
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1056
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v2, :cond_2

    .line 1057
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 1058
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1059
    const/4 v2, 0x1

    goto :goto_0

    .line 1060
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v2, :cond_8

    .line 1061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/glview/TwGLButton;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1062
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1063
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v2, :cond_4

    .line 1064
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 1097
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    .line 1098
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1099
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v2, :cond_5

    .line 1100
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 1101
    :cond_5
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1102
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_6

    .line 1103
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    if-eqz v2, :cond_6

    .line 1104
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1105
    .local v1, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1106
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/glview/TwGLTexture;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1107
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->startAnimation()V

    .line 1108
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTexture;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 1111
    .end local v1    # "anim":Landroid/view/animation/Animation;
    :cond_6
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    if-eqz v2, :cond_7

    .line 1112
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;->onButtonHighlightChanged(Z)V

    .line 1114
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1066
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v2, :cond_4

    .line 1067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 1068
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1069
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1073
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1074
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v2, :cond_9

    .line 1075
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 1076
    :cond_9
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_a

    .line 1077
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    if-eqz v2, :cond_a

    .line 1078
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1079
    .restart local v1    # "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1080
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/glview/TwGLTexture;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1081
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->startAnimation()V

    .line 1082
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTexture;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 1085
    .end local v1    # "anim":Landroid/view/animation/Animation;
    :cond_a
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_d

    .line 1086
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    if-nez v2, :cond_b

    .line 1087
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1088
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1090
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_b
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1091
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1093
    :cond_c
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    .line 1095
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1071
    :cond_e
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    goto/16 :goto_1

    .line 1116
    :cond_f
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public setBackgroundRotatable(Z)V
    .locals 1
    .param p1, "rotatable"    # Z

    .prologue
    .line 1580
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    .line 1581
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mBackgroundRotatable:Z

    invoke-super {p0, v0}, Lcom/sec/android/glview/TwGLView;->setBackgroundRotatable(Z)V

    .line 1582
    return-void
.end method

.method public declared-synchronized setButtonResources(IIII)V
    .locals 7
    .param p1, "normalId"    # I
    .param p2, "pressedId"    # I
    .param p3, "dimmedId"    # I
    .param p4, "npHighlightId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1191
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1192
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 1193
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1195
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1197
    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    if-eq v0, p2, :cond_3

    .line 1198
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 1199
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1200
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1201
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1203
    :cond_3
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    if-eq v0, p3, :cond_5

    .line 1204
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 1205
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1206
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1207
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1209
    :cond_5
    if-eqz p4, :cond_8

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    if-ne v0, p4, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    if-eq v0, v4, :cond_8

    .line 1210
    :cond_6
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 1211
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 1212
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 1213
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1214
    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 1217
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1218
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1219
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1221
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1222
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1223
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1225
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    .line 1226
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1227
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1229
    :cond_b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_c

    .line 1230
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1232
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1233
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    .line 1234
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 1235
    :cond_d
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1236
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    :cond_e
    :goto_0
    monitor-exit p0

    return-void

    .line 1238
    :cond_f
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_10

    .line 1239
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 1240
    :cond_10
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1241
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setButtonResources(IIIILandroid/graphics/Bitmap$Config;)V
    .locals 9
    .param p1, "normalId"    # I
    .param p2, "pressedId"    # I
    .param p3, "dimmedId"    # I
    .param p4, "highlightColor"    # I
    .param p5, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v4, 0x2

    .line 1254
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1255
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 1256
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1258
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1260
    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    if-eq v0, p2, :cond_3

    .line 1261
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 1262
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1263
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1264
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1266
    :cond_3
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    if-eq v0, p3, :cond_5

    .line 1267
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 1268
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1269
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1270
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1272
    :cond_5
    if-eqz p4, :cond_8

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    if-ne v0, p4, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    if-eq v0, v4, :cond_8

    .line 1273
    :cond_6
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 1274
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 1275
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 1276
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1277
    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 1280
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1281
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1282
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1284
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1285
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1286
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1288
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    .line 1289
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1290
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1292
    :cond_b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_c

    .line 1293
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLTexture;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1295
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1296
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    .line 1297
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 1298
    :cond_d
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1299
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    :cond_e
    :goto_0
    monitor-exit p0

    return-void

    .line 1301
    :cond_f
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_10

    .line 1302
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 1303
    :cond_10
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1304
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDim(Z)V
    .locals 3
    .param p1, "dim"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3ee66666    # 0.45f

    .line 750
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V

    .line 751
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 780
    :cond_1
    :goto_0
    return-void

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0

    .line 766
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_5

    .line 767
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 769
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 773
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    .line 775
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setForegroundResource(IIIII)V
    .locals 3
    .param p1, "posX"    # I
    .param p2, "posY"    # I
    .param p3, "normalId"    # I
    .param p4, "pressedId"    # I
    .param p5, "dimmedId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1554
    if-eqz p3, :cond_0

    .line 1555
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 1556
    :cond_0
    if-eqz p4, :cond_1

    .line 1557
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 1558
    :cond_1
    if-eqz p5, :cond_2

    .line 1559
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    .line 1560
    :cond_2
    int-to-float v0, p1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    int-to-float v0, p2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 1561
    :cond_3
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    .line 1562
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    .line 1564
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 1565
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1566
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 1567
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedForeground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1568
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 1569
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mForegroundOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1570
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1571
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimForeground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 1572
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    .line 1577
    :cond_8
    :goto_0
    return-void

    .line 1574
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 1575
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalForeground:Lcom/sec/android/glview/TwGLTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public declared-synchronized setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 1453
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 1454
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1455
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_4

    .line 1456
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setHeight(F)V

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setHeight(F)V

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1463
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setHeight(F)V

    .line 1465
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1466
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setHeight(F)V

    .line 1468
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1469
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setHeight(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    :cond_4
    monitor-exit p0

    return-void

    .line 1453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHighlightVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 743
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 744
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 1039
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 1040
    return-void
.end method

.method public setOnButtonHighlightChangedListener(Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 162
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 1477
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 1479
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 1481
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1483
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 1525
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1526
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1527
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1316
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 1317
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 1319
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v2, :cond_0

    .line 1320
    const/4 v2, 0x0

    .line 1334
    :goto_0
    return v2

    .line 1322
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    .line 1323
    .local v1, "buttonImageWidth":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    .line 1325
    .local v0, "buttonImageHeight":F
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    .line 1326
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1327
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_2

    .line 1328
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1330
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    .line 1331
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1334
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1384
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1385
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1386
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1388
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_5

    .line 1389
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1396
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 1398
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1399
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 1401
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1402
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 1425
    :cond_4
    :goto_0
    return-void

    .line 1407
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1408
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 1410
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1411
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 1413
    :cond_7
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 1414
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1416
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1417
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1419
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1420
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1422
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1423
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    goto/16 :goto_0
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1
    .param p1, "text"    # Lcom/sec/android/glview/TwGLText;

    .prologue
    .line 643
    if-eqz p1, :cond_0

    .line 644
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 645
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLText;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 648
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 631
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 632
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 633
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLText;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 635
    return-void
.end method

.method public setText(Ljava/lang/String;FIIZZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "normalColor"    # I
    .param p4, "pressedColor"    # I
    .param p5, "shadow"    # Z
    .param p6, "bold"    # Z

    .prologue
    .line 665
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v6, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v7, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 666
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 667
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setBold(Z)V

    .line 668
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLText;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 669
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 670
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 671
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 672
    return-void
.end method

.method public setText(Ljava/lang/String;FIZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "color"    # I
    .param p4, "shadow"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 656
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 657
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 658
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLText;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 660
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 661
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 662
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 723
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 726
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 703
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_0

    .line 704
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    sub-float v1, v2, p1

    .line 705
    .local v1, "width":F
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    sub-float v0, v2, p2

    .line 707
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    .line 708
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 714
    .end local v0    # "height":F
    .end local v1    # "width":F
    :cond_0
    :goto_0
    return-void

    .line 710
    .restart local v0    # "height":F
    .restart local v1    # "width":F
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FFZ)V

    .line 711
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 734
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 735
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 1429
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 1430
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1431
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_4

    .line 1432
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setWidth(F)V

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setWidth(F)V

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setWidth(F)V

    .line 1441
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1442
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setWidth(F)V

    .line 1444
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1445
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setWidth(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    :cond_4
    monitor-exit p0

    return-void

    .line 1429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
