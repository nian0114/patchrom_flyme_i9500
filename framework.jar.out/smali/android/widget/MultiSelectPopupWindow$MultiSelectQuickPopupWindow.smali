.class Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectQuickPopupWindow"
.end annotation


# static fields
.field private static final TW_QUICK_POPUP_DIVIDER_LAYOUT:I = 0x109012a

.field private static final TW_QUICK_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x109012c

.field private static final TW_QUICK_POPUP_ITEM_LAYOUT:I = 0x109012b


# instance fields
.field private COPY_DESCRIPTION:Ljava/lang/CharSequence;

.field private DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

.field private final ITEM_WIDTH:I

.field private SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

.field private SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

.field private TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

.field private mActionBarHeight:I

.field private mContentView:Landroid/view/ViewGroup;

.field private mContentViewHeight:I

.field private mContentViewWidth:I

.field private mCopyImageView:Landroid/widget/ImageView;

.field private mCopyLayout:Landroid/widget/FrameLayout;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mDictionaryImageView:Landroid/widget/ImageView;

.field private mDictionaryLayout:Landroid/widget/FrameLayout;

.field private mDictionaryTextView:Landroid/widget/TextView;

.field private mDividerImageView1:Landroid/widget/ImageView;

.field private mDividerImageView2:Landroid/widget/ImageView;

.field private mDividerImageView3:Landroid/widget/ImageView;

.field private mDividerImageView4:Landroid/widget/ImageView;

.field private mDividerWidth:I

.field private mHandlerHeight:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mItemWidth:I

.field private mMenuItemCount:I

.field private mPopupBgPaddingHeight:I

.field private mPopupBgPaddingWidth:I

.field private mPopupWidthLandscape:I

.field private mPopupWidthPortrait:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mSelectAllImageView:Landroid/widget/ImageView;

.field private mSelectAllLayout:Landroid/widget/FrameLayout;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectionEndPointOffset:I

.field private mSelectionStartPointOffset:I

.field private mShareImageView:Landroid/widget/ImageView;

.field private mShareLayout:Landroid/widget/FrameLayout;

.field private mShareTextView:Landroid/widget/TextView;

.field private mStatusbarHeight:I

.field private mTranslateImageView:Landroid/widget/ImageView;

.field private mTranslateLayout:Landroid/widget/FrameLayout;

.field private mTranslateTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x47

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->ITEM_WIDTH:I

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->createPopupWindow()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->initContentView()V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setHeight()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private computeLocalPosition()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->measureContent()V

    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, "position":[I
    invoke-direct {p0, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMultiSelectQuickPopupPosition([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    return-void
.end method

.method private createPopupWindow()V
    .locals 7

    .prologue
    const v6, 0x1080acb

    const/4 v5, 0x0

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "bgResPadding":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    const/4 v1, 0x0

    :goto_0
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10806fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "nullBackgrond":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void

    .end local v2    # "nullBackgrond":Landroid/graphics/drawable/Drawable;
    :cond_0
    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    goto :goto_0
.end method

.method private getMenuLimit()I
    .locals 2

    .prologue
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getMultiSelectQuickPopupPosition([I)V
    .locals 36
    .param p1, "position"    # [I

    .prologue
    if-nez p1, :cond_0

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 p1, v0

    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .local v12, "menuItemCount":I
    const/4 v13, 0x0

    .local v13, "menuLimit":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    const/4 v13, 0x4

    :goto_0
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v28

    .local v28, "text":Ljava/lang/CharSequence;
    if-nez v28, :cond_1

    const-string v32, "MultiSelectPopupWindow"

    const-string v33, "getTextFormultiSelection() text is null"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static/range {v28 .. v28}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    invoke-static/range {v28 .. v28}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .local v18, "screen":[I
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .local v31, "window":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/16 v32, 0x0

    aget v32, v18, v32

    const/16 v33, 0x0

    aget v33, v31, v33

    sub-int v16, v32, v33

    .local v16, "parentViewPositionX":I
    const/16 v32, 0x1

    aget v32, v18, v32

    const/16 v33, 0x1

    aget v33, v31, v33

    sub-int v17, v32, v33

    .local v17, "parentViewPositionY":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v30

    .local v30, "viewportToContentVerticalOffset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v29

    .local v29, "viewportToContentHorizontalOffset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    .local v22, "screenWidth":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .local v20, "screenHeight":I
    move/from16 v8, v20

    .local v8, "fullScreenHeight":I
    const/16 v21, 0x0

    .local v21, "screenTop":I
    move/from16 v19, v20

    .local v19, "screenBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v24

    .local v24, "startLine":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .local v4, "endLine":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v26, v32, v30

    .local v26, "startLineTop":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v25, v32, v30

    .local v25, "startLineBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v6, v32, v30

    .local v6, "endLineTop":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v5, v32, v30

    .local v5, "endLineBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v27, v32, v29

    .local v27, "startX":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v7, v32, v29

    .local v7, "endX":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/text/Layout;->getWidth()I

    move-result v11

    .local v11, "maxWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mActionBarHeight:I

    .local v2, "actionBarHeight":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHandlerHeight:I

    .local v9, "handlerHeight":I
    const/4 v10, 0x1

    .local v10, "isStatusBarVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_1
    if-nez v10, :cond_2

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    :cond_2
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->isMultiWindow()Z

    move-result v32

    if-eqz v32, :cond_6

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "multiwindow_facade"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .local v15, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v23

    .local v23, "stackBoxBound":Landroid/graphics/Rect;
    if-eqz v23, :cond_3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v20

    :cond_3
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v32

    if-eqz v32, :cond_4

    const/16 v21, 0x0

    :cond_4
    const/16 v32, 0x1

    aget v32, v18, v32

    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    const/16 v32, 0x1

    aget v32, v18, v32

    move/from16 v0, v32

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    :cond_5
    const/16 v32, 0x1

    aget v32, v18, v32

    if-lez v32, :cond_6

    const/16 v32, 0x1

    aget v32, v18, v32

    move/from16 v0, v32

    if-ge v0, v8, :cond_6

    const/16 v21, 0x0

    move/from16 v19, v8

    .end local v15    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v23    # "stackBoxBound":Landroid/graphics/Rect;
    :cond_6
    if-ge v12, v13, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    move/from16 v32, v0

    add-int/lit8 v33, v12, -0x1

    mul-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    move/from16 v33, v0

    mul-int v33, v33, v12

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    :goto_2
    move/from16 v0, v24

    if-ne v0, v4, :cond_11

    const/16 v32, 0x0

    sub-int v33, v7, v27

    div-int/lit8 v33, v33, 0x2

    add-int v33, v33, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v33, v33, v34

    aput v33, p1, v32

    :goto_3
    const/16 v32, 0x0

    aget v32, p1, v32

    if-gez v32, :cond_13

    const/16 v32, 0x0

    aget v32, p1, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    sub-int v34, v34, v16

    add-int v33, v33, v34

    aput v33, p1, v32

    :cond_7
    :goto_4
    const/16 v32, 0x0

    aget v32, p1, v32

    if-gez v32, :cond_8

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v33, p1, v32

    const/16 v32, 0x0

    aget v32, p1, v32

    add-int v32, v32, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    :cond_8
    :goto_5
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v26, v33

    aput v33, p1, v32

    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    move/from16 v33, v0

    add-int v33, v33, v2

    add-int v33, v33, v21

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_9

    const/16 v32, 0x1

    add-int v33, v5, v9

    aput v33, p1, v32

    :cond_9
    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    move/from16 v0, v19

    if-le v5, v0, :cond_14

    move/from16 v14, v19

    .local v14, "middlePosition":I
    :goto_6
    if-gez v25, :cond_a

    const/16 v25, 0x0

    :cond_a
    add-int v32, v25, v9

    sub-int v32, v14, v32

    div-int/lit8 v14, v32, 0x2

    add-int v32, v25, v9

    sub-int v32, v5, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_15

    const/16 v32, 0x1

    add-int v33, v25, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v34, v14, v34

    add-int v33, v33, v34

    aput v33, p1, v32

    .end local v14    # "middlePosition":I
    :cond_b
    :goto_7
    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move/from16 v0, v32

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    :cond_c
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v19, v33

    aput v33, p1, v32

    const/16 v32, 0x1

    aget v33, p1, v32

    sub-int v33, v33, v21

    aput v33, p1, v32

    :cond_d
    return-void

    .end local v2    # "actionBarHeight":I
    .end local v4    # "endLine":I
    .end local v5    # "endLineBottom":I
    .end local v6    # "endLineTop":I
    .end local v7    # "endX":I
    .end local v8    # "fullScreenHeight":I
    .end local v9    # "handlerHeight":I
    .end local v10    # "isStatusBarVisible":Z
    .end local v11    # "maxWidth":I
    .end local v16    # "parentViewPositionX":I
    .end local v17    # "parentViewPositionY":I
    .end local v18    # "screen":[I
    .end local v19    # "screenBottom":I
    .end local v20    # "screenHeight":I
    .end local v21    # "screenTop":I
    .end local v22    # "screenWidth":I
    .end local v24    # "startLine":I
    .end local v25    # "startLineBottom":I
    .end local v26    # "startLineTop":I
    .end local v27    # "startX":I
    .end local v28    # "text":Ljava/lang/CharSequence;
    .end local v29    # "viewportToContentHorizontalOffset":I
    .end local v30    # "viewportToContentVerticalOffset":I
    .end local v31    # "window":[I
    :cond_e
    const/4 v13, 0x6

    goto/16 :goto_0

    .restart local v2    # "actionBarHeight":I
    .restart local v4    # "endLine":I
    .restart local v5    # "endLineBottom":I
    .restart local v6    # "endLineTop":I
    .restart local v7    # "endX":I
    .restart local v8    # "fullScreenHeight":I
    .restart local v9    # "handlerHeight":I
    .restart local v10    # "isStatusBarVisible":Z
    .restart local v11    # "maxWidth":I
    .restart local v16    # "parentViewPositionX":I
    .restart local v17    # "parentViewPositionY":I
    .restart local v18    # "screen":[I
    .restart local v19    # "screenBottom":I
    .restart local v20    # "screenHeight":I
    .restart local v21    # "screenTop":I
    .restart local v22    # "screenWidth":I
    .restart local v24    # "startLine":I
    .restart local v25    # "startLineBottom":I
    .restart local v26    # "startLineTop":I
    .restart local v27    # "startX":I
    .restart local v28    # "text":Ljava/lang/CharSequence;
    .restart local v29    # "viewportToContentHorizontalOffset":I
    .restart local v30    # "viewportToContentVerticalOffset":I
    .restart local v31    # "window":[I
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v32, "MultiSelectPopupWindow"

    const-string v33, "Remote exception while to check isStatusBarVisible"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_f
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    goto/16 :goto_2

    :cond_11
    const/16 v32, 0x0

    const/16 v33, 0x0

    aget v33, v31, v33

    div-int/lit8 v34, v11, 0x2

    add-int v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_3

    :cond_12
    const/16 v32, 0x0

    aget v32, p1, v32

    add-int v32, v32, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_4

    :cond_13
    const/16 v32, 0x0

    aget v32, p1, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    add-int v32, v32, v16

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_5

    :cond_14
    move v14, v5

    goto/16 :goto_6

    .restart local v14    # "middlePosition":I
    :cond_15
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v19, v33

    aput v33, p1, v32

    goto/16 :goto_7
.end method

.method private getTextOffset()I
    .locals 3

    .prologue
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private initContentView()V
    .locals 11

    .prologue
    const v10, 0x109012b

    const v9, 0x1080ac5

    const v8, 0x1020050

    const v7, 0x102004f

    const/4 v6, 0x0

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v2, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x109012c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020051

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllImageView:Landroid/widget/ImageView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ac8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v3, 0x109012a

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020052

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyImageView:Landroid/widget/ImageView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ac6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v3, 0x109012a

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020055

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ac9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v3, 0x109012a

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020053

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryImageView:Landroid/widget/ImageView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ac7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v3, 0x109012a

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020054

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateImageView:Landroid/widget/ImageView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080aca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setHeight()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mActionBarHeight:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHandlerHeight:I

    const/high16 v2, 0x41c80000    # 25.0f

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private setPopupWindowWidth(I)V
    .locals 4
    .param p1, "menuLimit"    # I

    .prologue
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    :goto_0
    return-void

    :cond_0
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method private updateMultiSelectQuickPopupPosition()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    new-array v4, v5, [I

    .local v4, "window":[I
    new-array v3, v5, [I

    .local v3, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->getLocationInWindow([I)V

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    aget v5, v3, v9

    aget v6, v4, v9

    sub-int v1, v5, v6

    .local v1, "gapX":I
    aget v5, v3, v7

    aget v6, v4, v7

    sub-int v2, v5, v6

    .local v2, "gapY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :cond_0
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    :cond_1
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_2
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_4

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :cond_3
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :try_start_0
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v9, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    const-string v5, "MultiSelectPopupWindow"

    const-string v6, "showAtLocation occur BadTokenException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onMultiSelectMenuItem(I)Z

    return-void
.end method

.method public refreshResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setHeight()V

    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    if-ltz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMenuLimit()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setPopupWindowWidth(I)V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->refreshResource()V

    const/4 v0, 0x2

    .local v0, "menuItemCount":I
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isShareViaEnable()Z
    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$100(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isDictionaryEnable()Z
    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$200(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isTranslatorEnabled()Z
    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$300(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v7, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMenuLimit()I

    move-result v2

    .local v2, "menuLimit":I
    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    invoke-direct {p0, v2}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setPopupWindowWidth(I)V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v5}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V

    if-le v0, v2, :cond_3

    sub-int v1, v0, v2

    .local v1, "menuItemDiff":I
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-int/lit8 v6, v1, 0x64

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;

    invoke-direct {v4, p0, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;-><init>(Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .end local v1    # "menuItemDiff":I
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_3
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    :cond_1
    return-void
.end method
