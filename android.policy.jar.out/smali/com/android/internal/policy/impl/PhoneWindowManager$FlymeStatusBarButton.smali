.class Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlymeStatusBarButton"
.end annotation


# instance fields
.field private mIsNavButtonVisible:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 0
    .param p2, "visible"    # Z

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;->mIsNavButtonVisible:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getFlymeStatusBarService()Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v1

    .local v1, "statusbar":Lmeizu/statusbar/IFlymeStatusBarService;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;->mIsNavButtonVisible:Z

    invoke-interface {v1, v2}, Lmeizu/statusbar/IFlymeStatusBarService;->setNavButtonVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statusbar":Lmeizu/statusbar/IFlymeStatusBarService;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    goto :goto_0
.end method
