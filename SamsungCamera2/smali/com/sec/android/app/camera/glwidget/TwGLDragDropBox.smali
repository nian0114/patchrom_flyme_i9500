.class public Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
    }
.end annotation


# instance fields
.field private lastDragCoord:[F

.field private mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

.field private mDroppable:Z

.field private mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

.field protected mView:Lcom/sec/android/glview/TwGLView;

.field protected mViewToDrag:Lcom/sec/android/glview/TwGLView;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 1
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 1
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 1
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 61
    return-void
.end method

.method private static final findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    .locals 5
    .param p0, "rootView"    # Lcom/sec/android/glview/TwGLView;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 190
    instance-of v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v4, :cond_0

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    check-cast p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 203
    .end local p0    # "rootView":Lcom/sec/android/glview/TwGLView;
    :goto_0
    return-object p0

    .line 193
    .restart local p0    # "rootView":Lcom/sec/android/glview/TwGLView;
    :cond_0
    instance-of v4, p0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 194
    check-cast v3, Lcom/sec/android/glview/TwGLViewGroup;

    .line 195
    .local v3, "v":Lcom/sec/android/glview/TwGLViewGroup;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v1

    .line 196
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 197
    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v2

    .line 198
    .local v2, "tempView":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 199
    goto :goto_0

    .line 196
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "tempView":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    .end local v3    # "v":Lcom/sec/android/glview/TwGLViewGroup;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 130
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 131
    invoke-virtual {p1, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 132
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 133
    return-void
.end method

.method protected cancelDrag()V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDroppability()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    return v0
.end method

.method public getView()Lcom/sec/android/glview/TwGLView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 9
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v7, v0, v3

    .line 154
    .local v7, "lastX":F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v8, v0, v4

    .line 155
    .local v8, "lastY":F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mapPointReverse([FFF)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v1, v1, v3

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v2, v2, v4

    sub-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v6

    .line 161
    .local v6, "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    if-eqz v6, :cond_5

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eq v0, v6, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    .line 166
    :cond_1
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .line 172
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 174
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setClipping(Z)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 179
    :cond_4
    return-void

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v0

    .line 212
    .local v0, "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getDroppability()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->cancelDrag()V

    .line 228
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setClipping(Z)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 234
    .end local v0    # "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    :cond_0
    return-void

    .line 217
    .restart local v0    # "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->cancelDrag()V

    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x0

    const v1, 0x3f99999a    # 1.2f

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mapPointReverse([FFF)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 143
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setClipping(Z)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragStart(Lcom/sec/android/glview/TwGLView;FF)V

    .line 149
    :cond_0
    return-void
.end method

.method protected onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "fromDropBox"    # Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .prologue
    .line 78
    instance-of v0, p2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    .line 80
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setPressedBGVisibility(I)V

    .line 81
    check-cast p2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    .end local p2    # "fromDropBox":Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setNormalBGVisibility(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;->onDrop(Lcom/sec/android/glview/TwGLView;)V

    .line 90
    :cond_1
    return-void
.end method

.method public onTouchOver(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 64
    return-void
.end method

.method public removeView()Lcom/sec/android/glview/TwGLView;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 72
    .local v0, "viewToRemove":Lcom/sec/android/glview/TwGLView;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    .line 74
    return-object v0
.end method

.method public setDroppability(Z)V
    .locals 0
    .param p1, "droppable"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    .line 183
    return-void
.end method

.method protected setEmpty()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    .line 112
    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnDragListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 125
    return-void
.end method

.method public setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    .line 46
    return-void
.end method
