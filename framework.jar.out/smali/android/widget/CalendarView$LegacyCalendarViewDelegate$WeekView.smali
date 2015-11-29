.class Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
.super Landroid/view/View;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekView"
.end annotation


# instance fields
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Ljava/util/Calendar;

.field private mFocusDay:[Z

.field private mHasFocusedDay:Z

.field private mHasSelectedDay:Z

.field private mHasUnfocusedDay:Z

.field private mHeight:I

.field private mLastWeekDayMonth:I

.field private final mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private mMonthOfFirstWeekDay:I

.field private mNumCells:I

.field private mSelectedDay:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWeek:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 1835
    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .line 1836
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1783
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 1785
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 1787
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 1805
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthOfFirstWeekDay:I

    .line 1808
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mLastWeekDayMonth:I

    .line 1812
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWeek:I

    .line 1821
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    .line 1824
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedDay:I

    .line 1830
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    .line 1833
    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    .line 1839
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->initilaizePaints()V

    .line 1840
    return-void
.end method

.method static synthetic access$100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .prologue
    .line 1781
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .prologue
    .line 1781
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasFocusedDay:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .prologue
    .line 1781
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasUnfocusedDay:Z

    return v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 2030
    iget-boolean v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v2, :cond_0

    .line 2057
    :goto_0
    return-void

    .line 2033
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2035
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2036
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2038
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    .line 2040
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_1

    .line 2041
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 2042
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2047
    :goto_1
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2049
    if-eqz v0, :cond_4

    .line 2050
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2051
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    sub-int/2addr v1, v3

    :goto_2
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 2056
    :goto_3
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 2044
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v1, v3

    :cond_2
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 2045
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 2051
    :cond_3
    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    goto :goto_2

    .line 2053
    :cond_4
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2054
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2141
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    .line 2156
    :goto_0
    return-void

    .line 2144
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2149
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2150
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2155
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 2065
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    .line 2066
    .local v3, "textHeight":F
    iget v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v7}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v7

    sub-int v5, v6, v7

    .line 2067
    .local v5, "y":I
    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    .line 2068
    .local v2, "nDays":I
    mul-int/lit8 v0, v2, 0x2

    .line 2070
    .local v0, "divisor":I
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2071
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextSize:I
    invoke-static {v7}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2073
    const/4 v1, 0x0

    .line 2075
    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2076
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2077
    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFocusDay:[Z

    add-int/lit8 v8, v2, -0x1

    sub-int/2addr v8, v1

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v6

    :goto_1
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2079
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    mul-int/2addr v6, v7

    div-int v4, v6, v0

    .line 2080
    .local v4, "x":I
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    add-int/lit8 v7, v2, -0x1

    sub-int/2addr v7, v1

    aget-object v6, v6, v7

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2076
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2077
    .end local v4    # "x":I
    :cond_0
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v6

    goto :goto_1

    .line 2082
    :cond_1
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2083
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I
    invoke-static {v7}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2084
    iget v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    div-int/2addr v7, v0

    sub-int v4, v6, v7

    .line 2085
    .restart local v4    # "x":I
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v10

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2101
    .end local v4    # "x":I
    :cond_2
    return-void

    .line 2088
    :cond_3
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2089
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I
    invoke-static {v7}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2090
    iget v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    div-int v4, v6, v0

    .line 2091
    .restart local v4    # "x":I
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v10

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2092
    add-int/lit8 v1, v1, 0x1

    .line 2094
    .end local v4    # "x":I
    :cond_4
    :goto_2
    if-ge v1, v2, :cond_2

    .line 2095
    iget-object v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v6

    :goto_3
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2097
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    mul-int/2addr v6, v7

    div-int v4, v6, v0

    .line 2098
    .restart local v4    # "x":I
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v1

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2094
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2095
    .end local v4    # "x":I
    :cond_5
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v6

    goto :goto_3
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 2110
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    .line 2111
    .local v6, "firstFullyVisiblePosition":I
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_0

    .line 2112
    add-int/lit8 v6, v6, 0x1

    .line 2114
    :cond_0
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWeek:I

    if-ne v6, v0, :cond_1

    .line 2116
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2133
    :goto_0
    return-void

    .line 2121
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2122
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2125
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2126
    const/4 v1, 0x0

    .line 2127
    .local v1, "startX":F
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v4, v5

    sub-int/2addr v0, v4

    int-to-float v3, v0

    .line 2132
    .local v3, "stopX":F
    :goto_1
    iget-object v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2127
    .end local v3    # "stopX":F
    :cond_2
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    int-to-float v3, v0

    goto :goto_1

    .line 2129
    .end local v1    # "startX":F
    :cond_3
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v0, v4

    int-to-float v1, v0

    .line 2130
    .restart local v1    # "startX":F
    :goto_2
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    int-to-float v3, v0

    .restart local v3    # "stopX":F
    goto :goto_1

    .end local v1    # "startX":F
    .end local v3    # "stopX":F
    :cond_4
    move v1, v2

    .line 2129
    goto :goto_2
.end method

.method private initilaizePaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1932
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1933
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1934
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1936
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1937
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1938
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1939
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1940
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1943
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1945
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1948
    :cond_0
    return-void
.end method

.method private updateSelectionPositions()V
    .locals 5

    .prologue
    .line 2168
    iget-boolean v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    if-eqz v2, :cond_2

    .line 2169
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    .line 2170
    .local v0, "isLayoutRtl":Z
    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedDay:I

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    sub-int v1, v2, v3

    .line 2171
    .local v1, "selectedPosition":I
    if-gez v1, :cond_0

    .line 2172
    add-int/lit8 v1, v1, 0x7

    .line 2174
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 2175
    add-int/lit8 v1, v1, 0x1

    .line 2177
    :cond_1
    if-eqz v0, :cond_3

    .line 2178
    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    .line 2183
    :goto_0
    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedRight:I

    .line 2185
    .end local v0    # "isLayoutRtl":Z
    .end local v1    # "selectedPosition":I
    :cond_2
    return-void

    .line 2181
    .restart local v0    # "isLayoutRtl":Z
    .restart local v1    # "selectedPosition":I
    :cond_3
    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedLeft:I

    goto :goto_0
.end method


# virtual methods
.method public getDayFromLocation(FLjava/util/Calendar;)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "outCalendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x0

    .line 1985
    invoke-virtual {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->isLayoutRtl()Z

    move-result v2

    .line 1990
    .local v2, "isLayoutRtl":Z
    if-eqz v2, :cond_2

    .line 1991
    const/4 v3, 0x0

    .line 1992
    .local v3, "start":I
    iget-object v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v5}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 1998
    .local v1, "end":I
    :goto_0
    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_0

    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    .line 1999
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 2013
    :goto_1
    return v4

    .line 1992
    .end local v1    # "end":I
    :cond_1
    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    goto :goto_0

    .line 1994
    .end local v3    # "start":I
    :cond_2
    iget-object v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v5}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    iget v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    div-int v3, v5, v6

    .line 1995
    .restart local v3    # "start":I
    :goto_2
    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    .restart local v1    # "end":I
    goto :goto_0

    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_3
    move v3, v4

    .line 1994
    goto :goto_2

    .line 2004
    .restart local v1    # "end":I
    .restart local v3    # "start":I
    :cond_4
    int-to-float v4, v3

    sub-float v4, p1, v4

    iget-object v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I
    invoke-static {v5}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 2006
    .local v0, "dayPosition":I
    if-eqz v2, :cond_5

    .line 2007
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v0, v4, v0

    .line 2010
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2011
    const/4 v4, 0x5

    invoke-virtual {p2, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 2013
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .locals 1

    .prologue
    .line 1956
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .locals 1

    .prologue
    .line 1965
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .locals 11
    .param p1, "weekNumber"    # I
    .param p2, "selectedWeekDay"    # I
    .param p3, "focusedMonth"    # I

    .prologue
    .line 1854
    iput p2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedDay:I

    .line 1855
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mSelectedDay:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z

    .line 1856
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    iput v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    .line 1857
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWeek:I

    .line 1858
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1860
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x3

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWeek:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1861
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1864
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 1865
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    new-array v3, v3, [Z

    iput-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFocusDay:[Z

    .line 1868
    const/4 v1, 0x0

    .line 1869
    .local v1, "i":I
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1870
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1872
    add-int/lit8 v1, v1, 0x1

    .line 1876
    :cond_0
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v0, v3, v4

    .line 1877
    .local v0, "diff":I
    if-gez v0, :cond_7

    .line 1878
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1883
    :goto_2
    const-string v3, "Asia/Shanghai"

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "America/Sao_Paulo"

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "America/Santiago"

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1886
    :cond_1
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1890
    :cond_2
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1892
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1893
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1894
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1895
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1900
    :cond_3
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    iput-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    .line 1901
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mMonthOfFirstWeekDay:I

    .line 1903
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 1904
    :goto_3
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mNumCells:I

    if-ge v1, v3, :cond_b

    .line 1905
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_8

    const/4 v2, 0x1

    .line 1906
    .local v2, "isFocusedDay":Z
    :goto_4
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mFocusDay:[Z

    aput-boolean v2, v3, v1

    .line 1907
    iget-boolean v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasFocusedDay:Z

    or-int/2addr v3, v2

    iput-boolean v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasFocusedDay:Z

    .line 1908
    iget-boolean v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasUnfocusedDay:Z

    if-nez v2, :cond_9

    const/4 v3, 0x1

    :goto_5
    and-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 1910
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1911
    :cond_4
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v1

    .line 1916
    :goto_6
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1904
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1855
    .end local v0    # "diff":I
    .end local v1    # "i":I
    .end local v2    # "isFocusedDay":Z
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1856
    :cond_6
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v3

    goto/16 :goto_1

    .line 1880
    .restart local v0    # "diff":I
    .restart local v1    # "i":I
    :cond_7
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    add-int/lit8 v5, v0, -0x7

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_2

    .line 1905
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 1908
    .restart local v2    # "isFocusedDay":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    .line 1913
    :cond_a
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_6

    .line 1920
    .end local v2    # "isFocusedDay":Z
    :cond_b
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 1921
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1923
    :cond_c
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mLastWeekDayMonth:I

    .line 1925
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->updateSelectionPositions()V

    .line 1926
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2018
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 2019
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 2020
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 2021
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    .line 2022
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2189
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->this$0:Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->access$3400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    .line 2191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->setMeasuredDimension(II)V

    .line 2192
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2160
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mWidth:I

    .line 2161
    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->updateSelectionPositions()V

    .line 2162
    return-void
.end method
