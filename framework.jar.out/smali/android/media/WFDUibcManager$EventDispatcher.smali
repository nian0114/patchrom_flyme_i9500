.class Landroid/media/WFDUibcManager$EventDispatcher;
.super Landroid/media/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final CAMERA_0:I

.field private final CAMERA_180:I

.field private final CAMERA_270:I

.field private final CAMERA_90:I

.field private Me_X:F

.field private Me_Y:F

.field private Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

.field private Ratio_LCD:F

.field private Ratio_WFD:F

.field private aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private activityManager:Landroid/app/ActivityManager;

.field private bCap:Z

.field private bNum:Z

.field private bScroll:Z

.field private bSim:Z

.field private configuration:Landroid/content/res/Configuration;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private ev:Landroid/view/InputEvent;

.field private first_KeyDown:Z

.field private foregroundCamera:Z

.field private kH:F

.field private kW:F

.field private kX:F

.field private kY:F

.field private ke:Landroid/view/KeyEvent;

.field private last_Ke:Landroid/view/KeyEvent;

.field private mFlag:I

.field private mKeyDownTime:J

.field private mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

.field private mKeyUpTime:J

.field private mMetaFlag:I

.field private mRepeatCnt:I

.field private mTouchDownTime:J

.field private me:Landroid/view/MotionEvent;

.field public volatile running:Z

.field final synthetic this$0:Landroid/media/WFDUibcManager;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0, p1, v1}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->first_KeyDown:Z

    sget-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iput v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_0:I

    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_90:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_180:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_270:I

    iput v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bSim:Z

    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bNum:Z

    iput-boolean v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bScroll:Z

    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyUpTime:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    iput v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    return-void
.end method

.method private handleCameraTouch(I)V
    .locals 14
    .param p1, "i"    # I

    .prologue
    const/16 v13, 0x2d

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const v9, 0x38d1b717    # 1.0E-4f

    const/4 v10, 0x1

    const/4 v0, -0x1

    .local v0, "mCameraOrientation":I
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v6

    .local v6, "rotation":I
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lt v7, v13, :cond_1

    :cond_0
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x13b

    if-le v7, v8, :cond_4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v6

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v7, 0x2

    if-ne v0, v7, :cond_a

    :cond_2
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v2, v7, v8

    .local v2, "newWidth":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    div-float v5, v7, v11

    .local v5, "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .local v3, "normX":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .end local v2    # "newWidth":F
    .end local v3    # "normX":F
    .end local v5    # "pad":F
    :goto_1
    if-nez v0, :cond_9

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lt v7, v13, :cond_5

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-ge v7, v8, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-lt v7, v8, :cond_6

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0xe1

    if-ge v7, v8, :cond_6

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_7
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v1, v7, v8

    .local v1, "newHeight":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v1

    div-float v5, v7, v11

    .restart local v5    # "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v7, v8

    .local v4, "normY":F
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v4, v5

    div-float/2addr v8, v1

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_1

    .end local v1    # "newHeight":F
    .end local v4    # "normY":F
    .end local v5    # "pad":F
    :cond_8
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_2

    :cond_a
    if-eq v0, v10, :cond_b

    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    :cond_b
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v2, v7, v8

    .restart local v2    # "newWidth":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    div-float v5, v7, v11

    .restart local v5    # "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .restart local v3    # "normX":F
    if-ne v0, v10, :cond_c

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    sub-float v9, v3, v5

    div-float/2addr v9, v2

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    :goto_3
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_2

    :cond_c
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v9, v9, p1

    iget v9, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    goto :goto_3
.end method

.method private handleKeyEvent()V
    .locals 26

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    .local v16, "NewKE":Landroid/view/KeyEvent;
    const/16 v20, -0x1

    .local v20, "fndKyIndex":I
    const/16 v19, -0x1

    .local v19, "empKyIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v13

    .local v13, "displayId":I
    if-gez v13, :cond_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v18

    .local v18, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v17

    .local v17, "arr$":[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget v22, v17, v21

    .local v22, "id":I
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move/from16 v13, v22

    .end local v17    # "arr$":[I
    .end local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v21    # "i$":I
    .end local v22    # "id":I
    .end local v23    # "len$":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :goto_1
    return-void

    .restart local v17    # "arr$":[I
    .restart local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v21    # "i$":I
    .restart local v22    # "id":I
    .restart local v23    # "len$":I
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .end local v17    # "arr$":[I
    .end local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v21    # "i$":I
    .end local v22    # "id":I
    .end local v23    # "len$":I
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_18

    const/16 v25, 0x0

    .local v25, "rCnt":I
    :goto_2
    const/16 v2, 0xf

    move/from16 v0, v25

    if-ge v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    move/from16 v19, v25

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_4

    move/from16 v20, v25

    :cond_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    :cond_5
    if-gez v20, :cond_16

    if-ltz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v4, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v19

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1002(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_8
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_c
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x1000

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x2000

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_e
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x4000

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_f
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .end local v25    # "rCnt":I
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    :cond_11
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_14

    :cond_12
    new-instance v24, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v24, "mintent":Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "finish"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_27

    const-string v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v24    # "mintent":Landroid/content/Intent;
    :cond_14
    if-ltz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const-wide/16 v4, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v4, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1002(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    goto/16 :goto_1

    .restart local v25    # "rCnt":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$976(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # operator++ for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1008(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1000(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    const/16 v3, 0x80

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$976(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$800(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v3, v3, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$900(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1000(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    goto/16 :goto_3

    .end local v25    # "rCnt":I
    :cond_18
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    const/16 v25, 0x0

    .restart local v25    # "rCnt":I
    :goto_6
    const/16 v2, 0xf

    move/from16 v0, v25

    if-ge v0, v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v25

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_19

    move/from16 v20, v25

    :cond_19
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    :cond_1a
    if-ltz v20, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v2, v2, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$800(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v3, v3, v20

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$900(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1b

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x41

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_1c
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x81

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_1d
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_1e

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_20

    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_1f
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x21

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_20
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_21

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_23

    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x1001

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x2001

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_22
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x4001

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_23
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v2, v2, -0x9

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_24
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v2, v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto/16 :goto_4

    :cond_25
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    goto/16 :goto_7

    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const v3, -0x100001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x101

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto/16 :goto_4

    .end local v25    # "rCnt":I
    .restart local v24    # "mintent":Landroid/content/Intent;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_13

    const-string v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_5
.end method

.method private handleMotionEvent()V
    .locals 46

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v36, v0

    check-cast v36, Landroid/view/MotionEvent;

    .local v36, "newEv":Landroid/view/MotionEvent;
    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->first_KeyDown:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v12

    .local v12, "displayId":I
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v12, :cond_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v24

    .local v24, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v21

    .local v21, "arr$":[I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    .local v34, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    aget v28, v21, v27

    .local v28, "id":I
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move/from16 v12, v28

    .end local v21    # "arr$":[I
    .end local v24    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v27    # "i$":I
    .end local v28    # "id":I
    .end local v34    # "len$":I
    :cond_0
    if-gez v12, :cond_2

    const-string v2, "WFDUibcManager"

    const-string v3, "displayId not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .restart local v21    # "arr$":[I
    .restart local v24    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v27    # "i$":I
    .restart local v28    # "id":I
    .restart local v34    # "len$":I
    :cond_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .end local v21    # "arr$":[I
    .end local v24    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v27    # "i$":I
    .end local v28    # "id":I
    .end local v34    # "len$":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v29

    .local v29, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v45, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v45

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .end local v45    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    :cond_5
    :goto_2
    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0xa

    const/16 v16, 0x0

    const/16 v17, 0x2002

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/hardware/display/DisplayManager;

    .local v35, "mDm":Landroid/hardware/display/DisplayManager;
    invoke-virtual/range {v35 .. v35}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v42

    .local v42, "presentationDisplays":[Landroid/view/Display;
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received displays amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    .local v26, "i":I
    :goto_3
    move-object/from16 v0, v42

    array-length v2, v0

    move/from16 v0, v26

    if-ge v0, v2, :cond_5

    aget-object v23, v42, v26

    .local v23, "display":Landroid/view/Display;
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-ne v12, v2, :cond_8

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "presentation display found, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v43, -0x1

    .local v43, "presentationId":I
    :try_start_0
    # getter for: Landroid/media/WFDUibcManager;->DISPLAY_MAP:Ljava/util/HashMap;
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    # getter for: Landroid/media/WFDUibcManager;->DISPLAY_MAP:Ljava/util/HashMap;
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v43

    :cond_7
    :goto_4
    const/4 v2, -0x1

    move/from16 v0, v43

    if-eq v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v2, Landroid/media/WFDUibcManager$UIBC_Mode;->PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    goto/16 :goto_2

    :catch_0
    move-exception v25

    .local v25, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display name too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Use default UIBC."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v43, -0x1

    goto :goto_4

    .end local v25    # "e":Ljava/lang/IllegalArgumentException;
    .end local v43    # "presentationId":I
    :cond_8
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .end local v23    # "display":Landroid/view/Display;
    .end local v26    # "i":I
    .end local v35    # "mDm":Landroid/hardware/display/DisplayManager;
    .end local v42    # "presentationDisplays":[Landroid/view/Display;
    :cond_9
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v32, v2, v3

    .local v32, "kX":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v33, v2, v3

    .local v33, "kY":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v30, v2, v3

    .local v30, "kH":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v31, v2, v3

    .local v31, "kW":F
    const/high16 v19, 0x3f800000    # 1.0f

    .local v19, "Me_X":F
    const/high16 v20, 0x3f800000    # 1.0f

    .local v20, "Me_Y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    .local v22, "count":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v26

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v26

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    sget-object v2, Landroid/media/WFDUibcManager$3;->$SwitchMap$android$media$WFDUibcManager$UIBC_Mode:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v3}, Landroid/media/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v31

    div-float v38, v2, v30

    .local v38, "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v38

    const/high16 v3, 0x40000000    # 2.0f

    div-float v41, v2, v3

    .local v41, "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v39, v2, v3

    .local v39, "normX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v39, v41

    div-float v3, v3, v38

    mul-float v19, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .end local v38    # "newWidth":F
    .end local v39    # "normX":F
    .end local v41    # "pad":F
    :cond_a
    :goto_6
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_5

    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/media/WFDUibcManager$EventDispatcher;->handleCameraTouch(I)V

    goto :goto_6

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v19, v32, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_6

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v44

    .local v44, "rotation":I
    if-nez v44, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v3, v3, v32

    sub-float v19, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v20, v33, v2

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x3

    move/from16 v0, v44

    if-ne v0, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v3, v32

    sub-float v19, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v3, v3, v33

    sub-float v20, v2, v3

    goto :goto_7

    :cond_c
    const/4 v2, 0x2

    move/from16 v0, v44

    if-ne v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v19, v32, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v3, v33

    sub-float v20, v2, v3

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v19, v32, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    goto :goto_7

    .end local v44    # "rotation":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v19, v32, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v30

    div-float v37, v2, v31

    .local v37, "newHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v37

    const/high16 v3, 0x40000000    # 2.0f

    div-float v41, v2, v3

    .restart local v41    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v40, v2, v3

    .local v40, "normY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v19, v32, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v40, v41

    div-float v3, v3, v37

    mul-float v20, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .end local v37    # "newHeight":F
    .end local v40    # "normY":F
    .end local v41    # "pad":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v32

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v33

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v31

    div-float v38, v2, v30

    .restart local v38    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v38

    const/high16 v3, 0x40000000    # 2.0f

    div-float v41, v2, v3

    .restart local v41    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v26

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v39, v2, v3

    .restart local v39    # "normX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v39, v41

    mul-float/2addr v2, v3

    div-float v19, v2, v38

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v39, v41

    mul-float/2addr v4, v5

    div-float v4, v4, v38

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v33

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .end local v38    # "newWidth":F
    .end local v39    # "normX":F
    .end local v41    # "pad":F
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_WFD:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Ratio_LCD:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v19, v32, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v20, v33, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v32

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v26

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v33

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_12
    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    :cond_13
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xf

    const/16 v3, 0xa

    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-array v1, v4, [Landroid/media/WFDUibcManager$Keyevnt_arrC;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    new-instance v2, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    iget-object v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;-><init>(Landroid/media/WFDUibcManager;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v1, v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    const-wide/16 v2, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v1, v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v1, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$1002(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:[Landroid/media/WFDUibcManager$Keyevnt_arrC;

    aget-object v1, v1, v0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v1, v5}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    :cond_3
    :goto_3
    iget-boolean v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v1

    iput-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleMotionEvent()V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleKeyEvent()V

    goto :goto_3

    :cond_5
    return-void
.end method
