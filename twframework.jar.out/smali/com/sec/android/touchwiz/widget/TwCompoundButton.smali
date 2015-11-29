.class public abstract Lcom/sec/android/touchwiz/widget/TwCompoundButton;
.super Landroid/widget/Button;
.source "TwCompoundButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwCompoundButton$1;,
        Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final CHECK_ANIMATION_DURATION:I = 0x78

.field private static final TAG:Ljava/lang/String; = "TwCheckBox"


# instance fields
.field private mBroadcasting:Z

.field private mButtonBgHasBeenSet:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mCheckBoxAnimationEnabled:Z

.field private mCheckContainerBounds:Landroid/graphics/Rect;

.field private mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkAnimating:Z

.field private mCheckMarkAnimationCurrentValue:F

.field private mCheckMarkClipBounds:Landroid/graphics/Rect;

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mChecked:Z

.field private mIsAttached:Z

.field private mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimationCurrentValue:F

    .line 68
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    .line 69
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    .line 70
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonBgHasBeenSet:Z

    .line 72
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    .line 73
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerBounds:Landroid/graphics/Rect;

    .line 74
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkClipBounds:Landroid/graphics/Rect;

    .line 98
    invoke-static {p1}, Landroid/util/GeneralUtil;->isThemeDark(Landroid/content/Context;)Z

    move-result v3

    .line 100
    .local v3, "darkTheme":Z
    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x202023d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 102
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20202b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20202ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    :goto_0
    const-string v4, "TwCheckBox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TwCompoundButton.<cst> darkTheme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_0
    sget-object v4, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 123
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    return-void

    .line 107
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "checked":Z
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020240

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 108
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20202b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20202af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setCheckAnimation(ZZZ)V
    .locals 4
    .param p1, "checked"    # Z
    .param p2, "allowExternalAnimation"    # Z
    .param p3, "externalAnimate"    # Z

    .prologue
    .line 533
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 534
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 535
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 536
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 537
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 538
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 541
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 544
    :cond_3
    return-void

    .line 534
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setCheckedInner(ZZZ)V
    .locals 2
    .param p1, "checked"    # Z
    .param p2, "allowExternalAnimation"    # Z
    .param p3, "externalAnimate"    # Z

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setCheckAnimation(ZZZ)V

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_1

    .line 194
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    .line 195
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->refreshDrawableState()V

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 199
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_2

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mBroadcasting:Z

    .line 204
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V

    .line 211
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mBroadcasting:Z

    goto :goto_0
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 441
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->drawableHotspotChanged(FF)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 446
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 420
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 422
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getDrawableState()[I

    move-result-object v0

    .line 426
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 430
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 432
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->invalidate()V

    .line 437
    .end local v0    # "myDrawableState":[I
    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 317
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v1

    .line 318
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 320
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 324
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 329
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v1

    .line 330
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 332
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 336
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v1
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 455
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 456
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 457
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 566
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    .line 561
    const-string v0, "TwCheckBox"

    const-string v1, "TwCheckbox onAnimationEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 570
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    .line 555
    const-string v0, "TwCheckBox"

    const-string v1, "TwCheckbox onAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnim"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 548
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimationCurrentValue:F

    .line 549
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->invalidate()V

    .line 550
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    .line 143
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 411
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 412
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mergeDrawableStates([I[I)[I

    .line 415
    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    .line 149
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 342
    .local v3, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getGravity()I

    move-result v12

    and-int/lit8 v11, v12, 0x70

    .line 344
    .local v11, "verticalGravity":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 345
    .local v5, "drawableHeight":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 348
    .local v6, "drawableWidth":I
    sparse-switch v11, :sswitch_data_0

    .line 356
    const/4 v10, 0x0

    .line 358
    .local v10, "top":I
    :goto_0
    add-int v2, v10, v5

    .line 359
    .local v2, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getWidth()I

    move-result v12

    sub-int v7, v12, v6

    .line 360
    .local v7, "left":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getWidth()I

    move-result v8

    .line 362
    .local v8, "right":I
    :goto_2
    invoke-virtual {v3, v7, v10, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 363
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v7, v10, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 364
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkClipBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 367
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v1, v7, v10, v8, v2}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 372
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v2    # "bottom":I
    .end local v5    # "drawableHeight":I
    .end local v6    # "drawableWidth":I
    .end local v7    # "left":I
    .end local v8    # "right":I
    .end local v10    # "top":I
    .end local v11    # "verticalGravity":I
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 374
    if-eqz v3, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_4

    const/4 v4, 0x1

    .line 383
    .local v4, "drawAnimatedCheckbox":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 384
    .local v9, "saveCount":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mScrollX:I

    int-to-float v12, v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 385
    if-eqz v4, :cond_5

    .line 392
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkClipBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkClipBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimationCurrentValue:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 397
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkClipBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 401
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 407
    .end local v4    # "drawAnimatedCheckbox":Z
    .end local v9    # "saveCount":I
    :cond_1
    :goto_4
    return-void

    .line 350
    .restart local v5    # "drawableHeight":I
    .restart local v6    # "drawableWidth":I
    .restart local v11    # "verticalGravity":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getHeight()I

    move-result v12

    sub-int v10, v12, v5

    .line 351
    .restart local v10    # "top":I
    goto/16 :goto_0

    .line 353
    .end local v10    # "top":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getHeight()I

    move-result v12

    sub-int/2addr v12, v5

    div-int/lit8 v10, v12, 0x2

    .line 354
    .restart local v10    # "top":I
    goto/16 :goto_0

    .line 359
    .restart local v2    # "bottom":I
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .restart local v7    # "left":I
    :cond_3
    move v8, v6

    .line 360
    goto/16 :goto_2

    .line 376
    .end local v2    # "bottom":I
    .end local v5    # "drawableHeight":I
    .end local v6    # "drawableWidth":I
    .end local v7    # "left":I
    .end local v10    # "top":I
    .end local v11    # "verticalGravity":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 404
    .restart local v4    # "drawAnimatedCheckbox":Z
    .restart local v9    # "saveCount":I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 348
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 303
    const-class v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 304
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 305
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 310
    const-class v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 312
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 313
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 516
    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;

    .line 518
    .local v0, "ss":Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 519
    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    .line 520
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->requestLayout()V

    .line 521
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 505
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setFreezesText(Z)V

    .line 506
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 508
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 510
    .local v0, "ss":Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;->checked:Z

    .line 511
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->toggle()V

    .line 165
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 256
    const-string v1, "TwCheckBox"

    const-string v2, "setButtonDrawable(int resourceId)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 261
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonBgHasBeenSet:Z

    if-eqz v0, :cond_0

    .line 277
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 281
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 288
    if-eqz p1, :cond_3

    .line 289
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 291
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 295
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setMinHeight(I)V

    .line 298
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 294
    goto :goto_0
.end method

.method setCheckAnimationEnabledInner(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    .line 525
    return-void
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 184
    const-string v0, "TwCheckBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked(1) checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheckBoxAnimationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, p1, v3, v3}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setCheckedInner(ZZZ)V

    .line 186
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 3
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 174
    const-string v0, "TwCheckBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked(2) checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", animate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheckBoxAnimationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setCheckedInner(ZZZ)V

    .line 176
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    .line 223
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    .line 234
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    .line 153
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willAnimate()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    return v0
.end method
