.class public Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;
.super Ljava/lang/Object;
.source "CocktailPhoneWindowManager.java"


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_LAYOUT:Z = true

.field static final TAG:Ljava/lang/String; = "CocktailPhoneWindowManager"

.field static final mTmpCocktailDiffFrame:Landroid/graphics/Rect;

.field static final mTmpCocktailFrame:Landroid/graphics/Rect;

.field static final mTmpSubWindowFrame:Landroid/graphics/Rect;


# instance fields
.field private mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarDirection:I

.field private mCocktailCurrentSize:I

.field private mCocktailDeltaBottom:I

.field private mCocktailDeltaLeft:I

.field private mCocktailDeltaRight:I

.field private mCocktailShiftSize:I

.field private mCocktailSize:I

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field mHandler:Landroid/os/Handler;

.field private mInitCocktailBar:Z

.field private mOverscanScreenHeight:I

.field private mOverscanScreenLeft:I

.field private mOverscanScreenTop:I

.field private mOverscanScreenWidth:I

.field mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowType:I

.field private mPolicyWindowVisiblity:Z

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mInitCocktailBar:Z

    return-void
.end method

.method private checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "bCheckedNonOpaqueWindow"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x62

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_2

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_2

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v5, :cond_2

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, v4, :cond_3

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v4, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private getPolicyWindowType()I
    .locals 5

    .prologue
    const/4 v2, 0x5

    const/4 v4, -0x2

    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "policyLp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "policyAppLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .end local v0    # "policyAppLp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .restart local v1    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :sswitch_1
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v4, :cond_2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v4, :cond_2

    const/4 v2, 0x6

    goto :goto_0

    .end local v1    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d4 -> :sswitch_0
        0x7db -> :sswitch_2
    .end sparse-switch
.end method

.method private isTransientShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    return v0
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, "policyWindow":Z
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .end local v0    # "policyWindow":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v1, v3, :cond_1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x63

    if-gt v1, v2, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_1
    return-void

    .restart local v0    # "policyWindow":Z
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x89c -> :sswitch_0
        0x8ad -> :sswitch_0
        0x8ca -> :sswitch_0
        0x8cf -> :sswitch_0
        0x8d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public beginLayoutLw(IIIIIII)V
    .locals 16
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I
    .param p4, "overscanScreenLeft"    # I
    .param p5, "overscanScreenTop"    # I
    .param p6, "overscanScreenWidth"    # I
    .param p7, "overscanScreenHeight"    # I

    .prologue
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setForceHideStatusBar(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v15, v2, v3

    .local v15, "diff":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int v10, v2, v3

    .local v10, "appDiff":I
    packed-switch p3, :pswitch_data_0

    const/4 v11, 0x0

    .local v11, "cocktailBottom":I
    move v14, v11

    .local v14, "cocktailTop":I
    move v12, v11

    .local v12, "cocktailLeft":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .local v13, "cocktailRight":I
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v10, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2, v12, v13, v14, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateCocktailLayout(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    sget-object v9, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    invoke-interface/range {v2 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-string v2, "CocktailPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTmpCocktailBar frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .end local v11    # "cocktailBottom":I
    .end local v12    # "cocktailLeft":I
    .end local v13    # "cocktailRight":I
    .end local v14    # "cocktailTop":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setForceHideStatusBar(Z)V

    const/4 v11, 0x0

    .restart local v11    # "cocktailBottom":I
    move v13, v11

    .restart local v13    # "cocktailRight":I
    move v12, v11

    .restart local v12    # "cocktailLeft":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .restart local v14    # "cocktailTop":I
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    neg-int v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .end local v11    # "cocktailBottom":I
    .end local v12    # "cocktailLeft":I
    .end local v13    # "cocktailRight":I
    .end local v14    # "cocktailTop":I
    :pswitch_1
    const/4 v11, 0x0

    .restart local v11    # "cocktailBottom":I
    move v14, v11

    .restart local v14    # "cocktailTop":I
    move v13, v11

    .restart local v13    # "cocktailRight":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .restart local v12    # "cocktailLeft":I
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    goto/16 :goto_1

    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    neg-int v3, v15

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .end local v11    # "cocktailBottom":I
    .end local v12    # "cocktailLeft":I
    .end local v13    # "cocktailRight":I
    .end local v14    # "cocktailTop":I
    :pswitch_2
    const/4 v14, 0x0

    .restart local v14    # "cocktailTop":I
    move v13, v14

    .restart local v13    # "cocktailRight":I
    move v12, v14

    .restart local v12    # "cocktailLeft":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .restart local v11    # "cocktailBottom":I
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v4, p2, v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v4, p2, v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    goto/16 :goto_1

    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v4, p2, v4

    add-int v5, p2, v15

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    add-int v5, p1, v15

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- Cocktail Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailBarBackground="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowVisiblity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "changes":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->getPolicyWindowType()I

    move-result v1

    .local v1, "currentWindowType":I
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    if-eq v2, v1, :cond_1

    iput v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const-string v2, "CocktailPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishPostLayoutPolicyLw - mPolicyWindowType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailBarStateFromSystem(I)V

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iput v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .end local v1    # "currentWindowType":I
    :cond_1
    :goto_0
    return v0

    .restart local v1    # "currentWindowType":I
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iput v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    const/4 v0, 0x1

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iput v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getCocktailBarFrame()Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "cocktailFrame":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0

    :pswitch_0
    iget v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNonDecorAlphaScreenDisplayHeight(II)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    if-le p1, p2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int/2addr p2, v0

    :cond_0
    return p2
.end method

.method public getNonDecorAlphaScreenDisplayWidth(II)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    if-ge p1, p2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public getNonDecorDisplayHeight(II)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    if-le p1, p2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int/2addr p2, v0

    :cond_0
    return p2
.end method

.method public getNonDecorDisplayWidth(II)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    if-ge p1, p2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iput-object p4, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iput-object p5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    return-void
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "result"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .local v1, "keyCode":I
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    packed-switch v1, :pswitch_data_0

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isEdgeScreenWaked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->requestEdgeScreenWakeup(ZI)V

    if-ne v1, v5, :cond_1

    and-int/lit8 p2, p2, -0x2

    :cond_1
    :goto_1
    return p2

    .end local v0    # "down":Z
    .end local v1    # "keyCode":I
    :cond_2
    move v0, v3

    goto :goto_0

    .restart local v0    # "down":Z
    .restart local v1    # "keyCode":I
    :pswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->requestEdgeScreenWakeup(ZI)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x149
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isCocktailRotationAnimationNeeded()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isEdgeScreenWaked()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p5, "pf"    # Landroid/graphics/Rect;
    .param p6, "df"    # Landroid/graphics/Rect;
    .param p7, "of"    # Landroid/graphics/Rect;
    .param p8, "cf"    # Landroid/graphics/Rect;
    .param p9, "vf"    # Landroid/graphics/Rect;
    .param p10, "dcf"    # Landroid/graphics/Rect;

    .prologue
    move-object/from16 v0, p3

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_0

    if-nez p2, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p8

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p8

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p9

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p9

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p10

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p10

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :sswitch_0
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->setEmpty()V

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v9, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    move-object v2, p1

    move-object/from16 v8, p10

    invoke-interface/range {v2 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :sswitch_4
    iget v12, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    .local v12, "deltaLeft":I
    iget v13, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    .local v13, "deltaRight":I
    iget v11, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    .local v11, "deltaBottom":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;

    move-result-object v10

    .local v10, "cocktailFrame":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    if-eqz v2, :cond_2

    iget v12, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    :goto_2
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    if-eqz v2, :cond_3

    iget v13, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    :goto_3
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    if-eqz v2, :cond_4

    iget v11, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    .end local v10    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_1
    :goto_4
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p8

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p8

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p9

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p9

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p3

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dc

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v13

    move-object/from16 v0, p10

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v11

    move-object/from16 v0, p10

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .restart local v10    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_2
    iget v12, v10, Landroid/graphics/Rect;->left:I

    goto/16 :goto_2

    :cond_3
    iget v13, v10, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    :cond_4
    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .end local v10    # "cocktailFrame":Landroid/graphics/Rect;
    .end local v11    # "deltaBottom":I
    .end local v12    # "deltaLeft":I
    .end local v13    # "deltaRight":I
    :cond_5
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p8

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p8

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p9

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p9

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, p10

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p10

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_6
    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_5
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p10

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p10

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p10

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p10

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :sswitch_6
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p8

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_1
        0x7d4 -> :sswitch_2
        0x7db -> :sswitch_4
        0x7dc -> :sswitch_4
        0x7dd -> :sswitch_3
        0x8ac -> :sswitch_0
        0x8ad -> :sswitch_3
        0x8ca -> :sswitch_3
        0x8cf -> :sswitch_3
        0x8d4 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_5
        0x7d4 -> :sswitch_6
        0x7db -> :sswitch_5
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, -0x7

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    return v0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR BACKGROUND : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8ac
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public requestEdgeScreenWakeup(ZI)V
    .locals 2
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestTransientCocktailBar()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "CocktailPhoneWindowManager"

    const-string v2, "Not showing transient bar, becuase Factory mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailBarVisibility(I)V

    goto :goto_0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_a

    :cond_0
    const v0, 0x10a002d

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_2

    :cond_1
    const v0, 0x10a002f

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_c

    :cond_3
    const v0, 0x10a002e

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_5

    :cond_4
    const v0, 0x10a002b

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_c

    :cond_6
    const v0, 0x10a002a

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_8

    :cond_7
    const v0, 0x10a0029

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_c

    :cond_9
    const v0, 0x10a0028

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_c

    :cond_b
    const v0, 0x10a002c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "inputTargetWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mCurrentInputMethodTarget : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateCocktailBarVisibility(Z)Z
    .locals 6
    .param p1, "visibility"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .local v0, "changes":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eq v3, p1, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    const-string v3, "CocktailPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCocktailBarVisibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x19

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8ac
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
