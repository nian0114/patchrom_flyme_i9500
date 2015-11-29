.class public Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "TwLangIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;,
        Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;,
        Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;,
        Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;,
        Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;
    }
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field private static final NO_PREV_LANG:I = 0x0

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TABLET_KK:Z

.field private static final TAG:Ljava/lang/String; = "TwLangIndexScrollView"

.field private static previousPos:I


# instance fields
.field private FEW_ELEMENT_LOGIC:I

.field private MANY_ELEMENTS_REPRESENTED_BY_DOT:I

.field private MANY_ELEMENT_LOGIC:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private final debug:Z

.field private mAnimEnd:Z

.field private mCalculatedIndexStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

.field private mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mCstmHandleTextColorPressed:I

.field private mCstmSeparatorColor:I

.field private mCstmTextColorDimmed:I

.field private mCurrentIndex:Ljava/lang/String;

.field private mEnableCustomTheme:Z

.field private mFirstLanguageGap:I

.field private mHandlePosition:I

.field private mHapticView:Landroid/view/View;

.field private mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

.field mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

.field private mIndexScrollViewTheme:I

.field private mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

.field private final mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

.field private mIsFavoriteContactMode:Z

.field private mLangDbEndPositions:[I

.field private mLangDbStartPositions:[I

.field private mLangScrollEndPositions:[I

.field private mLangScrollStartPositions:[I

.field private mNumberOfLanguages:I

.field private mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

.field private mPrevSetLang:I

.field private mRegisteredDataSetObserver:Z

.field private mScrollLogic:I

.field private m_bNoSubIndexes:Z

.field private m_bSimpleIndexScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "latte"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->TABLET_KK:Z

    .line 192
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->previousPos:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->debug:Z

    .line 78
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 107
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 109
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 116
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 121
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 127
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 184
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 185
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 186
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 187
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    .line 190
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 194
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 579
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 581
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 582
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 583
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 584
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 585
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 586
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 587
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 2877
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 2885
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 203
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 204
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 205
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indexInterval"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 215
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->debug:Z

    .line 78
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 107
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 109
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 116
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 121
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 127
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 184
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 185
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 186
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 187
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    .line 190
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 194
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 579
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 581
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 582
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 583
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 584
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 585
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 586
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 587
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 2877
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 2885
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 216
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 217
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 218
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->debug:Z

    .line 78
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 107
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 109
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 116
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 121
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 127
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 128
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 184
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 185
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 186
    const/16 v2, 0x8

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 187
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    .line 190
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 194
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 579
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 581
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 582
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 583
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 584
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 585
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 586
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 587
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 2877
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 2885
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 229
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 230
    sget-object v2, Ltouchwiz/R$styleable;->TwIndexView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 238
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    .line 241
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    return-void

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "TwLangIndexScrollView"

    const-string v3, "Occured NumberFormatException. Set handle position as default.(RIGHT_HANDLE)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->debug:Z

    .line 78
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 107
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 109
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 116
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 121
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 127
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 184
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 185
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 186
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 187
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    .line 190
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 194
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 579
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 581
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 582
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 583
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 584
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 585
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 586
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 587
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 2877
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 2885
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 255
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 256
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 257
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    .line 258
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->TABLET_KK:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->initLangPositionBounds()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    return v0
.end method

.method private addMissingSubIndexes(III)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "numberOfMissingElements"    # I

    .prologue
    .line 1254
    const/4 v1, 0x0

    .line 1255
    .local v1, "index":I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getItemPlusSpaceWidth()I

    move-result v2

    .line 1256
    .local v2, "indexPlusSpaceWidth":I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    .line 1257
    .local v0, "depth":I
    mul-int v3, v2, v0

    .line 1258
    .local v3, "missingX":I
    const/4 v4, 0x0

    .line 1259
    .local v4, "noSubIndexes":Z
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getPosition()I

    move-result v5

    .line 1260
    .local v5, "pos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v8

    .line 1262
    .local v8, "width":I
    :goto_0
    if-ge v1, p3, :cond_3

    if-nez v4, :cond_3

    .line 1264
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1266
    .local v7, "subIndex":[Ljava/lang/String;
    if-eqz v7, :cond_2

    array-length v9, v7

    if-eqz v9, :cond_2

    .line 1268
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v9, v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    .line 1269
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    if-nez v5, :cond_1

    move v9, v3

    :goto_1
    invoke-virtual {v10, v9, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    .line 1273
    add-int/2addr v3, v2

    .line 1274
    add-int/lit8 v1, v1, 0x1

    .line 1276
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v6

    .line 1277
    .local v6, "position":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 1279
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange(I)V

    .line 1281
    :cond_0
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    goto :goto_0

    .line 1269
    .end local v6    # "position":I
    :cond_1
    sub-int v9, v8, v3

    goto :goto_1

    .line 1285
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 1288
    .end local v7    # "subIndex":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private calcEndPosition(II)I
    .locals 5
    .param p1, "langStartPosition"    # I
    .param p2, "maxStartPosition"    # I

    .prologue
    .line 404
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 405
    .local v2, "endPosition":I
    if-ne p1, p2, :cond_0

    move v3, v2

    .line 419
    .end local v2    # "endPosition":I
    .local v3, "endPosition":I
    :goto_0
    return v3

    .line 411
    .end local v3    # "endPosition":I
    .restart local v2    # "endPosition":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "curLang":I
    :goto_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v4, :cond_2

    .line 413
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aget v4, v4, v1

    add-int/lit8 v0, v4, -0x1

    .line 414
    .local v0, "candidateEndPosition":I
    if-ge v0, v2, :cond_1

    if-lt v0, p1, :cond_1

    .line 416
    move v2, v0

    .line 411
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "candidateEndPosition":I
    :cond_2
    move v3, v2

    .line 419
    .end local v2    # "endPosition":I
    .restart local v3    # "endPosition":I
    goto :goto_0
.end method

.method private getDbPositionLanguage(I)I
    .locals 2
    .param p1, "dbPosition"    # I

    .prologue
    .line 800
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    if-nez v1, :cond_2

    .line 801
    :cond_0
    const/4 v0, -0x1

    .line 820
    :cond_1
    :goto_0
    return v0

    .line 803
    :cond_2
    const/4 v0, 0x0

    .line 806
    .local v0, "curLanguage":I
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v1, :cond_3

    .line 808
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_4

    .line 815
    :cond_3
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v1, :cond_1

    .line 817
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    goto :goto_0

    .line 806
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getFirstAlphabetCharacterIndex()I
    .locals 4

    .prologue
    .line 1132
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v0

    .line 1133
    .local v0, "currentLang":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    .line 1134
    .local v2, "indexerAlphabetSize":I
    const/4 v1, 0x0

    .line 1136
    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1141
    :cond_0
    if-ge v1, v2, :cond_1

    .line 1147
    .end local v1    # "index":I
    :goto_1
    return v1

    .restart local v1    # "index":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getLastAlphabetCharacterIndex()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 1160
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-nez v4, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return v3

    .line 1164
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v0

    .line 1165
    .local v0, "currentLang":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v4

    array-length v2, v4

    .line 1166
    .local v2, "indexerAlphabetSize":I
    add-int/lit8 v1, v2, -0x1

    .line 1168
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 1170
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1173
    :cond_2
    if-lez v1, :cond_0

    .line 1175
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    goto :goto_0
.end method

.method private getListViewPosition(Ljava/lang/String;)I
    .locals 13
    .param p1, "indexPath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 708
    const/4 v3, -0x1

    .line 709
    .local v3, "dbPosition":I
    if-eqz p1, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-nez v10, :cond_1

    :cond_0
    move v4, v3

    .line 787
    .end local v3    # "dbPosition":I
    .local v4, "dbPosition":I
    :goto_0
    return v4

    .line 716
    .end local v4    # "dbPosition":I
    .restart local v3    # "dbPosition":I
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v1

    .line 719
    .local v1, "currentLanguage":I
    const/4 v0, 0x0

    .line 721
    .local v0, "bLangChanged":Z
    move-object v9, p1

    .line 722
    .local v9, "searchChar":Ljava/lang/String;
    const/4 v7, 0x0

    .line 723
    .local v7, "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v12, :cond_4

    .line 726
    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 727
    .local v8, "prevIndexPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 728
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10, v8, v12}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 766
    .end local v8    # "prevIndexPath":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_b

    :cond_3
    move v4, v3

    .line 768
    .end local v3    # "dbPosition":I
    .restart local v4    # "dbPosition":I
    goto :goto_0

    .line 729
    .end local v4    # "dbPosition":I
    .restart local v3    # "dbPosition":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v12, :cond_2

    .line 731
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v5

    .line 732
    .local v5, "desiredLanguage":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v7

    .line 733
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_6

    :cond_5
    move v4, v3

    .line 735
    .end local v3    # "dbPosition":I
    .restart local v4    # "dbPosition":I
    goto :goto_0

    .line 738
    .end local v4    # "dbPosition":I
    .restart local v3    # "dbPosition":I
    :cond_6
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_8

    .line 741
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 742
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget v3, v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 738
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 745
    :cond_8
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getDbPositionLanguage(I)I

    move-result v2

    .line 748
    .local v2, "dbPosLanguage":I
    const/4 v10, -0x1

    if-ne v2, v10, :cond_9

    move v4, v3

    .line 750
    .end local v3    # "dbPosition":I
    .restart local v4    # "dbPosition":I
    goto :goto_0

    .line 753
    .end local v4    # "dbPosition":I
    .restart local v3    # "dbPosition":I
    :cond_9
    if-ne v5, v1, :cond_a

    move v4, v3

    .line 755
    .end local v3    # "dbPosition":I
    .restart local v4    # "dbPosition":I
    goto/16 :goto_0

    .line 760
    .end local v4    # "dbPosition":I
    .restart local v3    # "dbPosition":I
    :cond_a
    const/4 v0, 0x1

    .line 761
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 762
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_1

    .line 771
    .end local v2    # "dbPosLanguage":I
    .end local v5    # "desiredLanguage":I
    .end local v6    # "i":I
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_d

    .line 774
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 775
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget v3, v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 771
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 781
    :cond_d
    if-eqz v0, :cond_e

    .line 783
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 784
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v7

    :cond_e
    move v4, v3

    .line 787
    .end local v3    # "dbPosition":I
    .restart local v4    # "dbPosition":I
    goto/16 :goto_0
.end method

.method private getNumberOfMissingSubIndexes(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 1244
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getNumberOfSmallerOrEqualIndexes(I)I

    move-result v1

    .line 1245
    .local v1, "numberOfExpectedSmallerOrEqualIndexes":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    .line 1247
    .local v0, "depth":I
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "indexPath"    # Ljava/lang/String;

    .prologue
    .line 686
    const/4 v2, 0x0

    .line 687
    .local v2, "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 688
    if-eqz v2, :cond_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 689
    :cond_0
    const/4 v0, 0x0

    .line 698
    :cond_1
    return-object v0

    .line 691
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 692
    .local v0, "a":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 693
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    if-eqz v3, :cond_3

    .line 695
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    .line 692
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 895
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 896
    .local v7, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 898
    .local v6, "x":F
    const/4 v4, -0x1

    .line 899
    .local v4, "position":I
    sparse-switch v0, :sswitch_data_0

    .line 1053
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    move v8, v9

    .line 1054
    :cond_1
    :goto_1
    :sswitch_0
    return v8

    .line 903
    :sswitch_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v11, v6

    float-to-int v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 904
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 908
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v8, :cond_2

    .line 910
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 917
    :goto_2
    if-eq v4, v13, :cond_0

    .line 919
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto :goto_0

    .line 915
    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_2

    .line 926
    :sswitch_2
    float-to-int v10, v6

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getNumberOfMissingSubIndexes(I)I

    move-result v2

    .line 929
    .local v2, "numberOfMissingSubIndexes":I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    if-ne v10, v9, :cond_3

    if-ge v2, v9, :cond_4

    :cond_3
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    if-nez v10, :cond_5

    :cond_4
    move v8, v9

    .line 931
    goto :goto_1

    .line 935
    :cond_5
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v11, v6

    float-to-int v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    .line 940
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-nez v10, :cond_8

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v10, :cond_8

    .line 944
    if-lez v2, :cond_6

    .line 946
    float-to-int v8, v6

    float-to-int v10, v7

    invoke-direct {p0, v8, v10, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->addMissingSubIndexes(III)V

    .line 947
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    .line 950
    :cond_6
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 952
    .local v5, "subIndexes":[Ljava/lang/String;
    if-eqz v5, :cond_7

    array-length v8, v5

    if-lez v8, :cond_7

    .line 954
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8, v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    .line 973
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 974
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 975
    if-eq v4, v13, :cond_0

    .line 977
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_0

    .line 963
    :cond_7
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    goto/16 :goto_0

    .line 984
    .end local v5    # "subIndexes":[Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_b

    .line 988
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 991
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v8, v10

    .line 992
    .local v3, "numberOfRemovals":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_9

    .line 994
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeSubIndex()V

    .line 992
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 997
    :cond_9
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 998
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v8, :cond_a

    .line 1000
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 1006
    :goto_4
    if-eq v4, v13, :cond_0

    .line 1008
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_0

    .line 1004
    :cond_a
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_4

    .line 1020
    .end local v1    # "i":I
    .end local v3    # "numberOfRemovals":I
    :cond_b
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 1022
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 1023
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v8, :cond_c

    .line 1025
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 1031
    :goto_5
    if-eq v4, v13, :cond_0

    .line 1033
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_0

    .line 1029
    :cond_c
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_5

    .line 1042
    .end local v2    # "numberOfMissingSubIndexes":I
    :sswitch_3
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 1043
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 1044
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 1045
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 1046
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 899
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_0
        0xd5 -> :sswitch_0
    .end sparse-switch
.end method

.method private init(Landroid/content/Context;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handlePosition"    # I
    .param p3, "viewTheme"    # I

    .prologue
    const/4 v7, -0x1

    .line 270
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    .line 271
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setMaxDepth(I)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-direct {v0, p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iput-object p0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHapticView:Landroid/view/View;

    .line 284
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initIndexerLanguagesBounds()Z
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, -0x1

    .line 315
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v7, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v5

    .line 319
    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "bSecondLanguageShifted":Z
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    .line 330
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    .line 331
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    .line 333
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    .line 334
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    .line 337
    const/4 v4, -0x1

    .line 339
    .local v4, "maxDbStartPosition":I
    const/4 v1, 0x0

    .local v1, "curLang":I
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v5, :cond_8

    .line 341
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 342
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    .line 343
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartPosition()I

    move-result v2

    .line 344
    .local v2, "currentDbStartPosition":I
    move v3, v2

    .line 348
    .local v3, "currentScrollStartPosition":I
    if-lez v1, :cond_3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-gt v5, v10, :cond_3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v5, v3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v5, v7, :cond_3

    .line 350
    if-ne v1, v6, :cond_2

    .line 352
    const/4 v0, 0x1

    .line 354
    :cond_2
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v3, v5

    .line 356
    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aput v2, v5, v1

    .line 357
    if-le v2, v4, :cond_4

    .line 359
    move v4, v2

    .line 361
    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    aput v3, v5, v1

    .line 364
    if-lez v1, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v7, v1, -0x1

    aget v5, v5, v7

    if-eq v3, v5, :cond_6

    :cond_5
    if-ne v1, v6, :cond_7

    if-eqz v0, :cond_7

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    sub-int v5, v3, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    if-ne v5, v7, :cond_7

    .line 368
    :cond_6
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    add-int/lit8 v7, v1, -0x1

    aput v9, v5, v7

    .line 369
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v7, v1, -0x1

    aput v9, v5, v7

    .line 339
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    .end local v2    # "currentDbStartPosition":I
    .end local v3    # "currentScrollStartPosition":I
    :cond_8
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 374
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    .line 376
    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v5, :cond_b

    .line 378
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    aget v5, v5, v1

    if-ne v5, v9, :cond_a

    .line 380
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    aput v9, v5, v1

    .line 381
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    aput v9, v5, v1

    .line 376
    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 385
    :cond_a
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartPosition()I

    move-result v2

    .line 386
    .restart local v2    # "currentDbStartPosition":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aget v7, v7, v1

    invoke-direct {p0, v7, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->calcEndPosition(II)I

    move-result v7

    aput v7, v5, v1

    .line 387
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 389
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-ltz v5, :cond_9

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-gt v5, v10, :cond_9

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v5, v2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v5, v7, :cond_9

    .line 391
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    aget v7, v5, v1

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v7, v8

    aput v7, v5, v1

    goto :goto_3

    .end local v2    # "currentDbStartPosition":I
    :cond_b
    move v5, v6

    .line 395
    goto/16 :goto_0
.end method

.method private initLangPositionBounds()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    .line 294
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    .line 295
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    .line 296
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    .line 297
    return-void
.end method

.method private isTextRTL(Ljava/lang/CharSequence;)Z
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v8, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3364
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 3365
    .local v3, "len":I
    const/4 v2, 0x0

    .line 3366
    .local v2, "i":I
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3367
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 3368
    .local v1, "directionality":B
    :cond_0
    :goto_0
    if-eq v1, v8, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    if-ne v1, v6, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_2

    .line 3369
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3371
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    if-eq v8, v6, :cond_0

    const/16 v6, 0xc

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v7

    if-eq v6, v7, :cond_0

    .line 3372
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    goto :goto_0

    .line 3375
    :cond_2
    if-eq v1, v5, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/16 v6, 0x10

    if-eq v1, v6, :cond_3

    const/16 v6, 0x11

    if-ne v1, v6, :cond_4

    :cond_3
    move v4, v5

    .line 3380
    .end local v0    # "c":I
    .end local v1    # "directionality":B
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_4
    return v4
.end method

.method private notifyIndexChange(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1316
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    invoke-interface {v1, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;->onIndexSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setLangPosition(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;II)V
    .locals 5
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
    .param p2, "position"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v1, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    if-nez v1, :cond_4

    .line 1073
    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1078
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sub-int v1, p3, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 1081
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->initIndexerLanguagesBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    :cond_4
    const/4 v0, 0x0

    .line 1090
    .local v0, "curLanguage":I
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v1, :cond_5

    .line 1092
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    aget v1, v1, v0

    if-lt p2, v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    aget v1, v1, v0

    if-gt p2, v1, :cond_7

    .line 1099
    :cond_5
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v1, :cond_6

    .line 1101
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 1104
    :cond_6
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    if-eq v0, v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 1107
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 1108
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 1109
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 1114
    :try_start_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    const/4 v2, 0x0

    invoke-direct {p0, p0, v1, v0, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_2
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 1120
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    goto :goto_0

    .line 1090
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1116
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private startAnimation(Ljava/lang/Object;IIF)V
    .locals 9
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "currentLang"    # I
    .param p3, "newLang"    # I
    .param p4, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 1196
    :try_start_0
    const-string v4, "y"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getItemHeight()F

    move-result v8

    sub-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1198
    .local v3, "mAnimUp":Landroid/animation/ObjectAnimator;
    const-string v4, "y"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getItemHeight()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1200
    .local v2, "mAnimDown":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1201
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    if-ge p2, p3, :cond_0

    .line 1202
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1207
    :goto_0
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1208
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$1;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1232
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1239
    return-void

    .line 1205
    :cond_0
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1235
    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v2    # "mAnimDown":Landroid/animation/ObjectAnimator;
    .end local v3    # "mAnimUp":Landroid/animation/ObjectAnimator;
    :catch_0
    move-exception v1

    .line 1237
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    throw v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 432
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    if-nez v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setDimensionns(II)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setIndexRectText(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    .line 448
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->invalidate()V

    goto :goto_1
.end method

.method public enableCustomTheme(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 595
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 596
    return-void
.end method

.method public getFirstHandleWidth()I
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getItemWidth()I

    move-result v0

    return v0
.end method

.method public getHandlePosition()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 559
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 561
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 565
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 3389
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3391
    invoke-direct {p0, p0, p2, p4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setLangPosition(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;II)V

    .line 3393
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 3398
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1296
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1297
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 859
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 860
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCustomThemeSet(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)V
    .locals 1
    .param p1, "set"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 604
    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 605
    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 606
    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 607
    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 608
    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 609
    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 610
    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 612
    return-void
.end method

.method public setHandlePosition(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 674
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 675
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setPosition(I)V

    .line 676
    return-void
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 1
    .param p1, "theme"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    .line 574
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setTheme(I)V

    .line 576
    return-void
.end method

.method public setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V
    .locals 5
    .param p1, "indexer"    # Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 460
    if-nez p1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 466
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 468
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 469
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setColorAll(Z)V

    .line 470
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    .line 471
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 473
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 477
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 478
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 481
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    .line 482
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    .line 483
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    .line 484
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    .line 485
    return-void
.end method

.method public setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;)V
    .locals 0
    .param p1, "iOnIndexSelectedListener"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 1332
    return-void
.end method

.method public setSimpleIndexHandleChar([Ljava/lang/String;)V
    .locals 5
    .param p1, "handleChar"    # [Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 497
    if-nez p1, :cond_0

    .line 498
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "TwIndexView.setIndexHandleChar(handleChar) "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v2, :cond_1

    .line 504
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 505
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setColorAll(Z)V

    .line 506
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v2, p1, v4, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 508
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 509
    .local v1, "rsrc":Landroid/content/res/Resources;
    const v2, 0x2060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 510
    .local v0, "itemWidth":I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexWidth(I)V

    .line 511
    return-void
.end method

.method public setSimpleIndexHandleCharForContact([Ljava/lang/String;)V
    .locals 0
    .param p1, "handleChar"    # [Ljava/lang/String;

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public setSimpleIndexHandleCharForContact_HK([Ljava/lang/String;)V
    .locals 3
    .param p1, "handleChar"    # [Ljava/lang/String;

    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 552
    .local v1, "rsrc":Landroid/content/res/Resources;
    const v2, 0x206000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 553
    .local v0, "HK_SimpleIndexItemWidth":I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexWidth(I)V

    .line 554
    return-void
.end method

.method public setSimpleIndexWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setSimpleIndexScrollWidth(I)V

    goto :goto_0
.end method

.method public setSubscrollLimit(I)V
    .locals 1
    .param p1, "depthLimit"    # I

    .prologue
    .line 828
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setMaxDepth(I)V

    .line 832
    :cond_0
    return-void
.end method

.method public setmIsFavoriteContactMode(Z)V
    .locals 0
    .param p1, "mIsFavoriteContactMode"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 87
    return-void
.end method
