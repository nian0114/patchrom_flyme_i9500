.class Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiniModeInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 899
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 900
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 34
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 904
    const/4 v7, 0x0

    .line 906
    .local v7, "handled":Z
    :try_start_0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v30, v0

    if-eqz v30, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v30

    and-int/lit8 v30, v30, 0x2

    if-eqz v30, :cond_12

    .line 908
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v13, v0

    .line 909
    .local v13, "motionEvent":Landroid/view/MotionEvent;
    const/4 v7, 0x1

    .line 912
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawX()F

    move-result v28

    .line 913
    .local v28, "x":F
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawY()F

    move-result v29

    .line 915
    .local v29, "y":F
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v28

    .line 916
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v29

    .line 918
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 920
    .local v6, "action":I
    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v30, :cond_1

    .line 1070
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1072
    .end local v6    # "action":I
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    .end local v28    # "x":F
    .end local v29    # "y":F
    :goto_0
    return-void

    .line 924
    .restart local v6    # "action":I
    .restart local v13    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v28    # "x":F
    .restart local v29    # "y":F
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 926
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v27

    .line 927
    .local v27, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v30

    if-eqz v30, :cond_2

    const/16 v30, 0x1

    :goto_1
    move-object/from16 v0, v32

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v33

    move/from16 v4, v30

    # invokes: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FFLandroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$100(Lcom/android/server/wm/WindowManagerService;FFLandroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v23

    .line 928
    .local v23, "targetWin":Lcom/android/server/wm/WindowState;
    if-nez v23, :cond_3

    .line 929
    monitor-exit v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1070
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    .line 927
    .end local v23    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_2
    const/16 v30, 0x0

    goto :goto_1

    .line 932
    .restart local v23    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_3
    :try_start_3
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x834

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_4

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x836

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_15

    .line 934
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 935
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 938
    .local v8, "i":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v17, "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v14, "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 941
    .local v15, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    .line 942
    .local v5, "N":I
    const/16 v25, 0x0

    .line 943
    .local v25, "topWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v19, 0x0

    .line 944
    .local v19, "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v18, 0x0

    .line 945
    .local v18, "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v16, 0x0

    .line 946
    .local v16, "subTargetWin":Lcom/android/server/wm/WindowState;
    const/16 v26, 0x0

    .line 947
    .local v26, "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v11, v5, -0x1

    .local v11, "j":I
    :goto_2
    if-ltz v11, :cond_11

    .line 948
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 950
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x834

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x836

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 952
    :cond_5
    move-object/from16 v25, v26

    .line 956
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_13

    .line 957
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 958
    .local v9, "id":I
    if-gez v9, :cond_7

    .line 959
    const-string v30, "WindowManager"

    const-string v32, "    no targetWin in mWindows!!"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/16 v25, 0x0

    .line 966
    :goto_3
    if-eqz v25, :cond_11

    .line 970
    add-int/lit8 v20, v9, -0x1

    .line 971
    .local v20, "subUnderWinIndex":I
    :goto_4
    if-ltz v20, :cond_6

    .line 972
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 973
    .restart local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 981
    :cond_6
    :goto_5
    invoke-virtual {v15}, Ljava/util/Stack;->empty()Z

    move-result v30

    if-nez v30, :cond_9

    .line 982
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 983
    .restart local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1067
    .end local v5    # "N":I
    .end local v8    # "i":I
    .end local v9    # "id":I
    .end local v11    # "j":I
    .end local v14    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v15    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v17    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v18    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v19    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v20    # "subUnderWinIndex":I
    .end local v23    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v25    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    .end local v27    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v30

    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1070
    .end local v6    # "action":I
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    .end local v28    # "x":F
    .end local v29    # "y":F
    :catchall_1
    move-exception v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v30

    .line 963
    .restart local v5    # "N":I
    .restart local v6    # "action":I
    .restart local v8    # "i":I
    .restart local v9    # "id":I
    .restart local v11    # "j":I
    .restart local v13    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v14    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v15    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .restart local v17    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v18    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v19    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v23    # "targetWin":Lcom/android/server/wm/WindowState;
    .restart local v25    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    .restart local v27    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v28    # "x":F
    .restart local v29    # "y":F
    :cond_7
    :try_start_5
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 976
    .restart local v20    # "subUnderWinIndex":I
    :cond_8
    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 979
    add-int/lit8 v20, v20, -0x1

    goto :goto_4

    .line 985
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    sub-int v21, v9, v30

    .line 988
    .local v21, "subUpperWinIndex":I
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    :goto_6
    move/from16 v0, v21

    if-gt v0, v5, :cond_a

    .line 992
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 993
    .restart local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 1002
    :cond_a
    const-string v30, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "subTargetWinList = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_c

    .line 1004
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    sub-int v30, v30, v12

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1005
    .restart local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 996
    .end local v12    # "k":I
    :cond_b
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 997
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1009
    .restart local v12    # "k":I
    :cond_c
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v24

    .line 1010
    .local v24, "topIndex":I
    :goto_8
    move/from16 v0, v24

    if-gt v0, v5, :cond_d

    .line 1011
    add-int/lit8 v30, v24, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 1012
    .restart local v19    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    if-eqz v19, :cond_d

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1013
    move-object/from16 v18, v19

    .line 1014
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 1019
    :cond_d
    if-eqz v18, :cond_e

    .line 1020
    move-object/from16 v25, v18

    .line 1024
    :cond_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_f

    .line 1025
    const-string v30, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "revSubTargetWinList.size() = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1027
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_10

    .line 1028
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 1029
    .local v22, "subWinAtList":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    # invokes: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$200(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_9

    .line 1032
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    .end local v22    # "subWinAtList":Lcom/android/server/wm/WindowState;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    # invokes: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$200(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1036
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v30

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    # invokes: Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->access$300(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowList;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    .line 1067
    .end local v5    # "N":I
    .end local v8    # "i":I
    .end local v9    # "id":I
    .end local v11    # "j":I
    .end local v12    # "k":I
    .end local v14    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v15    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v17    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v18    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v19    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v20    # "subUnderWinIndex":I
    .end local v21    # "subUpperWinIndex":I
    .end local v24    # "topIndex":I
    .end local v25    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_11
    :goto_a
    monitor-exit v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1070
    .end local v6    # "action":I
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    .end local v23    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v27    # "windows":Lcom/android/server/wm/WindowList;
    .end local v28    # "x":F
    .end local v29    # "y":F
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_0

    .line 1046
    .restart local v5    # "N":I
    .restart local v6    # "action":I
    .restart local v8    # "i":I
    .restart local v11    # "j":I
    .restart local v13    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v14    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v15    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .restart local v17    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v18    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v19    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v23    # "targetWin":Lcom/android/server/wm/WindowState;
    .restart local v25    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    .restart local v27    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v28    # "x":F
    .restart local v29    # "y":F
    :cond_13
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_11

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v30

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_a

    .line 947
    :cond_14
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_2

    .line 1059
    .end local v5    # "N":I
    .end local v8    # "i":I
    .end local v11    # "j":I
    .end local v14    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v15    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v16    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v17    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v18    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v19    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v25    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_11

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v32

    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_11

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v30

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_a
.end method
