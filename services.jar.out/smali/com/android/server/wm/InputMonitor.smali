.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mTmpRect:Landroid/graphics/Rect;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIIZZZ)V
    .locals 16
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "privateFlags"    # I
    .param p5, "type"    # I
    .param p6, "isVisible"    # Z
    .param p7, "hasFocus"    # Z
    .param p8, "hasWallpaper"    # Z

    .prologue
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    and-int/lit8 v13, p3, 0x28

    if-nez v13, :cond_4

    const/4 v7, 0x1

    .local v7, "modal":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    .local v8, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v13, 0x800

    invoke-virtual {v8, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    .local v10, "optionScale":Z
    const/4 v13, 0x4

    invoke-virtual {v8, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    .local v9, "optionMinimized":Z
    if-eqz v7, :cond_10

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_10

    or-int/lit8 p3, p3, 0x20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v12

    .local v12, "resizableSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    neg-int v14, v12

    neg-int v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->inset(II)V

    .end local v12    # "resizableSize":I
    :cond_0
    if-eqz v10, :cond_1

    if-nez v9, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/TaskStack;->hasShownDimTarget()Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v12

    .restart local v12    # "resizableSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    neg-int v14, v12

    neg-int v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->inset(II)V

    .end local v12    # "resizableSize":I
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v14, -0x2

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v14, -0x2

    if-eq v13, v14, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_c

    :cond_2
    new-instance v11, Landroid/graphics/Region;

    invoke-direct {v11}, Landroid/graphics/Region;-><init>()V

    .local v11, "region":Landroid/graphics/Region;
    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v13, v11}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v11, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .local v3, "cw":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v14, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v3, v11}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v11, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    .end local v3    # "cw":Lcom/android/server/wm/WindowState;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "modal":Z
    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v9    # "optionMinimized":Z
    .end local v10    # "optionScale":Z
    .end local v11    # "region":Landroid/graphics/Region;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .restart local v7    # "modal":Z
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v9    # "optionMinimized":Z
    .restart local v10    # "optionScale":Z
    .restart local v11    # "region":Landroid/graphics/Region;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v13, v11}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v14, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v11, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .restart local v3    # "cw":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v14, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v3, v11}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v14, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v11, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_2

    .end local v3    # "cw":Lcom/android/server/wm/WindowState;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v14, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v11, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_a

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v13, v13, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_a

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v13, v13, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .restart local v3    # "cw":Lcom/android/server/wm/WindowState;
    iget-object v13, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-lt v13, v14, :cond_9

    iget-object v13, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-lt v13, v14, :cond_9

    iget-object v13, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    if-gt v13, v14, :cond_9

    iget-object v13, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    if-le v13, v14, :cond_8

    :cond_9
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_3

    .end local v3    # "cw":Lcom/android/server/wm/WindowState;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_c

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v13, v13, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_c

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_c

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v14, v14, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    .local v6, "mainWindow":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_b

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v14, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v11, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v14, 0x20000000

    and-int/2addr v13, v14

    if-eqz v13, :cond_b

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/16 v14, 0x62

    invoke-virtual {v13, v14}, Lcom/android/server/wm/AppWindowToken;->findWindow(I)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "appSpecificWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_b

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    invoke-virtual {v13, v11}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v14, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v11, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .end local v2    # "appSpecificWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v14, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v11, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .end local v6    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v11    # "region":Landroid/graphics/Region;
    :cond_c
    :goto_4
    move/from16 v0, p3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    move/from16 v0, p4

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsPrivateFlags:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->layoutParamsSamsungFlags:I

    move/from16 v0, p5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    move/from16 v0, p6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v13

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    move/from16 v0, p7

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    move/from16 v0, p8

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_11

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v13, v13, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_5
    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/android/server/input/InputWindowHandle;->paused:Z

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .local v4, "frame":Landroid/graphics/Rect;
    iget v13, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v13, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    if-eqz v10, :cond_d

    iget v13, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    sub-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v13, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    sub-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    :cond_d
    if-eqz v9, :cond_e

    iget v13, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v14}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v13, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v14}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    :cond_e
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    :goto_6
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v14, 0x1000000

    and-int/2addr v13, v14

    if-eqz v13, :cond_f

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    return-void

    .end local v4    # "frame":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto/16 :goto_4

    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_5

    .restart local v4    # "frame":Landroid/graphics/Rect;
    :cond_12
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_6
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    :cond_0
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQuickAccess(IFF)V
    .locals 0
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    return-void
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 13
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v8, 0x0

    .local v8, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .local v3, "aboveSystem":Z
    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v9, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v8, v0

    if-eqz v8, :cond_0

    iget-object v4, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    :cond_0
    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v9, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    :cond_1
    if-eqz v8, :cond_4

    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out sending to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v11, 0x7d3

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    .local v5, "systemAlertLayer":I
    iget v9, v8, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v9, v5, :cond_3

    const/4 v3, 0x1

    .end local v5    # "systemAlertLayer":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v9, v4, v8, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_6

    iget-object v9, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v9, :cond_6

    :try_start_1
    iget-object v9, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    .local v2, "abort":Z
    if-nez v2, :cond_7

    iget-wide v6, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "abort":Z
    :cond_2
    :goto_1
    return-wide v6

    .restart local v5    # "systemAlertLayer":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .end local v5    # "systemAlertLayer":I
    :cond_4
    if-eqz v4, :cond_5

    :try_start_2
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out sending to application "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    :cond_5
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_6
    if-eqz v8, :cond_7

    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v10, v10, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p3

    invoke-interface {v9, v10, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v6

    .local v6, "timeout":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-gez v9, :cond_2

    .end local v6    # "timeout":J
    :cond_7
    :goto_2
    const-wide/16 v6, 0x0

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyCoverAttachedChanged(JZ)V
    .locals 0
    .param p1, "whenNanos"    # J
    .param p3, "attached"    # Z

    .prologue
    return-void
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .locals 0
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    return-void
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    return-void
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyPenSwitchChanged(JZ)V

    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_0

    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_0
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    :cond_0
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .local v0, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 2
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_1
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    :cond_0
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 32
    .param p1, "force"    # Z

    .prologue
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v2, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    .local v29, "universeBackground":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v15, v2, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .local v15, "aboveUniverseLayer":I
    const/16 v16, 0x0

    .local v16, "addedUniverse":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_2

    const/16 v22, 0x1

    .local v22, "inDrag":Z
    :goto_1
    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v19, v0

    .local v19, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .end local v19    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "NFW":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/FakeWindowImpl;

    iget-object v2, v2, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .end local v14    # "NFW":I
    .end local v21    # "i":I
    .end local v22    # "inDrag":Z
    :cond_2
    const/16 v22, 0x0

    goto :goto_1

    .restart local v19    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v22    # "inDrag":Z
    :cond_3
    const-string v2, "WindowManager"

    const-string v3, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v19    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v14    # "NFW":I
    .restart local v21    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v25

    .local v25, "numDisplays":I
    const/16 v18, 0x0

    .local v18, "displayNdx":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v31

    .local v31, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v30, v2, -0x1

    .local v30, "winNdx":I
    :goto_5
    if-ltz v30, :cond_f

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    .local v17, "child":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v23, v0

    .local v23, "inputChannel":Landroid/view/InputChannel;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v24, v0

    .local v24, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v23, :cond_5

    if-eqz v24, :cond_5

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_6

    :cond_5
    :goto_6
    add-int/lit8 v30, v30, -0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v0

    .local v20, "flags":I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v27, v0

    .local v27, "privateFlags":I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    .local v28, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_a

    const/4 v12, 0x1

    .local v12, "hasFocus":Z
    :goto_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v11

    .local v11, "isVisible":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_c

    move/from16 v0, v27

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_c

    const/4 v13, 0x1

    .local v13, "hasWallpaper":Z
    :goto_9
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_d

    const/16 v26, 0x1

    .local v26, "onDefaultDisplay":Z
    :goto_a
    if-eqz v22, :cond_7

    if-eqz v11, :cond_7

    if-eqz v26, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    :cond_7
    if-eqz v29, :cond_9

    if-nez v16, :cond_9

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v2, v15, :cond_9

    if-eqz v26, :cond_9

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .local v4, "u":Lcom/android/server/wm/WindowState;
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_8

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v2, :cond_8

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_e

    const/4 v9, 0x1

    :goto_b
    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIIZZZ)V

    :cond_8
    const/16 v16, 0x1

    .end local v4    # "u":Lcom/android/server/wm/WindowState;
    :cond_9
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v29

    if-eq v2, v0, :cond_5

    move-object/from16 v5, p0

    move-object/from16 v6, v24

    move-object/from16 v7, v17

    move/from16 v8, v20

    move/from16 v9, v27

    move/from16 v10, v28

    invoke-direct/range {v5 .. v13}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIIZZZ)V

    goto/16 :goto_6

    .end local v11    # "isVisible":Z
    .end local v12    # "hasFocus":Z
    .end local v13    # "hasWallpaper":Z
    .end local v26    # "onDefaultDisplay":Z
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_7

    .restart local v12    # "hasFocus":Z
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    goto :goto_8

    .restart local v11    # "isVisible":Z
    :cond_c
    const/4 v13, 0x0

    goto :goto_9

    .restart local v13    # "hasWallpaper":Z
    :cond_d
    const/16 v26, 0x0

    goto :goto_a

    .restart local v4    # "u":Lcom/android/server/wm/WindowState;
    .restart local v26    # "onDefaultDisplay":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_b

    .end local v4    # "u":Lcom/android/server/wm/WindowState;
    .end local v11    # "isVisible":Z
    .end local v12    # "hasFocus":Z
    .end local v13    # "hasWallpaper":Z
    .end local v17    # "child":Lcom/android/server/wm/WindowState;
    .end local v20    # "flags":I
    .end local v23    # "inputChannel":Landroid/view/InputChannel;
    .end local v24    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v26    # "onDefaultDisplay":Z
    .end local v27    # "privateFlags":I
    .end local v28    # "type":I
    :cond_f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .end local v30    # "winNdx":I
    .end local v31    # "windows":Lcom/android/server/wm/WindowList;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_0
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
