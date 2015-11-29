.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field private mAppTopLevelStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private mCenterBarPoint:Landroid/graphics/Point;

.field mContentRect:Landroid/graphics/Rect;

.field mDeferredRemoval:Z

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field mEasyOneHandScaleSpec:Landroid/view/MagnificationSpec;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mIsolatedWeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

.field mTmpRect:Landroid/graphics/Rect;

.field final mTmpTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field mWeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/wm/WindowList;

    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method attachStack(Lcom/android/server/wm/TaskStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    iget v0, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attachStack: HOME_STACK_ID (0) not first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    return-void
.end method

.method checkForDeferredActions()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x0

    .local v0, "animating":Z
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_6

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v9, v1, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStackLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "taskNdx":I
    :goto_1
    if-ltz v4, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v7, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .local v6, "tokenNdx":I
    :goto_2
    if-ltz v6, :cond_4

    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v9, v8, Lcom/android/server/wm/AppWindowToken;->mDeferRemoval:Z

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    iput-boolean v10, v8, Lcom/android/server/wm/AppWindowToken;->mDeferRemoval:Z

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowManagerService;->removeAppFromTaskLocked(Lcom/android/server/wm/AppWindowToken;)V

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    iget-boolean v9, v3, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    if-eqz v9, :cond_5

    iput-boolean v10, v3, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/WindowManagerService;->removeTaskLocked(Lcom/android/server/wm/Task;)V

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "taskNdx":I
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_6
    if-nez v0, :cond_7

    iget-boolean v9, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    :cond_7
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->close()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method detachStack(Lcom/android/server/wm/TaskStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 17
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "Display: mDisplayId="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(I)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "subPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "init="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, "dpi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    :cond_0
    const-string v15, " base="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, "dpi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string v15, " cur="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v15, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v15, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, " app="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v15, v15, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v15, v15, Landroid/view/DisplayInfo;->appHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, " rng="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v15, v15, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v15, v15, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, "-"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v15, v15, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v15, v15, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "deferred="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Z)V

    const-string v15, " layoutNeeded="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v6, v15, -0x1

    .local v6, "stackNdx":I
    :goto_0
    if-ltz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mStacks["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v15, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(I)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v5, v15, v0}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v15, "  Application tokens in bottom up Z order:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "ndx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .local v9, "taskNdx":I
    :goto_1
    if-ltz v9, :cond_4

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/Task;

    iget-object v13, v15, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .local v13, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v13}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v15

    add-int/lit8 v12, v15, -0x1

    .local v12, "tokenNdx":I
    move v4, v3

    .end local v3    # "ndx":I
    .local v4, "ndx":I
    :goto_2
    if-ltz v12, :cond_3

    invoke-virtual {v13, v12}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/AppWindowToken;

    .local v14, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const-string v15, "  App #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ndx":I
    .restart local v3    # "ndx":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v15, 0x20

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v15, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v15, "    "

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v12, v12, -0x1

    move v4, v3

    .end local v3    # "ndx":I
    .restart local v4    # "ndx":I
    goto :goto_2

    .end local v14    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v9, v9, -0x1

    move v3, v4

    .end local v4    # "ndx":I
    .restart local v3    # "ndx":I
    goto :goto_1

    .end local v12    # "tokenNdx":I
    .end local v13    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_4
    if-nez v3, :cond_5

    const-string v15, "    None"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v15, "  Exiting tokens:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v2, v15, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    .local v11, "token":Lcom/android/server/wm/WindowToken;
    const-string v15, "  Exiting #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v15, 0x20

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v15, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(C)V

    const-string v15, "    "

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v15}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .end local v2    # "i":I
    .end local v11    # "token":Lcom/android/server/wm/WindowToken;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_7
    const-string v15, "  Multi-Window information for this display"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v15, "  CenterBar: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v15}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v15, "  GlobalTasks"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v2, v15, -0x1

    .restart local v2    # "i":I
    :goto_4
    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    .local v8, "task":Lcom/android/server/wm/Task;
    const-string v15, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "TASK "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 3
    .param p1, "screenOrientation"    # I

    .prologue
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v0, v2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    .local v1, "temp":I
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    iget v2, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "temp":I
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    goto :goto_0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHomeStack: Returning null from this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    .local v2, "orientation":I
    if-eq v2, v5, :cond_0

    const/4 v8, 0x3

    if-ne v2, v8, :cond_1

    .local v5, "rotated":Z
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .local v4, "physWidth":I
    :goto_1
    if-eqz v5, :cond_3

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .local v3, "physHeight":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .local v7, "width":I
    sub-int v8, v4, v7

    div-int/lit8 v1, v8, 0x2

    .local v1, "left":I
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .local v0, "height":I
    sub-int v8, v3, v0

    div-int/lit8 v6, v8, 0x2

    .local v6, "top":I
    add-int v8, v1, v7

    add-int v9, v6, v0

    invoke-virtual {p1, v1, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v3    # "physHeight":I
    .end local v4    # "physWidth":I
    .end local v5    # "rotated":Z
    .end local v6    # "top":I
    .end local v7    # "width":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .restart local v5    # "rotated":Z
    :cond_2
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1

    .restart local v4    # "physWidth":I
    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_2
.end method

.method getStackInfo(Lcom/android/server/wm/TaskStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    new-instance v0, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .local v0, "info":Landroid/app/ActivityManager$StackInfo;
    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    iput v1, v0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackType:I

    iput v1, v0, Landroid/app/ActivityManager$StackInfo;->stackType:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method getStackInfos()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackInfo(Lcom/android/server/wm/TaskStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackInfo(Lcom/android/server/wm/TaskStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method getZoneBounds(Landroid/graphics/Rect;I)V
    .locals 3
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "zone"    # I

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .local v0, "orientation":I
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_2
    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hasAccess(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method hideAllBackgoundDimLayer()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->hideBackgoundLayer()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method isAnimating()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_1
    return v2

    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method isDimming()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetDimming()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetVisibleWindow()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetVisibleWindow()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resize(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resizeWeight(Ljava/util/ArrayList;Z)Z
    .locals 1
    .param p2, "isIsolated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "weight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v0, 0x1

    return v0
.end method

.method setCenterBarPoint(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "centerPoint"    # Landroid/graphics/Point;

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V
    .locals 8
    .param p1, "focusedStack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {p1, v7}, Lcom/android/server/wm/TaskStack;->isFloatingStack(Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7dd

    if-eq v4, v5, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x832

    if-ne v4, v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_2

    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    return-void
.end method

.method stackIdFromPoint(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v1, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_1
    return v2

    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method stopDimmingIfNeeded()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method switchUserStacks(I)V
    .locals 5
    .param p1, "newUserId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .local v3, "windows":Lcom/android/server/wm/WindowList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskStack;->switchUser(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
