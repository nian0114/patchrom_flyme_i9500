.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
.super Landroid/view/View;
.source "TwSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SweepActionBarView"
.end annotation


# static fields
.field private static final CALL_INVALIDATE:I = 0x1


# instance fields
.field actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

.field anim:Landroid/view/animation/Animation;

.field private finalDistance:F

.field index:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field moveDistance:F

.field private oldDistance:F

.field paint:Landroid/graphics/Paint;

.field progress:F

.field rect:Landroid/graphics/Rect;

.field status:I

.field sweepActionView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field viewTop:I

.field width:F


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)V
    .locals 3
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "actionView"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .param p4, "index"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1162
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 1164
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1142
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    .line 1143
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    .line 1155
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    .line 1157
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->oldDistance:F

    .line 1234
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mHandler:Landroid/os/Handler;

    .line 1166
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    .line 1167
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    .line 1168
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1169
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mContext:Landroid/content/Context;

    .line 1170
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    .line 1171
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    .line 1173
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1174
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->createSweepRect()V

    .line 1175
    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1177
    :cond_0
    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isEasyOneHandTriggerGesture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .param p1, "x1"    # F

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .param p1, "x1"    # F

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setProgress(F)V

    return-void
.end method

.method private createSweepRect()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1181
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    .line 1183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    .line 1184
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1185
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1186
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1187
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1189
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    .line 1191
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1192
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    .line 1195
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    .line 1196
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    .line 1198
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1199
    return-void
.end method

.method private isEasyOneHandTriggerGesture()Z
    .locals 1

    .prologue
    .line 1265
    const/4 v0, 0x0

    return v0
.end method

.method private onSweep(F)V
    .locals 3
    .param p1, "distance"    # F

    .prologue
    .line 1215
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    .line 1216
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    .line 1217
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->oldDistance:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    .line 1218
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->oldDistance:F

    .line 1220
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1222
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidate()V

    .line 1225
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->invalidate(Landroid/graphics/Rect;)V

    .line 1227
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentListItem(I)Landroid/view/View;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)Landroid/view/View;

    move-result-object v0

    .line 1228
    .local v0, "lView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1229
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1232
    .end local v0    # "lView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private requestAnimation(FFI)V
    .locals 4
    .param p1, "startPosition"    # F
    .param p2, "endPosition"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 1271
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1272
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V

    .line 1273
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    # setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1202(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)I

    .line 1276
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    .line 1278
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1279
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1280
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1356
    return-void
.end method

.method private setProgress(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1209
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1211
    :goto_0
    return-void

    .line 1210
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    goto :goto_0
.end method

.method private setSweepAnimation(Z)V
    .locals 8
    .param p1, "animation"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1379
    const/4 v2, 0x0

    .line 1380
    .local v2, "startPosition":F
    const/4 v1, 0x0

    .line 1381
    .local v1, "endPosition":F
    const/4 v0, 0x0

    .line 1383
    .local v0, "duration":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    packed-switch v3, :pswitch_data_0

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1387
    :pswitch_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    .line 1389
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1390
    const/4 v1, 0x0

    .line 1391
    const/16 v0, 0x190

    .line 1406
    :goto_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    rsub-int v0, v3, 0x258

    .line 1409
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    mul-float/2addr v3, v4

    cmpg-float v3, v3, v6

    if-gez v3, :cond_8

    .line 1410
    mul-int/lit8 v0, v0, 0x2

    .line 1414
    :cond_1
    :goto_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1433
    :goto_3
    if-lez v0, :cond_0

    .line 1434
    invoke-direct {p0, v2, v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->requestAnimation(FFI)V

    .line 1436
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1437
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1393
    :cond_2
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 1394
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    .line 1395
    :goto_4
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    .line 1402
    :goto_5
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v1

    .line 1403
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2002(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z

    goto :goto_1

    .line 1394
    :cond_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    neg-float v1, v3

    goto :goto_4

    .line 1396
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1397
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    :goto_6
    goto :goto_5

    :cond_5
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    neg-float v1, v3

    goto :goto_6

    .line 1399
    :cond_6
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpPointX:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    :goto_7
    goto :goto_5

    :cond_7
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    neg-float v1, v3

    goto :goto_7

    .line 1411
    :cond_8
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 1412
    const/16 v0, 0x64

    goto/16 :goto_2

    .line 1419
    :pswitch_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    neg-float v4, v4

    mul-float v2, v3, v4

    .line 1421
    if-nez p1, :cond_9

    .line 1422
    const/4 v0, 0x0

    .line 1423
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    goto/16 :goto_3

    .line 1425
    :cond_9
    const/16 v0, 0x190

    .line 1427
    goto/16 :goto_3

    .line 1383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sweepActionViewRemove()V
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1362
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1366
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1372
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1375
    :cond_1
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 1446
    .local v7, "restoreCount":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1447
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1449
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1450
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->drawSweepBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 1456
    :cond_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1457
    return-void
.end method

.method public setTranslate()V
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;->setTranslate(F)V

    .line 1204
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->invalidate()V

    .line 1206
    :cond_0
    return-void
.end method
