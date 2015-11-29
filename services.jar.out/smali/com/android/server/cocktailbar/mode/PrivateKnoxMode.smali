.class public Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateKnoxMode.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentUserId:I

.field private mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "br"    # Landroid/content/BroadcastReceiver;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;
    .param p5, "serviceListener"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    iput-object p5, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0}, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedCocktailType()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "knoxmode"

    return-object v0
.end method

.method isEnableMode()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x64

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .local v7, "action":Ljava/lang/String;
    const-string v0, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "userId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "userId":I
    sget-object v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT_ACTION_LAUNCH_INFO : reason = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "currentUserType":I
    const/4 v4, 0x0

    .local v4, "newUserType":I
    const/4 v5, 0x0

    .local v5, "modeId":I
    if-lt v2, v8, :cond_2

    iget v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    if-ge v0, v8, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x100

    const/4 v5, 0x2

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v1, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V

    iput v2, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    const/4 v0, 0x1

    .end local v2    # "userId":I
    .end local v3    # "currentUserType":I
    .end local v4    # "newUserType":I
    .end local v5    # "modeId":I
    :goto_2
    return v0

    .restart local v2    # "userId":I
    .restart local v3    # "currentUserType":I
    .restart local v4    # "newUserType":I
    .restart local v5    # "modeId":I
    :cond_1
    const/16 v3, 0x100

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    if-lt v0, v8, :cond_0

    if-ge v2, v8, :cond_0

    const/16 v3, 0x100

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_1

    .end local v2    # "userId":I
    .end local v3    # "currentUserType":I
    .end local v4    # "newUserType":I
    .end local v5    # "modeId":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
