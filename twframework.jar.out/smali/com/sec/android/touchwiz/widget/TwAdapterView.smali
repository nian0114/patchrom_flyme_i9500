.class public abstract Lcom/sec/android/touchwiz/widget/TwAdapterView;
.super Landroid/view/ViewGroup;
.source "TwAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAdapterView$1;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwNotifyKeyPressListener;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

.field mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

.field mOnTwNotifyKeyPressListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwNotifyKeyPressListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 243
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 247
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 85
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 95
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 127
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 163
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 169
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 174
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 180
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 212
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 217
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 236
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setImportantForAccessibility(I)V

    .line 257
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAdapterView;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAdapterView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAdapterView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 1081
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1084
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 1085
    .local v3, "selection":I
    if-ltz v3, :cond_1

    .line 1086
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1087
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 1090
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 1156
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1157
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    .line 1158
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 1159
    .local v1, "itemCount":I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1162
    .end local v1    # "itemCount":I
    :cond_1
    return v2
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    .prologue
    .line 1095
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1098
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 1099
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 1101
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 921
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    const/4 p1, 0x0

    .line 925
    :cond_0
    if-eqz p1, :cond_3

    .line 926
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 927
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 928
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setVisibility(I)V

    .line 937
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 938
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onLayout(ZIIII)V

    .line 944
    :cond_1
    :goto_1
    return-void

    .line 931
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 941
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 942
    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 642
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 655
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 683
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 668
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1167
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 902
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 903
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 904
    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 908
    .local v2, "focusable":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 909
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 910
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 911
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->updateEmptyStatus(Z)V

    .line 913
    :cond_4
    return-void

    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_5
    move v1, v5

    .line 903
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_6
    move v2, v5

    .line 904
    goto :goto_1

    .restart local v2    # "focusable":Z
    :cond_7
    move v3, v5

    .line 908
    goto :goto_2

    :cond_8
    move v3, v5

    .line 909
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1236
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->selectionChanged()V

    .line 1238
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 1239
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 1241
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1107
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1108
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    const/4 v1, 0x1

    .line 1112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 982
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 974
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 1252
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1254
    .local v3, "count":I
    if-nez v3, :cond_1

    .line 1255
    const/4 v13, -0x1

    .line 1327
    :cond_0
    :goto_0
    return v13

    .line 1258
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1259
    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1262
    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v10, v16

    if-nez v16, :cond_2

    .line 1263
    const/4 v13, -0x1

    goto :goto_0

    .line 1267
    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1268
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1275
    .local v4, "endTime":J
    move v6, v13

    .line 1278
    .local v6, "first":I
    move v9, v13

    .line 1281
    .local v9, "last":I
    const/4 v12, 0x0

    .line 1291
    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1292
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v2, :cond_5

    .line 1293
    const/4 v13, -0x1

    goto :goto_0

    .line 1311
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v14, "rowId":J
    :cond_3
    if-nez v7, :cond_4

    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    .line 1313
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 1314
    move v13, v9

    .line 1316
    const/4 v12, 0x0

    .line 1296
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_6

    .line 1297
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1298
    .restart local v14    # "rowId":J
    cmp-long v16, v14, v10

    if-eqz v16, :cond_0

    .line 1303
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_7

    const/4 v8, 0x1

    .line 1304
    .restart local v8    # "hitLast":Z
    :goto_2
    if-nez v6, :cond_8

    const/4 v7, 0x1

    .line 1306
    .restart local v7    # "hitFirst":Z
    :goto_3
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 1327
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_6
    const/4 v13, -0x1

    goto :goto_0

    .line 1303
    .restart local v14    # "rowId":J
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1304
    .restart local v8    # "hitLast":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 1317
    .restart local v7    # "hitFirst":Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_5

    if-nez v7, :cond_5

    .line 1319
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 1320
    move v13, v6

    .line 1322
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 772
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 862
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 815
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 953
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 954
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 958
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 959
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 825
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 410
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public final getOnTwMultiSelectedListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;
    .locals 1

    .prologue
    .line 461
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    return-object v0
.end method

.method public final getOnTwNotifyKeyPressListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwNotifyKeyPressListener;
    .locals 1

    .prologue
    .line 572
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwNotifyKeyPressListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwNotifyKeyPressListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v5, -0x1

    .line 785
    move-object v3, p1

    .line 788
    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 789
    move-object v3, v4

    goto :goto_0

    .line 791
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 805
    :cond_0
    :goto_1
    return v5

    .line 797
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildCount()I

    move-result v0

    .line 798
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 799
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 800
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 798
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 756
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 757
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 758
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 759
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 761
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 742
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 733
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1171
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1172
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1174
    .local v1, "found":Z
    if-lez v0, :cond_4

    .line 1179
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 1182
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1186
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->findSyncPosition()I

    move-result v2

    .line 1187
    .local v2, "newPos":I
    if-ltz v2, :cond_0

    .line 1189
    invoke-virtual {p0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1190
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    .line 1192
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 1193
    const/4 v1, 0x1

    .line 1197
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 1199
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1202
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    .line 1203
    add-int/lit8 v2, v0, -0x1

    .line 1205
    :cond_1
    if-gez v2, :cond_2

    .line 1206
    const/4 v2, 0x0

    .line 1210
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1211
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    .line 1213
    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1215
    :cond_3
    if-ltz v3, :cond_4

    .line 1216
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 1217
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkSelectionChanged()V

    .line 1218
    const/4 v1, 0x1

    .line 1222
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 1224
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1225
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 1226
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 1227
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 1228
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1229
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkSelectionChanged()V

    .line 1232
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 1233
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 872
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1339
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1037
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1038
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectionNotifier:Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1039
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1142
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1143
    const-class v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1144
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1146
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1150
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1151
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1152
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1153
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1131
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1132
    const-class v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1133
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1134
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1135
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1138
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 723
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLayoutHeight:I

    .line 724
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1117
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1120
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1122
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1123
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1124
    const/4 v1, 0x1

    .line 1126
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 311
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->playSoundEffect(I)V

    .line 313
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    :cond_0
    move v0, v6

    .line 320
    :cond_1
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1372
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1373
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1374
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncHeight:J

    .line 1375
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1377
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1378
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1379
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1380
    if-eqz v1, :cond_0

    .line 1381
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1383
    :cond_0
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    .line 1400
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1386
    :cond_2
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1387
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1388
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1389
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1393
    :goto_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1394
    if-eqz v1, :cond_3

    .line 1395
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1397
    :cond_3
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1391
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method rememberSyncStateHorizontal()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1408
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1409
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1410
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncHeight:J

    .line 1411
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1413
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1414
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1415
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1416
    if-eqz v1, :cond_0

    .line 1417
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1419
    :cond_0
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    .line 1436
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1422
    :cond_2
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1423
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1424
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1425
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1429
    :goto_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1430
    if-eqz v1, :cond_3

    .line 1431
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1433
    :cond_3
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1427
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 718
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 696
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 708
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 1058
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectionNotifier:Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;

    if-nez v0, :cond_2

    .line 1066
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterView;Lcom/sec/android/touchwiz/widget/TwAdapterView$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectionNotifier:Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;

    .line 1068
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectionNotifier:Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 1074
    :cond_3
    :goto_0
    return-void

    .line 1070
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->fireOnSelected()V

    .line 1071
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performAccessibilityActionsOnSelected()V

    goto :goto_0
.end method

.method selectionChangedForAccessibility()V
    .locals 0

    .prologue
    .line 1077
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performAccessibilityActionsOnSelected()V

    .line 1078
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v1, 0x1

    .line 841
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    .line 844
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 846
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 850
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 851
    .local v1, "empty":Z
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->updateEmptyStatus(Z)V

    .line 852
    return-void

    .line 850
    .end local v1    # "empty":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 877
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 878
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 880
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableState:Z

    .line 881
    if-nez p1, :cond_1

    .line 882
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 885
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 886
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 878
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 885
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 890
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 891
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 893
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 894
    if-eqz p1, :cond_1

    .line 895
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableState:Z

    .line 898
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 899
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 891
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 898
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1357
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 1358
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 1360
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1361
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1362
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1364
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 964
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .prologue
    .line 288
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 289
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    .prologue
    .line 353
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setLongClickable(Z)V

    .line 356
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    .line 357
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    .prologue
    .line 406
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    .line 407
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1347
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1348
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 1349
    return-void
.end method

.method public abstract setSelection(I)V
.end method

.method public setTwMultiSelectedListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    .prologue
    .line 453
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    .line 454
    return-void
.end method

.method public setTwNotifyOnKeyPressListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwNotifyKeyPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwNotifyKeyPressListener;

    .prologue
    .line 564
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwNotifyKeyPressListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwNotifyKeyPressListener;

    .line 565
    return-void
.end method

.method public twNotifyKeyPress(Landroid/view/View;IJZ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "shiftPressState"    # Z

    .prologue
    .line 579
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwNotifyKeyPressListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwNotifyKeyPressListener;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwNotifyKeyPressListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwNotifyKeyPressListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwNotifyKeyPressListener;->onTwNotifyKeyPress(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJZ)V

    .line 581
    const/4 v0, 0x1

    .line 584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public twNotifyMultiSelectedStart()V
    .locals 1

    .prologue
    .line 491
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_0

    .line 495
    :cond_0
    return-void
.end method

.method public twNotifyMultiSelectedStart(II)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 514
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;->OnTwMultiSelectStart(II)V

    .line 518
    :cond_0
    return-void
.end method

.method public twNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "shiftPressState"    # Z
    .param p6, "ctrlPressState"    # Z
    .param p7, "PenPressState"    # Z

    .prologue
    .line 478
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;->onTwMultiSelected(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJZZZ)V

    .line 480
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public twNotifyMultiSelectedStop()V
    .locals 1

    .prologue
    .line 502
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_0

    .line 505
    :cond_0
    return-void
.end method

.method public twNotifyMultiSelectedStop(II)V
    .locals 1
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 527
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnTwMultiSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnTwMultiSelectedListener;->OnTwMultiSelectStop(II)V

    .line 530
    :cond_0
    return-void
.end method
