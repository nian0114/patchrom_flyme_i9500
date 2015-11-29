.class public Lcom/sec/android/touchwiz/widget/TwDndListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwDndListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwDndListView"


# instance fields
.field private mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    .line 61
    return-void
.end method


# virtual methods
.method public getDragGrabHandlePaddingBottom()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandlePaddingBottom()I

    move-result v0

    return v0
.end method

.method public getDragGrabHandlePaddingLeft()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandlePaddingLeft()I

    move-result v0

    return v0
.end method

.method public getDragGrabHandlePaddingRight()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandlePaddingRight()I

    move-result v0

    return v0
.end method

.method public getDragGrabHandlePaddingTop()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandlePaddingTop()I

    move-result v0

    return v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isDndMode()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v0

    return v0
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDndOnItemLongClickListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 2
    .param p1, "dndController"    # Lcom/sec/android/touchwiz/widget/TwDndController;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDndController(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V

    .line 136
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndListView$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndController;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDndController(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V

    goto :goto_0
.end method

.method public setDndListener(Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDndListener(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;)V

    .line 160
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndListView$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDndListener(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;)V

    goto :goto_0
.end method

.method public setDndMode(Z)V
    .locals 1
    .param p1, "dndMode"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDndMode(Z)V

    .line 79
    return-void
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragGrabHandleDrawable(I)V

    .line 170
    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .locals 1
    .param p1, "paddingLeft"    # I
    .param p2, "paddingTop"    # I
    .param p3, "paddingRight"    # I
    .param p4, "paddingBottom"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragGrabHandlePadding(IIII)V

    .line 204
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragGrabHandlePositionGravity(I)V

    .line 191
    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "item"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragItemBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    return-void
.end method

.method public setDragViewAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragViewAlpha(I)V

    .line 107
    return-void
.end method

.method public startDrag()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->startDrag()Z

    move-result v0

    return v0
.end method
