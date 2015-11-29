.class public Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;
.super Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.source "OverlayCocktailBarStatePolicy.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;-><init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getBackgroundType()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "handleNotifyCurrentStateToBinder"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_VISIBILITY:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_POSITION:I

    or-int/2addr v1, v2

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_LOCK_STATE:I

    or-int/2addr v1, v2

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, p1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    return-void
.end method

.method public handleNotifyState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    return-void
.end method

.method public handleRefreshState()V
    .locals 0

    .prologue
    return-void
.end method

.method public handleUpdateActivate(Z)V
    .locals 3
    .param p1, "activate"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, p1, :cond_0

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iput-boolean p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_ACTIVATE:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_0
    return-void
.end method

.method public handleUpdatePosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdatePosition: mPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    if-eq v1, p1, :cond_0

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iput p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_POSITION:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_0
    return-void
.end method

.method public handleUpdateState(ZZ)V
    .locals 0
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    return-void
.end method

.method public handleUpdateStateFromSystem(I)V
    .locals 0
    .param p1, "windowType"    # I

    .prologue
    return-void
.end method

.method public handleUpdateVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateVisibility: mVisibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-eq v1, p1, :cond_0

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_VISIBILITY:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput p1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_0
    return-void
.end method
