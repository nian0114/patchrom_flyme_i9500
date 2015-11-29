.class public Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;
.super Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.source "EdgeCocktailBarStatePolicy.java"


# static fields
.field private static final COCKTAIL_BAR_STATE_LOCK_SHOW_BY_APP:I = 0x20000

.field private static final COCKTAIL_BAR_STATE_LOCK_SHOW_BY_SYSTEM:I = 0x10000

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final COCKTAIL_BAR_SHOWING_DURATION:I

.field private mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

.field private mDimBackground:Z

.field private mNesting:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;-><init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->COCKTAIL_BAR_SHOWING_DURATION:I

    iput-boolean v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    iput v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    return-void
.end method

.method private beginCheckStateInfo()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    :cond_0
    return-void
.end method

.method private canUpdateVisibility(III)Z
    .locals 5
    .param p1, "windowType"    # I
    .param p2, "visibility"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne p2, v2, :cond_1

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "canUpdateVisibility: visibility is same as the current one"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p2, :pswitch_data_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canUpdateVisibility: invalide type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/2addr v2, p3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private compareStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I
    .locals 3
    .param p1, "a"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .param p2, "b"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    const/4 v0, 0x0

    .local v0, "changeFlag":I
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_VISIBILITY:I

    or-int/2addr v0, v1

    :cond_0
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    if-eq v1, v2, :cond_1

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_BACKGROUND_TYPE:I

    or-int/2addr v0, v1

    :cond_1
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    if-eq v1, v2, :cond_2

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_LOCK_STATE:I

    or-int/2addr v0, v1

    :cond_2
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    if-eq v1, v2, :cond_3

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_MODE:I

    or-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iget-boolean v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, v2, :cond_4

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    or-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method private finishCheckStateInfo()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    :cond_0
    return-void
.end method

.method private getChangeFlagOfStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I
    .locals 1
    .param p1, "StateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mNesting:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mBackupStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->compareStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToRefreshHideTimer(I)Z
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToUpdateVisibility(III)Z
    .locals 5
    .param p1, "windowType"    # I
    .param p2, "visibility"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne p2, v2, :cond_1

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "needToUpdateVisibility: visibility is same as the current one"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p2, :pswitch_data_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToUpdateVisibility: invalid type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/2addr v2, p3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCocktailBarVisibility(I)Z
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne v1, p1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "updateCocktailBarVisibility : skip"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->changeCocktailBarVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCocktailBarVisibility : RemoteException + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDimBackground : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundType()I
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .local v0, "bgType":I
    :goto_0
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackgroundType: bgType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimBackground = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .end local v0    # "bgType":I
    :pswitch_0
    const/4 v0, 0x2

    .restart local v0    # "bgType":I
    goto :goto_0

    .end local v0    # "bgType":I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0    # "bgType":I
    goto :goto_0

    .end local v0    # "bgType":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "bgType":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "handleNotifyCurrentStateToBinder"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_VISIBILITY:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_BACKGROUND_TYPE:I

    or-int/2addr v1, v2

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_LOCK_STATE:I

    or-int/2addr v1, v2

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_MODE:I

    or-int/2addr v1, v2

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, p1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    return-void
.end method

.method public handleNotifyState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNotifyCurrentState : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_BACKGROUND_TYPE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    :cond_0
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_POSITION:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    :cond_1
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_LOCK_STATE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    :cond_2
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_MODE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    :cond_3
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iput-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    :cond_4
    iput p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    return-void
.end method

.method public handleRefreshState()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRefreshState: mWindowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/high16 v1, 0x30000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0
.end method

.method public handleUpdateActivate(Z)V
    .locals 4
    .param p1, "activate"    # Z

    .prologue
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLockState: mActivate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " activate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, p1, :cond_0

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iput-boolean p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_0
    return-void
.end method

.method public handleUpdatePosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    return-void
.end method

.method public handleUpdateState(ZZ)V
    .locals 9
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    const v8, 0x30001

    const/high16 v7, 0x20000

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateStatus: shift = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dimBackground = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->beginCheckStateInfo()V

    const v0, 0x30001

    .local v0, "mask":I
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    if-nez p1, :cond_2

    invoke-virtual {p0, v7, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-direct {p0, v2, v5, v8}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    :cond_0
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .local v1, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getChangeFlagOfStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v2, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->finishCheckStateInfo()V

    return-void

    .end local v1    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v7, v2}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-direct {p0, v2, v6, v8}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    goto :goto_0
.end method

.method public handleUpdateStateFromSystem(I)V
    .locals 10
    .param p1, "windowType"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x10000

    const v7, 0x20001

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateStateFromSystem: Current Info windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateStateFromSystem: New windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->beginCheckStateInfo()V

    const v0, 0x20001

    .local v0, "mask":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    invoke-virtual {p0, v8, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v5, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .local v1, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getChangeFlagOfStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v2, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->finishCheckStateInfo()V

    return-void

    .end local v1    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    invoke-virtual {p0, v8, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v5, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v6, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-virtual {p0, v8, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    const/16 v2, 0xbb8

    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->refreshHideTimer(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->needToUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleUpdateVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const/16 v6, 0xbb8

    sget-object v3, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUpdateVisibility: visibility = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWindowType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->beginCheckStateInfo()V

    const/4 v2, -0x1

    .local v2, "timeout":I
    const v0, 0x30001

    .local v0, "mask":I
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->needToRefreshHideTimer(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->refreshHideTimer(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->startHideTimer(I)V

    :cond_0
    const/16 v2, 0xbb8

    :goto_0
    iget v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const v4, 0x30001

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .local v1, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v3

    iput v3, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getChangeFlagOfStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v3, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .end local v1    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->finishCheckStateInfo()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    goto :goto_0
.end method
