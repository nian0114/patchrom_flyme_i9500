.class public Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;
.super Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeaderWindowController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    }
.end annotation


# instance fields
.field private mDragAndDropView:Landroid/widget/ImageView;

.field protected mIsAttached:Z

.field private mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

.field private mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$6600(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->showMenu(Z)V

    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "MultiWindow Controller"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x3ee

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    return-object v0
.end method

.method private showMenu()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->showMenu(Z)V

    return-void
.end method

.method private showMenu(Z)V
    .locals 8
    .param p1, "autoclose"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->setTopMargin(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->setLeftMargin(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$6700(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .local v7, "x":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v7, v1, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->show(IIZ)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHeaderButtonSoundId:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHeaderButtonSoundId:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .end local v7    # "x":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected performInflateController()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    const v3, 0x1080633

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->performUpdateBackground()V

    new-instance v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mMenuContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108060c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mControllerHeight:I

    :cond_0
    return-void
.end method

.method protected performStartDragMode()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performStartDragMode()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->dismiss(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected performStopDragMode()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performStopDragMode()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected performUpdateBackground()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mDragAndDropView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    const v1, 0x108060c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method protected performUpdateMenuVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->showMenu()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->dismiss(Z)V

    goto :goto_0
.end method

.method protected performUpdateVisibility(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performUpdateVisibility, not full screen ignore visible ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mIsShowing:Z

    if-ne v2, p1, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mNeedInvalidate:Z

    if-nez v2, :cond_2

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performUpdateVisibility, same visibility "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mIsShowing:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mNeedInvalidate:Z

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mControllerHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v1, "tmpBound":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mControllerHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .end local v1    # "tmpBound":Landroid/graphics/Rect;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->needToExposureTitleBarMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->dismiss(Z)V

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mIsAttached:Z

    goto/16 :goto_0
.end method

.method protected updateAvailableButtons()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->checkAvailableButtonsForAnim()V

    :cond_0
    return-void
.end method
