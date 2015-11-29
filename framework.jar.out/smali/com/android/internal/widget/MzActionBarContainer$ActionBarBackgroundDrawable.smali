.class Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MzActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarBackgroundDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarContainer;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;Lcom/android/internal/widget/MzActionBarContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p2, "x1"    # Lcom/android/internal/widget/MzActionBarContainer$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$100(Lcom/android/internal/widget/MzActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$700(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$700(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$800(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$800(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$900(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mIsStacked:Z
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$1000(Lcom/android/internal/widget/MzActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$900(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$100(Lcom/android/internal/widget/MzActionBarContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$700(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$700(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-ne v2, v0, :cond_4

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mIsStacked:Z
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$1000(Lcom/android/internal/widget/MzActionBarContainer;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$900(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$900(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-eq v2, v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$1100(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/android/internal/widget/MzActionBarContainer;->isCollapsed(Landroid/view/View;)Z
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$1200(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$800(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$800(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$100(Lcom/android/internal/widget/MzActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$700(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$700(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$800(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$800(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    return-void
.end method
