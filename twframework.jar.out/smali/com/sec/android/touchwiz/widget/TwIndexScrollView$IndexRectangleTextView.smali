.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;
.super Landroid/view/View;
.source "TwIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexRectangleTextView"
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexRectangleTextView"


# instance fields
.field private final debug:Z

.field private mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndexRectHeight:I

.field private mIndexRectPos:Landroid/graphics/Rect;

.field private mIndexRectText:Ljava/lang/String;

.field private mIndexRectTextColor:I

.field private mIndexRectTextColorDimmed:I

.field private mIndexRectTextSize:I

.field private mIndexRectWidth:I

.field private mIndexRectXOffset:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRectViewTheme:I

.field private mRes:Landroid/content/res/Resources;

.field private mStartTextPositionX:F

.field private mStartTextPositionY:F

.field private mTextWidth:F

.field private m_bColorAll:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 2999
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 3000
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2903
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->debug:Z

    .line 2924
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    .line 3001
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->init(Landroid/content/Context;)V

    .line 3002
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 3009
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 3010
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2903
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->debug:Z

    .line 2924
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    .line 3011
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    .line 3012
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->init(Landroid/content/Context;)V

    .line 3013
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 3020
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 3021
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2903
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->debug:Z

    .line 2924
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    .line 3022
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->init(Landroid/content/Context;)V

    .line 3023
    return-void
.end method

.method private drawIndexRectTextLTR(Landroid/graphics/Canvas;FZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dimmedTextWidth"    # F
    .param p3, "bReshapingLanguage"    # Z

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 3315
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3317
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3319
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 3321
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3323
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 3324
    if-eqz p3, :cond_0

    .line 3326
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 3329
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 3330
    return-void
.end method

.method private drawIndexRectTextRTL(Landroid/graphics/Canvas;FZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dimmedTextWidth"    # F
    .param p3, "bReshapingLanguage"    # Z

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 3343
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3345
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3347
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 3349
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3351
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 3352
    if-eqz p3, :cond_0

    .line 3354
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 3357
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 3358
    return-void
.end method

.method private drawIndexRectangle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3301
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3302
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3032
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    .line 3034
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->setTheme(I)V

    .line 3037
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    if-nez v0, :cond_0

    .line 3038
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x20500c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    .line 3039
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x20500c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    .line 3045
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x2060009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize:I

    .line 3047
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->setIndexRectHeight()V

    .line 3048
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    .line 3050
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    .line 3053
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    .line 3054
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3055
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3056
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3057
    return-void

    .line 3041
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x20500cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    .line 3042
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x20500cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    goto :goto_0
.end method

.method private initIndexRectPos(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3119
    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->TABLET_KK:Z
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1900()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3120
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v5, 0x206002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectXOffset:I

    .line 3121
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 3122
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectXOffset:I

    sub-int v2, p1, v4

    .line 3123
    .local v2, "right":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    sub-int v1, v2, v4

    .line 3132
    .local v1, "left":I
    :goto_0
    div-int/lit8 v4, p2, 0x2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 3133
    .local v3, "top":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectHeight:I

    add-int v0, v3, v4

    .line 3134
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3135
    return-void

    .line 3125
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectXOffset:I

    .line 3126
    .restart local v1    # "left":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    add-int v2, v1, v4

    .restart local v2    # "right":I
    goto :goto_0

    .line 3129
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_1
    div-int/lit8 v4, p1, 0x2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 3130
    .restart local v1    # "left":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    add-int v2, v1, v4

    .restart local v2    # "right":I
    goto :goto_0
.end method

.method private setIndexRectHeight()V
    .locals 2

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x206002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectHeight:I

    .line 3106
    return-void
.end method

.method private setIndexRectWidth()V
    .locals 8

    .prologue
    const v7, 0x206002a

    .line 3067
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 3069
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 3071
    .local v1, "length":I
    packed-switch v1, :pswitch_data_0

    .line 3083
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 3085
    .local v2, "measureTextWidth":F
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v6, 0x206002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 3091
    .local v0, "charWidthPadding":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 3092
    .local v4, "twoLettersWidth":I
    float-to-int v5, v2

    add-int v3, v0, v5

    .line 3093
    .local v3, "moreThanTwoLettersWidth":I
    if-ge v3, v4, :cond_1

    .end local v4    # "twoLettersWidth":I
    :goto_0
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    .line 3098
    .end local v0    # "charWidthPadding":I
    .end local v1    # "length":I
    .end local v2    # "measureTextWidth":F
    .end local v3    # "moreThanTwoLettersWidth":I
    :cond_0
    :goto_1
    return-void

    .line 3074
    .restart local v1    # "length":I
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v6, 0x2060029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    goto :goto_1

    .line 3078
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    goto :goto_1

    .restart local v0    # "charWidthPadding":I
    .restart local v2    # "measureTextWidth":F
    .restart local v3    # "moreThanTwoLettersWidth":I
    .restart local v4    # "twoLettersWidth":I
    :cond_1
    move v4, v3

    .line 3093
    goto :goto_0

    .line 3071
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isColorAll()Z
    .locals 1

    .prologue
    .line 3192
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3205
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->getWidth()I

    move-result v20

    .line 3206
    .local v20, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->getHeight()I

    move-result v19

    .line 3209
    .local v19, "viewHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    move/from16 v0, v20

    if-le v3, v0, :cond_1

    .line 3292
    :cond_0
    :goto_0
    return-void

    .line 3210
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3213
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->initIndexRectPos(II)V

    .line 3215
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->drawIndexRectangle(Landroid/graphics/Canvas;)V

    .line 3222
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 3224
    .local v11, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v4, v5, v6, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3225
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v12, v3

    .line 3227
    .local v12, "dimmedColorTextWidth":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3228
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v15, v3

    .line 3231
    .local v15, "lastColorTextWidth":F
    add-float v3, v12, v15

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    .line 3233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3234
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v14, v3

    .line 3236
    .local v14, "fullLen":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    cmpg-float v3, v14, v3

    if-gez v3, :cond_2

    .line 3238
    const/4 v10, 0x1

    .line 3239
    .local v10, "bReshapingLanguage":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    .line 3250
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    .line 3251
    .local v16, "rectCenterX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    .line 3252
    .local v17, "rectCenterY":I
    new-instance v13, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v13}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 3253
    .local v13, "fm":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 3255
    move/from16 v0, v17

    int-to-float v3, v0

    iget v4, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v5, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v5

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    .line 3258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    if-nez v3, :cond_4

    .line 3262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    # invokes: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->isTextRTL(Ljava/lang/CharSequence;)Z
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->drawIndexRectTextRTL(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_0

    .line 3243
    .end local v10    # "bReshapingLanguage":Z
    .end local v13    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v16    # "rectCenterX":I
    .end local v17    # "rectCenterY":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v12

    .line 3244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v15

    .line 3245
    add-float v3, v12, v15

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    .line 3246
    const/4 v10, 0x0

    .restart local v10    # "bReshapingLanguage":Z
    goto/16 :goto_1

    .line 3267
    .restart local v13    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v16    # "rectCenterX":I
    .restart local v17    # "rectCenterY":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->drawIndexRectTextLTR(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_0

    .line 3273
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 3279
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2060009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 3281
    .local v18, "scaledPx":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v18, v18, v4

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0xa

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 3284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 3285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2060009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0

    .line 3288
    .end local v18    # "scaledPx":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setColorAll(Z)V
    .locals 0
    .param p1, "bColorAll"    # Z

    .prologue
    .line 3183
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    .line 3184
    return-void
.end method

.method public setIndexRectText(Ljava/lang/String;)V
    .locals 0
    .param p1, "indexRectText"    # Ljava/lang/String;

    .prologue
    .line 3172
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    .line 3174
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->setIndexRectWidth()V

    .line 3175
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 3144
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    if-eq v0, p1, :cond_0

    .line 3145
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    .line 3148
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    if-nez v0, :cond_2

    .line 3149
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x202021f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 3150
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x20500c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    .line 3151
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x20500c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    .line 3160
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mEnableCustomTheme:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3161
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 3163
    :cond_1
    return-void

    .line 3154
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x20202b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 3155
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x20500cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    .line 3156
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    const v1, 0x20500cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    goto :goto_0

    .line 3161
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
