.class Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyCalendarViewDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;,
        Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;,
        Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field private static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayLabels:[Ljava/lang/String;

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsDeviceDefault:Z

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 15
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    const/4 v11, 0x2

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I

    const/16 v11, 0xc

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekMinVisibleHeight:I

    const/16 v11, 0x14

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mBottomBuffer:I

    const/4 v11, 0x7

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I

    const v11, 0x3d4ccccd    # 0.05f

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFriction:F

    const v11, 0x3eaa7efa    # 0.333f

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mVelocityScale:F

    const/4 v11, -0x1

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I

    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentScrollState:I

    new-instance v11, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/widget/CalendarView$1;)V

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "MM/dd/yyyy"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateFormat:Ljava/text/DateFormat;

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsDeviceDefault:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    sget-object v11, Lcom/android/internal/R$styleable;->Theme:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v10

    .local v10, "twAttributesArray":Landroid/content/res/TypedArray;
    const/16 v11, 0x144

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsDeviceDefault:Z

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v11, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v12

    iget-object v12, v12, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "minDate":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v9, v11}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    const-string v11, "01/01/1900"

    iget-object v12, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v11, v12}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    :cond_1
    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "maxDate":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v8, v11}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    const-string v11, "01/01/2100"

    iget-object v12, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v11, v12}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    :cond_3
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    iget-object v12, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Max date cannot be before min date."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    const/4 v11, 0x4

    const/4 v12, 0x6

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I

    const/16 v11, 0x9

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I

    const/16 v11, 0xa

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    const/16 v11, 0xc

    const v12, 0x1030046

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextAppearanceResId:I

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->updateDateTextSize()V

    const/16 v11, 0xb

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v11, 0x1

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekMinVisibleHeight:I

    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I

    const/4 v11, 0x1

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mBottomBuffer:I

    const/4 v11, 0x1

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const v11, 0x109003a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .local v5, "content":Landroid/view/View;
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11, v5}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    const v12, 0x102000a

    invoke-virtual {v11, v12}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    const v11, 0x102035b

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    const v11, 0x102035a

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpHeader()V

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpListView()V

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpAdapter()V

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v12, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    :goto_0
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11}, Landroid/widget/CalendarView;->invalidate()V

    return-void

    :cond_5
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    iget-object v12, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    :cond_6
    iget-object v11, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method static synthetic access$1102(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Ljava/util/Calendar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Ljava/util/Calendar;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextSize:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeperatorLineWidth:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/widget/AbsListView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/widget/AbsListView;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView$LegacyCalendarViewDelegate;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p0, "oldCalendar"    # Ljava/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .local v0, "currentTimeMillis":J
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 14
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const-wide/32 v12, 0x240c8400

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    .local v2, "endTimeMillis":J
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    .local v4, "startTimeMillis":J
    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    .local v0, "dayOffsetMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    add-long/2addr v0, v12

    :cond_1
    sub-long v6, v2, v4

    add-long/2addr v6, v0

    div-long/2addr v6, v12

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 9
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .prologue
    const/4 v8, 0x0

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time not between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .local v1, "firstFullyVisiblePosition":I
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, "lastFullyVisiblePosition":I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mBottomBuffer:I

    if-le v4, v5, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    if-eqz p3, :cond_4

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    .local v3, "position":I
    if-lt v3, v1, :cond_5

    if-gt v3, v2, :cond_5

    if-eqz p4, :cond_9

    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I

    if-eqz p2, :cond_8

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    goto :goto_0

    :cond_8
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v8}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_6

    invoke-direct {p0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_1
.end method

.method private invalidateAllWeekViews()V
    .locals 4

    .prologue
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private static isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "firstDate"    # Ljava/util/Calendar;
    .param p1, "secondDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .local v0, "child":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v2, v7

    .local v2, "currScroll":J
    iget-wide v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_6

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    :goto_1
    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_7

    const/4 v6, 0x1

    .local v6, "offset":I
    :goto_2
    iget-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_8

    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    check-cast v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .restart local v0    # "child":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_2
    :goto_3
    if-eqz v0, :cond_5

    iget-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    .local v4, "month":I
    :goto_4
    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_a

    const/4 v5, 0x1

    .local v5, "monthDiff":I
    :goto_5
    iget-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    if-nez v7, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    iget-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_5

    if-gez v5, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object v1

    .local v1, "firstDay":Ljava/util/Calendar;
    iget-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_c

    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    :goto_6
    invoke-direct {p0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    .end local v1    # "firstDay":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "monthDiff":I
    :cond_5
    iput-wide v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollPosition:J

    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentScrollState:I

    iput v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollState:I

    goto :goto_0

    .end local v6    # "offset":I
    :cond_6
    iget-wide v8, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mIsScrollingUp:Z

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .restart local v6    # "offset":I
    :cond_8
    if-eqz v6, :cond_2

    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    check-cast v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .restart local v0    # "child":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    .restart local v4    # "month":I
    goto :goto_4

    :cond_a
    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_b

    const/16 v7, 0xb

    if-ne v4, v7, :cond_b

    const/4 v5, -0x1

    .restart local v5    # "monthDiff":I
    goto :goto_5

    .end local v5    # "monthDiff":I
    :cond_b
    iget v7, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    .restart local v5    # "monthDiff":I
    goto :goto_5

    .restart local v1    # "firstDay":Ljava/util/Calendar;
    :cond_c
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_6
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/text/ParseException;
    # getter for: Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/CalendarView;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 8
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mCurrentMonthDisplayed:I

    invoke-virtual {v1, v4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->setFocusMonth(I)V

    const/16 v0, 0x34

    .local v0, "flags":I
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .local v2, "millis":J
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    .local v7, "newMonthName":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$1;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setUpHeader()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayLabels:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    .local v2, "i":I
    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I

    add-int v1, v4, v5

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    const/4 v4, 0x7

    if-le v2, v4, :cond_0

    add-int/lit8 v0, v2, -0x7

    .local v0, "calendarDay":I
    :goto_1
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayLabels:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "calendarDay":I
    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "label":Landroid/widget/TextView;
    iget-boolean v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const/4 v2, 0x1

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_5

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "label":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .restart local v3    # "label":Landroid/widget/TextView;
    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    iget v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private setUpListView()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$2;-><init>(Landroid/widget/CalendarView$LegacyCalendarViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    return-void
.end method

.method private updateDateTextSize()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextAppearanceResId:I

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "dateTextAppearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setDate(JZZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .locals 3
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDateTextAppearanceResId:I

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->updateDateTextSize()V

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFirstDayOfWeek:I

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->init()V
    invoke-static {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)V

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpHeader()V

    goto :goto_0
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    if-eq v3, p1, :cond_1

    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mFocusedMonthDateColor:I

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .local v2, "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasFocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->access$200(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)V

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setDate(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;)V

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setDate(J)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .prologue
    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    iget-object v1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_1

    iput-object p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .local v2, "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->access$100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I

    if-eq v3, p1, :cond_1

    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mSelectedWeekBackgroundColor:I

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .local v2, "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->access$100(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1
    .param p1, "showWeekNumber"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mAdapter:Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeeksAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpHeader()V

    goto :goto_0
.end method

.method public setShownWeekCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShownWeekCount:I

    iget-object v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    iget v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I

    if-eq v3, p1, :cond_1

    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mUnfocusedMonthDateColor:I

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;

    .local v2, "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    # getter for: Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->mHasUnfocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->access$300(Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$LegacyCalendarViewDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekDayTextAppearanceResId:I

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->setUpHeader()V

    :cond_0
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekNumberColor:I

    iget-boolean v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mShowWeekNumber:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget v0, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->mWeekSeparatorLineColor:I

    invoke-direct {p0}, Landroid/widget/CalendarView$LegacyCalendarViewDelegate;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method
