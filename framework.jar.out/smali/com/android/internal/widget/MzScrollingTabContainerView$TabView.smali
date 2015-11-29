.class Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "MzScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mDelegate:Lcom/meizu/widget/GlowDelegate;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/MzScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Landroid/app/ActionBar$Tab;
    .param p4, "forList"    # Z

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    const/4 v0, 0x0

    const v1, 0x10102f3

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setGravity(I)V

    if-eqz p4, :cond_0

    const v0, 0x800013

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setGravity(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->update()V

    return-void
.end method


# virtual methods
.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowScale()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/util/ToastUtils;->showToast(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    :cond_0
    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowAlpha(F)V

    :cond_0
    return-void
.end method

.method public setGlowScale(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowScale(F)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setPressed(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void

    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowAtBottom(Z)V
    .locals 3
    .param p1, "showAtBottom"    # Z

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/meizu/widget/GlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public update()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/16 v11, 0x8

    const/4 v13, -0x2

    const/4 v9, 0x0

    const/4 v12, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .local v6, "tab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    :cond_1
    iput-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    iput-object v12, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    :cond_5
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_b

    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v10, :cond_6

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v4, "iconView":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4, v9}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    iput-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .end local v4    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v2, 0x1

    .local v2, "hasText":Z
    :goto_2
    if-eqz v2, :cond_d

    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v10, :cond_8

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x10102f5

    invoke-direct {v8, v10, v12, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .local v8, "textView":Landroid/widget/TextView;
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_8
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    if-nez v2, :cond_e

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {p0, p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .end local v2    # "hasText":Z
    :cond_b
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    move v2, v9

    goto :goto_2

    .restart local v2    # "hasText":Z
    :cond_d
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_e
    invoke-virtual {p0, v12}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setLongClickable(Z)V

    goto/16 :goto_0
.end method
