.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "TwIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final FIRST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final LAST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field public static final NO_SELECTED_DOT_INDEX:I = -0x1

.field public static final NO_SELECTED_INDEX:I = -0x1

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexScroll"


# instance fields
.field private FLOAT_DIV_MULT_ERROR:F

.field private final debug:Z

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetArrayWithDots:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mAlphabetWithDotsSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mDepth:I

.field private mDotRepresentations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

.field private mHandleTextColorPressed:I

.field private mHandleTextColorPressed2ndAct:I

.field private mHeight:I

.field private mIndexScrollViewTheme:I

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

.field private mMaxDepth:I

.field private mMinSeparatorHeight:F

.field private mOrigSelectedDotIndex:I

.field private mOrigSelectedIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mScreenHeight:I

.field private mScrollTop:I

.field private mSelectedIndex:I

.field private mSelectedIndexPositionInOrigAlphabet:[I

.field private mSeparatorColor:I

.field private mSeparatorHeight:F

.field private mSeparatorLeftPos:I

.field private mSeparatorWidth:I

.field private mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColorDimmed:I

.field private mTextSize:I

.field private mWidth:I

.field private mWidthShift:I

.field private m_bAlphabetArrayWithDotsUsed:Z

.field private m_bIsAlphabetInit:Z

.field private m_bSubIndexScrollExists:Z

.field private mbSetDimensionns:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;II)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1517
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->debug:Z

    .line 1402
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1409
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1418
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1426
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1436
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1442
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1447
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1471
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    .line 1472
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1475
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1476
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 1482
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1488
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1497
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1498
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1504
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1518
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    .line 1519
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    .line 1520
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1521
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    .line 1522
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1523
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1524
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1525
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1526
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1527
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1528
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->init()V

    .line 1529
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;IIII)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I
    .param p5, "position"    # I
    .param p6, "theme"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1541
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->debug:Z

    .line 1402
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1409
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1418
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1426
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1436
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1442
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1447
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1471
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    .line 1472
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1475
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1476
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 1482
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1488
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1497
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1498
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1504
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1542
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    .line 1543
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    .line 1544
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    .line 1545
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1547
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1548
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    .line 1549
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1550
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1551
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1552
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1553
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1554
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1555
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDensity:F

    .line 1556
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->init()V

    .line 1558
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I
    .param p4, "position"    # I
    .param p5, "alphabetArray"    # [Ljava/lang/String;
    .param p6, "scrollTop"    # I
    .param p7, "screenHeight"    # I
    .param p8, "height"    # I
    .param p9, "width"    # I
    .param p10, "widthShift"    # I
    .param p11, "maxDepth"    # I
    .param p12, "depth"    # I

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->debug:Z

    .line 1402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1409
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1418
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1436
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1442
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1447
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1471
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    .line 1472
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 1482
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1488
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1579
    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 1580
    iput p8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    .line 1581
    iput p9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    .line 1582
    iput p10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1583
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1584
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    .line 1585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1586
    iput p11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1587
    iput p12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    .line 1588
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1590
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1591
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1592
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->init()V

    .line 1593
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p5, v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 1594
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->initAlphabetArrayWithDotsIfRequired()V

    .line 1595
    return-void
.end method

.method private adjustSeparatorHeightIfRequired()V
    .locals 3

    .prologue
    .line 1891
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 1893
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 1894
    .local v0, "numberOfCharacters":I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1896
    .end local v0    # "numberOfCharacters":I
    :cond_0
    return-void
.end method

.method private allocateBgRectangle()V
    .locals 6

    .prologue
    .line 2698
    const/4 v0, 0x0

    .line 2699
    .local v0, "left":I
    const/4 v1, 0x0

    .line 2701
    .local v1, "right":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2703
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v1, v2, v3

    .line 2704
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v0, v1, v2

    .line 2709
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v4, v5

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    .line 2710
    return-void

    .line 2706
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v1, v2, v3

    .line 2707
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    goto :goto_0
.end method

.method private calculateShift(III)I
    .locals 5
    .param p1, "lastIndexShift"    # I
    .param p2, "origFirstDotLocation"    # I
    .param p3, "origLastDotLocation"    # I

    .prologue
    .line 2106
    const/4 v0, 0x0

    .line 2107
    .local v0, "calculatedShift":I
    move v2, p2

    .line 2108
    .local v2, "upperGap":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v3, v3, -0x1

    sub-int v1, v3, p3

    .line 2111
    .local v1, "lowerGap":I
    sub-int v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2114
    if-le v1, v2, :cond_1

    .line 2117
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v4, p1

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2126
    :cond_0
    :goto_0
    return v0

    .line 2123
    :cond_1
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2799
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2800
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2802
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 2804
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    aget-object v1, v5, v0

    .line 2805
    .local v1, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2806
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2807
    .local v4, "width":F
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v4

    sub-float v2, v5, v6

    .line 2808
    .local v2, "textPosX":F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v6, v6

    int-to-double v8, v0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    float-to-double v8, v8

    sub-double/2addr v6, v8

    double-to-float v6, v6

    add-float v3, v5, v6

    .line 2811
    .local v3, "textPosY":F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ne v0, v5, :cond_1

    .line 2813
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDepth()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 2814
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2818
    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2819
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2821
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2822
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2802
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2816
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 2825
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 2828
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "textPosX":F
    .end local v3    # "textPosY":F
    .end local v4    # "width":F
    :cond_2
    return-void
.end method

.method private drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 2719
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    .line 2721
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 2722
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 2725
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_1

    .line 2727
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2733
    :goto_0
    return-void

    .line 2728
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_2

    .line 2729
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2731
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSelectedIndexRect(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 2837
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_1

    .line 2851
    :cond_0
    :goto_0
    return-void

    .line 2842
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2843
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2845
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2847
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2849
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSeparators(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 2774
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2776
    const/4 v6, 0x1

    .local v6, "index":I
    :goto_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ge v6, v0, :cond_2

    .line 2779
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-eq v6, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v6, v0, :cond_1

    .line 2776
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2784
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDensity:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 2789
    :cond_2
    return-void
.end method

.method private getDotIndexByY(I)Ljava/lang/String;
    .locals 14
    .param p1, "y"    # I

    .prologue
    .line 2463
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    if-ge v7, v6, :cond_0

    .line 2467
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    aget-object v6, v6, v7

    .line 2502
    :goto_0
    return-object v6

    .line 2470
    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v4, v6

    .line 2474
    .local v4, "numberOfElements":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 2476
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->MANY_ELEMENT_LOGIC:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v7

    # setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollLogic:I
    invoke-static {v6, v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)I

    .line 2477
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-double v6, v6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v5, v6

    .line 2478
    .local v5, "selectedIndexTop":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v1, v6, v7

    .line 2487
    .local v1, "generalHeight":F
    :goto_1
    int-to-float v6, p1

    int-to-float v7, v5

    sub-float v3, v6, v7

    .line 2488
    .local v3, "internalHeight":F
    int-to-float v6, v4

    mul-float/2addr v6, v3

    div-float v0, v6, v1

    .line 2489
    .local v0, "floatIndex":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 2492
    .local v2, "index":I
    if-lt v2, v4, :cond_3

    .line 2494
    add-int/lit8 v2, v4, -0x1

    .line 2500
    :cond_1
    :goto_2
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2501
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2502
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v2

    goto :goto_0

    .line 2482
    .end local v0    # "floatIndex":F
    .end local v1    # "generalHeight":F
    .end local v2    # "index":I
    .end local v3    # "internalHeight":F
    .end local v5    # "selectedIndexTop":I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FEW_ELEMENT_LOGIC:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v7

    # setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollLogic:I
    invoke-static {v6, v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)I

    .line 2483
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 2484
    .restart local v5    # "selectedIndexTop":I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .restart local v1    # "generalHeight":F
    goto :goto_1

    .line 2496
    .restart local v0    # "floatIndex":F
    .restart local v2    # "index":I
    .restart local v3    # "internalHeight":F
    :cond_3
    if-gez v2, :cond_1

    .line 2498
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_3

    .line 2410
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2426
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2428
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2431
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2433
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-nez v0, :cond_5

    .line 2435
    const-string v0, ""

    .line 2444
    :goto_1
    return-object v0

    .line 2412
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_4

    .line 2414
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    .line 2418
    :cond_4
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2419
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v1, :cond_0

    .line 2421
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    .line 2439
    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    goto :goto_1

    .line 2444
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private init()V
    .locals 4

    .prologue
    const v3, 0x206000d

    .line 1838
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1839
    .local v0, "rsrc":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    .line 1840
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1841
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1843
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidth:I

    .line 1844
    const v1, 0x2060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidthGap:I

    .line 1846
    const v1, 0x206000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextSize:I

    .line 1847
    const v1, 0x2060027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    .line 1848
    const v1, 0x2060028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorWidth:I

    .line 1849
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 1850
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    .line 1852
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 1854
    return-void
.end method

.method private initAlphabetArrayWithDotsIfRequired()V
    .locals 24

    .prologue
    .line 1908
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 2091
    :goto_0
    return-void

    .line 1912
    :cond_0
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    .line 1914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    move/from16 v23, v0

    add-float v22, v22, v23

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_1

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 1917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto :goto_0

    .line 1923
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v5, v0

    .line 1924
    .local v5, "alphabetWithDotsSizeCandidate":I
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ge v5, v0, :cond_2

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 1927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto :goto_0

    .line 1930
    :cond_2
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1931
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    .line 1932
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    .line 1934
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    .line 1936
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v22, v0

    sub-int v15, v21, v22

    .line 1938
    .local v15, "numberOfMissingElements":I
    int-to-double v0, v15

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v12, v21, 0x1

    .line 1943
    .local v12, "numberOfDots":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1945
    const/4 v11, 0x1

    .line 1955
    .local v11, "lastIndexShift":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int v21, v21, v12

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_3

    .line 1957
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int/lit8 v12, v21, 0x2

    .line 1967
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int v21, v21, v12

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 1969
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int/lit8 v12, v21, 0x3

    .line 1972
    if-nez v12, :cond_4

    .line 1973
    const/4 v12, 0x1

    .line 1981
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 1985
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x2

    div-int v12, v21, v22

    .line 1988
    :cond_5
    move/from16 v16, v12

    .line 1992
    .local v16, "numberOfRemainingDots":I
    add-int v21, v15, v12

    div-int v21, v21, v12

    add-int/lit8 v13, v21, 0x1

    .line 1999
    .local v13, "numberOfElementsRepresentedByEachDot":I
    :goto_2
    add-int/lit8 v21, v13, -0x1

    mul-int v21, v21, v12

    add-int v22, v15, v12

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    .line 2001
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 1949
    .end local v11    # "lastIndexShift":I
    .end local v13    # "numberOfElementsRepresentedByEachDot":I
    .end local v16    # "numberOfRemainingDots":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v11, v21, 0x1

    .restart local v11    # "lastIndexShift":I
    goto/16 :goto_1

    .line 2003
    .restart local v13    # "numberOfElementsRepresentedByEachDot":I
    .restart local v16    # "numberOfRemainingDots":I
    :cond_7
    const/4 v9, 0x0

    .line 2004
    .local v9, "index":I
    const/4 v4, 0x0

    .line 2010
    .local v4, "alphabetIndex":I
    add-int v21, v15, v12

    rem-int v14, v21, v13

    .line 2012
    .local v14, "numberOfElementsRepresentedByLastDot":I
    const/4 v6, 0x0

    .line 2014
    .local v6, "bPerfectDotsSpreadingExists":Z
    const/4 v10, 0x0

    .line 2018
    .local v10, "indexShift":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_c

    .line 2020
    add-int/lit8 v21, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v6

    .line 2021
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    div-int v7, v21, v12

    .line 2030
    .local v7, "distanceBetweenConsecutiveDots":I
    :goto_3
    const/16 v17, 0x0

    .line 2031
    .local v17, "origFirstDotLocation":I
    const/16 v18, 0x0

    .line 2032
    .local v18, "origLastDotLocation":I
    if-nez v6, :cond_8

    .line 2034
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int v7, v21, v12

    .line 2035
    add-int/lit8 v17, v7, -0x1

    .line 2036
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_d

    add-int/lit8 v21, v12, -0x1

    mul-int v21, v21, v7

    add-int/lit8 v18, v21, -0x1

    .line 2037
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->calculateShift(III)I

    move-result v10

    .line 2040
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_11

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    move-object/from16 v21, v0

    aput v4, v21, v9

    .line 2046
    if-eqz v6, :cond_9

    add-int/lit8 v21, v9, 0x1

    rem-int v21, v21, v7

    if-gtz v21, :cond_b

    :cond_9
    if-nez v6, :cond_e

    if-lez v10, :cond_a

    move/from16 v0, v17

    if-le v9, v0, :cond_b

    :cond_a
    add-int/lit8 v21, v9, 0x1

    sub-int v21, v21, v10

    rem-int v21, v21, v7

    if-gtz v21, :cond_b

    if-eqz v16, :cond_b

    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_e

    .line 2057
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v4

    aput-object v22, v21, v9

    .line 2058
    add-int/lit8 v4, v4, 0x1

    .line 2085
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2026
    .end local v7    # "distanceBetweenConsecutiveDots":I
    .end local v17    # "origFirstDotLocation":I
    .end local v18    # "origLastDotLocation":I
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v6

    .line 2027
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v22, v12, 0x1

    div-int v7, v21, v22

    .restart local v7    # "distanceBetweenConsecutiveDots":I
    goto/16 :goto_3

    .line 2036
    .restart local v17    # "origFirstDotLocation":I
    .restart local v18    # "origLastDotLocation":I
    :cond_d
    mul-int v21, v7, v12

    add-int/lit8 v18, v21, -0x1

    goto :goto_4

    .line 2062
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "."

    aput-object v22, v21, v9

    .line 2063
    move/from16 v19, v4

    .line 2065
    .local v19, "prevAlphabetIndex":I
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 2067
    add-int/2addr v4, v13

    .line 2077
    :goto_7
    sub-int v21, v4, v19

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2078
    .local v20, "tempDotAlphaBet":[Ljava/lang/String;
    move/from16 v8, v19

    .local v8, "i":I
    :goto_8
    if-ge v8, v4, :cond_10

    .line 2079
    sub-int v21, v8, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    aput-object v22, v20, v21

    .line 2078
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 2073
    .end local v8    # "i":I
    .end local v20    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    sub-int v22, v22, v9

    sub-int v4, v21, v22

    goto :goto_7

    .line 2081
    .restart local v8    # "i":I
    .restart local v20    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    .line 2088
    .end local v8    # "i":I
    .end local v19    # "prevAlphabetIndex":I
    .end local v20    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_11
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto/16 :goto_0
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 8
    .param p1, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2534
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 2545
    :cond_1
    :goto_0
    return v0

    .line 2538
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollLogic:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FEW_ELEMENT_LOGIC:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2540
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-le p1, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 2545
    :cond_4
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    if-lt p1, v2, :cond_5

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    if-le p1, v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private isInSelectedIndexVerticalRange(I)Z
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 2523
    const/4 v0, 0x1

    return v0
.end method

.method private isSelectedIndexDot(I)Z
    .locals 3
    .param p1, "mSelectedIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 2393
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private perfectDotsSpreadingExists(II)Z
    .locals 4
    .param p1, "numberOfDots"    # I
    .param p2, "lastIndexShift"    # I

    .prologue
    const/4 v1, 0x0

    .line 2140
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v2, v3

    if-lez v2, :cond_1

    .line 2148
    :cond_0
    :goto_0
    return v1

    .line 2144
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    div-int v0, v2, v3

    .line 2148
    .local v0, "dotsGap":I
    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v3, p2

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setBgRectParams()V
    .locals 6

    .prologue
    .line 2742
    const/4 v0, 0x0

    .line 2743
    .local v0, "left":I
    const/4 v1, 0x0

    .line 2745
    .local v1, "right":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2747
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v1, v2, v3

    .line 2748
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v0, v1, v2

    .line 2756
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v4, v5

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    .line 2757
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2759
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 2760
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2762
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 2763
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2764
    :cond_1
    return-void

    .line 2752
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v1, v2, v3

    .line 2753
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    goto :goto_0
.end method


# virtual methods
.method public addSubIndex([Ljava/lang/String;)V
    .locals 14
    .param p1, "alphabetArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2160
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2165
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMaxDepth:I

    if-eq v0, v1, :cond_0

    .line 2170
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 2175
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-ne v0, v2, :cond_2

    .line 2177
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    goto :goto_0

    .line 2182
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2187
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2188
    array-length v13, p1

    .line 2191
    .local v13, "alphabetSize":I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v1, v13

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2198
    .local v8, "height":I
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v10

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScreenHeight:I

    sub-int/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2200
    .local v6, "scrollTop":I
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidth:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMaxDepth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    add-int/lit8 v12, v5, 0x1

    move-object v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2665
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    .line 2672
    :cond_0
    :goto_0
    return-void

    .line 2669
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    .line 2670
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    .line 2671
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2682
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    .line 2683
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2685
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->drawSelectedIndexRect(Landroid/graphics/Canvas;)V

    .line 2687
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->drawSeparators(Landroid/graphics/Canvas;)V

    .line 2688
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    .line 2689
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 1665
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 1667
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    .line 1671
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1734
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    return v0
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 2292
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 2293
    const-string v3, ""

    .line 2382
    :cond_0
    :goto_0
    return-object v3

    .line 2295
    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v4, :cond_2

    .line 2297
    const-string v3, ""

    goto :goto_0

    .line 2299
    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt p1, v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le p1, v4, :cond_5

    .line 2301
    :cond_4
    const-string v3, ""

    goto :goto_0

    .line 2303
    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt p1, v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt p1, v4, :cond_a

    .line 2306
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_9

    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2308
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2310
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_7

    .line 2311
    :cond_6
    const-string v3, ""

    goto :goto_0

    .line 2313
    :cond_7
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    goto :goto_0

    .line 2316
    :cond_8
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2320
    :cond_9
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2326
    :cond_a
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v4, :cond_11

    .line 2328
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMaxDepth:I

    if-ge v4, v5, :cond_c

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    if-nez v4, :cond_b

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    :cond_b
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v7, :cond_c

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidth:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_0

    .line 2337
    :cond_c
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_10

    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2339
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2341
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v3, :cond_d

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_e

    .line 2342
    :cond_d
    const-string v3, ""

    goto/16 :goto_0

    .line 2344
    :cond_e
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    goto/16 :goto_0

    .line 2347
    :cond_f
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 2351
    :cond_10
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 2359
    :cond_11
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    .line 2360
    const-string v0, ""

    .line 2378
    .local v0, "currentSubIndexString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v2

    .line 2379
    .local v2, "nextSubIndexStrings":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 2363
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    .end local v2    # "nextSubIndexStrings":Ljava/lang/String;
    :cond_12
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 2366
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v4, :cond_13

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v4, :cond_13

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_14

    .line 2367
    :cond_13
    const-string v3, ""

    goto/16 :goto_0

    .line 2369
    :cond_14
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_1

    .line 2370
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2371
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, ""

    .line 2372
    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_1

    .line 2374
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_15
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_1
.end method

.method public getItemHeight()F
    .locals 1

    .prologue
    .line 1725
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemHeight:F

    return v0
.end method

.method public getItemPlusSpaceWidth()I
    .locals 2

    .prologue
    .line 1646
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidth:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    .prologue
    .line 1655
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidth:I

    return v0
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDepth()I
    .locals 1

    .prologue
    .line 1615
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMaxDepth:I

    return v0
.end method

.method public getNumberOfSmallerOrEqualIndexes(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 1635
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    if-nez v1, :cond_0

    move v0, p1

    .line 1636
    .local v0, "xCord":I
    :goto_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidth:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v1, v2

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 1635
    .end local v0    # "xCord":I
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    sub-int v0, v1, p1

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1682
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1698
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-nez v1, :cond_1

    .line 1700
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1713
    :cond_0
    :goto_0
    return v0

    .line 1704
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1707
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    if-eq v1, v0, :cond_2

    .line 1709
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1713
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public hasSubIndex()Z
    .locals 1

    .prologue
    .line 2260
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    .prologue
    .line 1604
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    return v0
.end method

.method public removeAllSubIndexes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2234
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 2251
    :goto_0
    return-void

    .line 2236
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2238
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2239
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2240
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2241
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    goto :goto_0

    .line 2245
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 2246
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2247
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2248
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2249
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public removeSubIndex()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2211
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 2226
    :goto_0
    return-void

    .line 2215
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2217
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2218
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    goto :goto_0

    .line 2224
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->removeSubIndex()V

    goto :goto_0
.end method

.method public resetSelectedIndex()V
    .locals 1

    .prologue
    .line 2654
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2655
    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 3
    .param p1, "alphabetArray"    # [Ljava/lang/String;
    .param p2, "alphabetArrayFirstLetterIndex"    # I
    .param p3, "alphabetArrayLastLetterIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 1866
    if-nez p1, :cond_0

    .line 1882
    :goto_0
    return-void

    .line 1870
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1871
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    .line 1872
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1873
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1877
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemHeight:F

    .line 1878
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1880
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1881
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    goto :goto_0
.end method

.method public setDefaultIndexScrollWidth()V
    .locals 3

    .prologue
    const v2, 0x206000d

    .line 1760
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1761
    .local v0, "rsrc":Landroid/content/res/Resources;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidth:I

    .line 1762
    const v1, 0x2060028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorWidth:I

    .line 1763
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 1764
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 1765
    return-void
.end method

.method public setDimensionns(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1811
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    .line 1829
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    if-eqz v0, :cond_0

    .line 1820
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    .line 1821
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    .line 1822
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    .line 1823
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 1824
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemHeight:F

    .line 1825
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1826
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->adjustSeparatorHeightIfRequired()V

    .line 1827
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 1828
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->initAlphabetArrayWithDotsIfRequired()V

    goto :goto_0
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 5
    .param p1, "theme"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2557
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v1, :cond_0

    .line 2646
    :goto_0
    return-void

    .line 2562
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 2563
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2566
    .local v0, "rsrc":Landroid/content/res/Resources;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    if-nez v1, :cond_4

    .line 2568
    const v1, 0x20500c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorColor:I

    .line 2570
    const v1, 0x20500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 2571
    const v1, 0x20500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    .line 2572
    const v1, 0x20500c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    .line 2574
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    if-ne v1, v2, :cond_3

    .line 2576
    const v1, 0x2020239

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2577
    const v1, 0x2020227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 2578
    const v1, 0x2020237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 2580
    const v1, 0x2020225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2581
    const v1, 0x2020235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2592
    :goto_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v2, :cond_1

    .line 2594
    const v1, 0x202022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2631
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mEnableCustomTheme:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2632
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2633
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 2634
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmSeparatorColor:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v1

    if-eq v1, v4, :cond_8

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmSeparatorColor:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v1

    :goto_5
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorColor:I

    .line 2635
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmTextColorDimmed:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v1

    if-eq v1, v4, :cond_9

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmTextColorDimmed:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v1

    :goto_6
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 2636
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2637
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2639
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v2, :cond_2

    .line 2641
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2645
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setBgRectParams()V

    goto/16 :goto_0

    .line 2585
    :cond_3
    const v1, 0x2020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2586
    const v1, 0x2020223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 2587
    const v1, 0x202022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 2589
    const v1, 0x2020221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2590
    const v1, 0x202022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 2601
    :cond_4
    const v1, 0x20500d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorColor:I

    .line 2602
    const v1, 0x20500cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 2603
    const v1, 0x20500ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    .line 2604
    const v1, 0x20500d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    .line 2606
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    if-ne v1, v2, :cond_5

    .line 2608
    const v1, 0x20202bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2609
    const v1, 0x20202b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 2610
    const v1, 0x20202ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 2612
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2613
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2624
    :goto_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v2, :cond_1

    .line 2626
    const v1, 0x202022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 2617
    :cond_5
    const v1, 0x2020232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2618
    const v1, 0x2020224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 2619
    const v1, 0x2020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 2621
    const v1, 0x2020222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2622
    const v1, 0x202022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    goto :goto_8

    .line 2632
    :cond_6
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 2633
    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 2634
    :cond_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorColor:I

    goto/16 :goto_5

    .line 2635
    :cond_9
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mTextColorDimmed:I

    goto/16 :goto_6

    .line 2641
    :cond_a
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7
.end method

.method public setMaxDepth(I)V
    .locals 0
    .param p1, "maxDepth"    # I

    .prologue
    .line 1774
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1775
    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1784
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    .line 1801
    :goto_0
    return-void

    .line 1789
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    .line 1790
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    .line 1791
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1793
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1799
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setBgRectParams()V

    goto :goto_0

    .line 1797
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mWidthShift:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    goto :goto_1
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0
    .param p1, "itemWidth"    # I

    .prologue
    .line 1746
    if-gtz p1, :cond_0

    .line 1753
    :goto_0
    return-void

    .line 1749
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mItemWidth:I

    .line 1750
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mSeparatorWidth:I

    .line 1751
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 1752
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->allocateBgRectangle()V

    goto :goto_0
.end method
