.class Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
.super Lcom/samsung/android/quickconnect/IQuickConnectCallback$Stub;
.source "QuickConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/quickconnect/QuickConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuickConnectListenerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate$ListenerHandler;
    }
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/quickconnect/IQuickConnectCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    if-nez p2, :cond_0

    # getter for: Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/quickconnect/QuickConnectManager;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate$ListenerHandler;

    iget-object v2, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate$ListenerHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V

    iput-object v1, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onQuickConnectCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
