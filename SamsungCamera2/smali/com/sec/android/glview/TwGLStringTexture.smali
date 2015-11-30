.class public Lcom/sec/android/glview/TwGLStringTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLStringTexture.java"


# static fields
.field private static final CHAR_ZERO_WIDTH_SPACE:C = '\u200b'

.field private static DEFAULT_LINE_SPACE:I = 0x0

.field private static DEFAULT_PADDING:I = 0x0

.field private static final DEFAULT_SHADOW_COLOR:I

.field private static final DEFAULT_SHADOW_OFFSET_X_DIP:F = 1.0f

.field private static final DEFAULT_SHADOW_OFFSET_Y_DIP:F = 1.0f

.field private static final DEFAULT_SHADOW_RADIUS_DIP:F = 1.0f

.field private static final DEFAULT_STROKE_COLOR:I

.field private static final DEFAULT_STROKE_WIDTH:F = 1.0f

.field private static final DEFAULT_TEXT_COLOR:I

.field private static NUM_OF_ELLIPSIS_CHARACTER:I


# instance fields
.field private mBold:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mHAlign:I

.field private mHeight:I

.field private mLineSpace:I

.field private mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadow:Z

.field private mShadowColor:I

.field private mShadowOffsetX:F

.field private mShadowOffsetY:F

.field private mShadowRadius:F

.field private mSize:F

.field private mStringHeight:I

.field private mStringWidth:I

.field private mStroke:Z

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mText:Ljava/lang/String;

.field private mVAlign:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7f090007

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    .line 46
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    .line 48
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    .line 60
    const v0, 0x7f090005

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_TEXT_COLOR:I

    .line 62
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_SHADOW_COLOR:I

    .line 64
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_STROKE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V
    .locals 4
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "hAlign"    # I
    .param p7, "vAlign"    # I
    .param p8, "text"    # Ljava/lang/String;
    .param p9, "textSize"    # F
    .param p10, "color"    # I
    .param p11, "shadow"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 79
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 82
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 85
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 88
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 91
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 94
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 97
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_TEXT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 99
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 102
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 106
    iput v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 109
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_SHADOW_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    .line 114
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    .line 115
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_STROKE_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    .line 117
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mLineSpace:I

    .line 170
    iput-object p8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 171
    iput p9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 172
    iput p10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 173
    iput-boolean p11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 175
    iput p6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 176
    iput p7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    .line 179
    cmpl-float v0, p9, v3

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p10}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 186
    float-to-int v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 187
    float-to-int v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 189
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 190
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 191
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSizeSpecified:Z

    .line 192
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLStringTexture;->init()V

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V
    .locals 4
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "textSize"    # F
    .param p6, "color"    # I
    .param p7, "shadow"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 79
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 82
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 85
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 88
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 91
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 94
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 97
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_TEXT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 99
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 102
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 106
    iput v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 109
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_SHADOW_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    .line 114
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    .line 115
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_STROKE_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    .line 117
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mLineSpace:I

    .line 132
    iput-object p4, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 133
    iput p5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 134
    iput p6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 135
    iput-boolean p7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    .line 138
    cmpl-float v0, p5, v3

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 144
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 145
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 147
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 148
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 149
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSizeSpecified:Z

    .line 150
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLStringTexture;->init()V

    .line 151
    return-void
.end method

.method private getBreakIndex(Ljava/lang/String;I)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "fieldWidth"    # I

    .prologue
    .line 824
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 825
    .local v0, "end":I
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 826
    .local v1, "stringWidth":I
    const/4 v2, 0x0

    .line 828
    .local v2, "subString":Ljava/lang/String;
    if-ge v1, p2, :cond_0

    .line 829
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 838
    :goto_0
    return v3

    .line 833
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 834
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 835
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 836
    if-gt v1, p2, :cond_0

    move v3, v0

    .line 838
    goto :goto_0
.end method

.method private getDynamicHeight()I
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 851
    const/4 v6, 0x0

    .line 852
    .local v6, "subString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 853
    .local v5, "stringLength":I
    const/4 v4, 0x0

    .line 854
    .local v4, "start":I
    const/4 v0, 0x0

    .line 855
    .local v0, "end":I
    const/4 v3, 0x1

    .line 856
    .local v3, "row":I
    const/4 v1, 0x0

    .line 857
    .local v1, "index":I
    const/4 v2, 0x0

    .line 861
    .local v2, "isDone":Z
    :cond_0
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v9, " "

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 863
    if-eq v0, v11, :cond_2

    .line 864
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 865
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v5, v8

    .line 873
    :goto_0
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 875
    if-eq v1, v11, :cond_3

    .line 876
    add-int/lit8 v3, v3, 0x1

    .line 877
    add-int/lit8 v8, v1, 0x1

    add-int/2addr v4, v8

    .line 903
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    .line 905
    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v8, v3

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mLineSpace:I

    add-int/lit8 v10, v3, -0x1

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    return v8

    .line 867
    :cond_2
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 868
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 869
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v5, v8

    goto :goto_0

    .line 878
    :cond_3
    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-le v5, v8, :cond_8

    .line 879
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v0, v8, :cond_6

    .line 880
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v9, " "

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 882
    if-eq v0, v11, :cond_4

    add-int/lit8 v8, v0, 0x1

    if-lt v4, v8, :cond_5

    .line 883
    :cond_4
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v8, v9}, Lcom/sec/android/glview/TwGLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v8

    add-int v0, v4, v8

    .line 884
    add-int/lit8 v0, v0, -0x1

    .line 898
    :cond_5
    :goto_2
    add-int/lit8 v4, v0, 0x1

    .line 899
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 887
    :cond_6
    move v7, v0

    .line 889
    .local v7, "tempEnd":I
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v9, " "

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 891
    if-eq v0, v11, :cond_7

    add-int/lit8 v8, v0, 0x1

    if-lt v4, v8, :cond_5

    .line 892
    :cond_7
    move v0, v7

    .line 893
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v8, v9}, Lcom/sec/android/glview/TwGLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v8

    add-int v0, v4, v8

    .line 894
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 900
    .end local v7    # "tempEnd":I
    :cond_8
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v0, v8, :cond_1

    .line 901
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private getIndexOfDelimiters(Ljava/lang/String;I)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v4, -0x1

    .line 754
    const/4 v0, -0x1

    .line 755
    .local v0, "end":I
    const-string v3, " "

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 756
    .local v1, "spaceIndex":I
    const/16 v3, 0x200b

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 758
    .local v2, "zeroWidthSpaceIndex":I
    if-ne v1, v4, :cond_0

    if-eq v2, v4, :cond_1

    .line 759
    :cond_0
    if-gt v1, v2, :cond_3

    .line 760
    if-ne v1, v4, :cond_2

    .line 761
    move v0, v2

    .line 771
    :cond_1
    :goto_0
    return v0

    .line 763
    :cond_2
    move v0, v1

    goto :goto_0

    .line 765
    :cond_3
    if-ne v2, v4, :cond_4

    .line 766
    move v0, v1

    goto :goto_0

    .line 768
    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private getLastIndexOfDelimiters(Ljava/lang/String;I)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v4, -0x1

    .line 775
    const/4 v0, -0x1

    .line 777
    .local v0, "end":I
    const-string v3, " "

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 778
    .local v1, "spaceIndex":I
    const/16 v3, 0x200b

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 780
    .local v2, "zeroWidthSpaceIndex":I
    if-ne v1, v4, :cond_0

    if-eq v2, v4, :cond_1

    .line 781
    :cond_0
    if-lt v1, v2, :cond_2

    .line 782
    if-eqz v1, :cond_1

    .line 783
    move v0, v1

    .line 789
    :cond_1
    :goto_0
    return v0

    .line 785
    :cond_2
    if-eqz v2, :cond_1

    .line 786
    move v0, v2

    goto :goto_0
.end method

.method private getNumOfNewLineChar(Ljava/lang/String;)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "numOfNewLine":I
    const/4 v1, 0x0

    .line 744
    .local v1, "start":I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 745
    if-eq v1, v4, :cond_1

    .line 746
    add-int/lit8 v0, v0, 0x1

    .line 747
    add-int/lit8 v1, v1, 0x1

    .line 749
    :cond_1
    if-ne v1, v4, :cond_0

    .line 750
    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    .line 198
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    .line 199
    return-void
.end method

.method private insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "fieldWidth"    # I

    .prologue
    .line 793
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    sub-int v1, v5, v6

    .line 794
    .local v1, "end":I
    const/4 v4, 0x0

    .line 795
    .local v4, "stringWidth":I
    const-string v0, ""

    .line 796
    .local v0, "concatString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 798
    .local v3, "resultString":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-lt v5, p2, :cond_0

    if-gez v1, :cond_1

    .line 816
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 802
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget v5, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    if-ge v2, v5, :cond_2

    .line 803
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 807
    :cond_2
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-lt v5, p2, :cond_3

    move-object p1, v0

    .line 808
    goto :goto_0

    .line 812
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 813
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 814
    add-int/lit8 v1, v1, -0x1

    .line 815
    if-lt p2, v4, :cond_3

    move-object p1, v3

    .line 816
    goto :goto_0
.end method

.method private wordBreak(I)Ljava/util/List;
    .locals 13
    .param p1, "availableRows"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v4, "resultStringArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 636
    .local v8, "subString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 637
    .local v7, "stringLength":I
    const/4 v6, 0x0

    .line 638
    .local v6, "start":I
    const/4 v0, 0x0

    .line 639
    .local v0, "end":I
    const/4 v5, 0x0

    .line 640
    .local v5, "row":I
    const/4 v1, 0x0

    .line 641
    .local v1, "index":I
    const/4 v2, 0x0

    .line 642
    .local v2, "isDone":Z
    const/4 v3, 0x0

    .line 645
    .local v3, "numOfNewLineChar":I
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/glview/TwGLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v3

    .line 646
    const/4 v6, 0x0

    .line 647
    add-int/lit8 v10, v3, 0x1

    if-ne p1, v10, :cond_2

    .line 649
    :cond_0
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/16 v11, 0xa

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 650
    const/4 v10, -0x1

    if-eq v0, v10, :cond_1

    .line 651
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    add-int/lit8 v6, v0, 0x1

    .line 654
    :cond_1
    const/4 v10, -0x1

    if-ne v0, v10, :cond_0

    .line 655
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :goto_0
    return-object v4

    .line 658
    :cond_2
    const/4 v6, 0x0

    .line 659
    const/4 v0, 0x0

    .line 663
    :cond_3
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, 0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 664
    const/4 v10, -0x1

    if-eq v0, v10, :cond_8

    .line 665
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 666
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 674
    :goto_1
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 675
    const/4 v10, -0x1

    if-eq v1, v10, :cond_4

    .line 676
    add-int v0, v6, v1

    .line 677
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 678
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 681
    :cond_4
    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-le v7, v10, :cond_11

    .line 682
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_c

    .line 683
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, -0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 684
    const/4 v10, -0x1

    if-eq v0, v10, :cond_5

    add-int/lit8 v10, v0, 0x1

    if-lt v6, v10, :cond_a

    .line 685
    :cond_5
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_9

    .line 686
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/glview/TwGLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v10

    add-int v0, v6, v10

    .line 687
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v0, v0, -0x1

    .line 725
    :cond_6
    :goto_2
    add-int/lit8 v6, v0, 0x1

    .line 726
    add-int/lit8 v5, v5, 0x1

    .line 735
    :cond_7
    :goto_3
    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 668
    :cond_8
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    .line 669
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 670
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    goto :goto_1

    .line 690
    :cond_9
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    const/4 v2, 0x1

    goto :goto_2

    .line 693
    :cond_a
    add-int/lit8 v10, v0, 0x1

    if-eq v6, v10, :cond_6

    .line 694
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_b

    .line 695
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 697
    :cond_b
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    const/4 v2, 0x1

    goto :goto_2

    .line 702
    :cond_c
    move v9, v0

    .line 703
    .local v9, "tempEnd":I
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, -0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 704
    const/4 v10, -0x1

    if-eq v0, v10, :cond_d

    add-int/lit8 v10, v0, 0x1

    if-lt v6, v10, :cond_f

    .line 705
    :cond_d
    move v0, v9

    .line 707
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_e

    .line 708
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/glview/TwGLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v10

    add-int v0, v6, v10

    .line 709
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 712
    :cond_e
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 716
    :cond_f
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_10

    .line 717
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 719
    :cond_10
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 727
    .end local v9    # "tempEnd":I
    :cond_11
    const/4 v10, -0x1

    if-eq v1, v10, :cond_12

    .line 728
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int v11, v6, v1

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    add-int/lit8 v10, v1, 0x1

    add-int/2addr v6, v10

    .line 730
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 731
    :cond_12
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_7

    .line 732
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    const/4 v2, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public getAvailableRows()I
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getStringHeight()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    return v0
.end method

.method public getStringWidth()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 218
    const/4 v6, 0x0

    .line 219
    .local v6, "top":I
    const/4 v2, 0x0

    .line 221
    .local v2, "left":F
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 222
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-boolean v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v9, :cond_0

    .line 224
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    iget v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    iget v13, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 227
    :cond_0
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 229
    const/4 v5, 0x0

    .line 231
    .local v5, "resultString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    if-lt v9, v10, :cond_1

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/sec/android/glview/TwGLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_a

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getAvailableRows()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/android/glview/TwGLStringTexture;->wordBreak(I)Ljava/util/List;

    move-result-object v5

    .line 234
    if-eqz v5, :cond_b

    .line 235
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    mul-int/2addr v9, v10

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v10, v11

    add-int v8, v9, v10

    .line 236
    .local v8, "totalStringHeight":I
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sub-int/2addr v9, v8

    div-int/lit8 v7, v9, 0x2

    .line 237
    .local v7, "topPadding":I
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    div-int v3, v9, v10

    .line 239
    .local v3, "lineSpace":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_b

    .line 240
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    packed-switch v9, :pswitch_data_0

    .line 266
    :goto_1
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    packed-switch v9, :pswitch_data_1

    .line 239
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :pswitch_0
    if-nez v1, :cond_2

    .line 243
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v9, v1

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v6, v9, v10

    goto :goto_1

    .line 245
    :cond_2
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v9, v1

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v11, v1, -0x1

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v6, v9, v10

    .line 247
    goto :goto_1

    .line 249
    :pswitch_1
    sget v9, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    if-le v3, v9, :cond_3

    .line 250
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v7

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    mul-int/2addr v10, v1

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v6, v9, v10

    goto :goto_1

    .line 252
    :cond_3
    add-int/lit8 v9, v1, 0x1

    mul-int/2addr v9, v3

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v10, v1

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v6, v9, v10

    .line 254
    goto :goto_1

    .line 256
    :pswitch_2
    if-nez v1, :cond_4

    .line 257
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v1

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v9, v10

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int v6, v9, v10

    goto :goto_1

    .line 259
    :cond_4
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v1

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v11, v1, -0x1

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v9, v10

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int v6, v9, v10

    .line 262
    goto :goto_1

    .line 268
    :pswitch_3
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 269
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v9, v10

    cmpg-float v9, v9, v14

    if-gez v9, :cond_6

    .line 270
    sget v9, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float v2, v9, v10

    .line 274
    :goto_3
    iget-boolean v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v9, :cond_5

    .line 275
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    .line 277
    .local v4, "originalStyle":Landroid/graphics/Paint$Style;
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    int-to-float v11, v6

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 280
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    .end local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_5
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    int-to-float v11, v6

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 272
    :cond_6
    sget v9, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v2, v9

    goto :goto_3

    .line 286
    :pswitch_4
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 287
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v2, v9

    .line 288
    iget-boolean v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v9, :cond_7

    .line 289
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    .line 291
    .restart local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 293
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    int-to-float v11, v6

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    .end local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_7
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    int-to-float v11, v6

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 300
    :pswitch_5
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 301
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v9, v10

    cmpl-float v9, v9, v14

    if-lez v9, :cond_9

    .line 302
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v10, v11

    sub-float v2, v9, v10

    .line 306
    :goto_4
    iget-boolean v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v9, :cond_8

    .line 307
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    .line 309
    .restart local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 311
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    int-to-float v11, v6

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    .end local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_8
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    int-to-float v11, v6

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 304
    :cond_9
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v9, v10

    int-to-float v2, v9

    goto :goto_4

    .line 323
    .end local v1    # "i":I
    .end local v3    # "lineSpace":I
    .end local v7    # "topPadding":I
    .end local v8    # "totalStringHeight":I
    :cond_a
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    packed-switch v9, :pswitch_data_2

    .line 337
    :goto_5
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    packed-switch v9, :pswitch_data_3

    .line 391
    :cond_b
    :goto_6
    return-object v0

    .line 325
    :pswitch_6
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v9, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v6, v9

    .line 326
    goto :goto_5

    .line 328
    :pswitch_7
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v10, v11

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v6, v9, v10

    .line 329
    goto :goto_5

    .line 331
    :pswitch_8
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v6, v9, v10

    .line 332
    goto :goto_5

    .line 339
    :pswitch_9
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 340
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v9, v10

    cmpg-float v9, v9, v14

    if-gez v9, :cond_d

    .line 341
    sget v9, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float v2, v9, v10

    .line 345
    :goto_7
    iget-boolean v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v9, :cond_c

    .line 346
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    .line 348
    .restart local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 350
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    int-to-float v11, v6

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 351
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 352
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    .end local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_c
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    int-to-float v11, v6

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 343
    :cond_d
    sget v9, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v2, v9

    goto :goto_7

    .line 357
    :pswitch_a
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 358
    iget-boolean v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v9, :cond_e

    .line 359
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    .line 361
    .restart local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 362
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 363
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    int-to-float v12, v6

    iget-object v13, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 364
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 365
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    .end local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_e
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    int-to-float v12, v6

    iget-object v13, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 370
    :pswitch_b
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 371
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v9, v10

    cmpl-float v9, v9, v14

    if-lez v9, :cond_10

    .line 372
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v10, v11

    sub-float v2, v9, v10

    .line 376
    :goto_8
    iget-boolean v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v9, :cond_f

    .line 377
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    .line 379
    .restart local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 381
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    int-to-float v11, v6

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 382
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    .end local v4    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_f
    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    int-to-float v11, v6

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 374
    :cond_10
    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v9, v10

    int-to-float v2, v9

    goto :goto_8

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 323
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 337
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setAlign(II)V
    .locals 0
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 609
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 610
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 612
    return-void
.end method

.method public setBold(Z)V
    .locals 0
    .param p1, "bold"    # Z

    .prologue
    .line 593
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 594
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 595
    return-void
.end method

.method public setBoldColor(ZI)V
    .locals 0
    .param p1, "bold"    # Z
    .param p2, "color"    # I

    .prologue
    .line 603
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 604
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 605
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 606
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 598
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 599
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 600
    return-void
.end method

.method public setDynamicHeight(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 842
    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 843
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getDynamicHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 845
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    int-to-float v0, v0

    invoke-super {p0, p1, v0}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 847
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 848
    return-void
.end method

.method public setFontSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 475
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 476
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 480
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 481
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 483
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 485
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 488
    return-void
.end method

.method public declared-synchronized setHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLTexture;->setHeight(F)V

    .line 411
    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 412
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLayout(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 422
    packed-switch p1, :pswitch_data_0

    .line 429
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 432
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 439
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 442
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 443
    return-void

    .line 426
    :pswitch_0
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    goto :goto_0

    .line 436
    :pswitch_1
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    goto :goto_1

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 432
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setLineSpace(I)V
    .locals 0
    .param p1, "linespace"    # I

    .prologue
    .line 820
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mLineSpace:I

    .line 821
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 518
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    if-eq v0, p1, :cond_0

    .line 519
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    .line 520
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 522
    :cond_0
    return-void
.end method

.method public setShadowLayer(ZFFFI)V
    .locals 2
    .param p1, "visibility"    # Z
    .param p2, "radius"    # F
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F
    .param p5, "color"    # I

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eq v1, p1, :cond_0

    .line 527
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 528
    const/4 v0, 0x1

    .line 530
    :cond_0
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    .line 531
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    .line 532
    const/4 v0, 0x1

    .line 534
    :cond_1
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    cmpl-float v1, v1, p3

    if-eqz v1, :cond_2

    .line 535
    iput p3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    .line 536
    const/4 v0, 0x1

    .line 538
    :cond_2
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_3

    .line 539
    iput p4, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    .line 540
    const/4 v0, 0x1

    .line 542
    :cond_3
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    if-eq v1, p5, :cond_4

    .line 543
    iput p5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    .line 544
    const/4 v0, 0x1

    .line 546
    :cond_4
    if-eqz v0, :cond_5

    .line 547
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 549
    :cond_5
    return-void
.end method

.method public setShadowOffset(FF)V
    .locals 2
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "result":Z
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 505
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    .line 506
    const/4 v0, 0x1

    .line 508
    :cond_0
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    .line 509
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    .line 510
    const/4 v0, 0x1

    .line 512
    :cond_1
    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 515
    :cond_2
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 496
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 497
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 500
    :cond_0
    return-void
.end method

.method public setShadowVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 491
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 493
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 395
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 396
    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 397
    float-to-int v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 398
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 399
    return-void
.end method

.method public setStroke(ZFI)V
    .locals 2
    .param p1, "visibility"    # Z
    .param p2, "width"    # F
    .param p3, "color"    # I

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eq v1, p1, :cond_0

    .line 576
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    .line 577
    const/4 v0, 0x1

    .line 579
    :cond_0
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    .line 580
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    .line 581
    const/4 v0, 0x1

    .line 583
    :cond_1
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    if-eq v1, p3, :cond_2

    .line 584
    iput p3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    .line 585
    const/4 v0, 0x1

    .line 587
    :cond_2
    if-eqz v0, :cond_3

    .line 588
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 590
    :cond_3
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 566
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 567
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 570
    :cond_0
    return-void
.end method

.method public setStrokeVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eq v0, p1, :cond_0

    .line 553
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 556
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 559
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 560
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    .line 561
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 563
    :cond_0
    return-void
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 448
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeGiven()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 450
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    int-to-float v1, v1

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "color"    # I

    .prologue
    .line 456
    iput-object p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 457
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 458
    iput p3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 460
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 464
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 465
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 469
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 472
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 616
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 617
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLTexture;->setWidth(F)V

    .line 404
    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 405
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
