.class Lcom/sec/android/app/camera/ShareShot$3;
.super Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;
.source "ShareShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ShareShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ShareShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ShareShot;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-direct {p0}, Lcom/samsung/shareshot/IShareShotServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackTest(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    return-void
.end method

.method public onJoinInSuccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v0, "@"

    const-string v1, " on join sucess"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->setUserList(Ljava/util/List;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onLeaveOutSuccess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->destory()V

    .line 214
    return-void
.end method

.method public onRecvEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    return-void
.end method

.method public onServiceBinded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->setUserList(Ljava/util/List;)V

    .line 224
    :cond_0
    return-void
.end method

.method public onShareWithRequestReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/ShareShot;->searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;

    move-result-object v0

    .line 231
    .local v0, "user":Lcom/samsung/shareshot/User;
    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    # invokes: Lcom/sec/android/app/camera/ShareShot;->onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/ShareShot;->access$100(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/dmc/ux/db/UserInfo;)V

    goto :goto_0
.end method

.method public onTaskAdded(Lcom/samsung/dmc/ux/db/ProcessInfo;)V
    .locals 0
    .param p1, "processInfo"    # Lcom/samsung/dmc/ux/db/ProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    return-void
.end method

.method public onTaskEnded(Lcom/samsung/dmc/ux/db/ProcessInfo;)V
    .locals 6
    .param p1, "processInfo"    # Lcom/samsung/dmc/ux/db/ProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getStrFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->isSendTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/camera/ShareShot;->mReceived:Z

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getStrFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    .line 250
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 251
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x20

    iput v1, v0, Landroid/os/Message;->what:I

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/camera/ShareShot;->mReceived:Z

    goto :goto_0
.end method

.method public onTaskRemoved(Lcom/samsung/dmc/ux/db/ProcessInfo;)V
    .locals 0
    .param p1, "processInfo"    # Lcom/samsung/dmc/ux/db/ProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    return-void
.end method

.method public onTaskUpdated(Lcom/samsung/dmc/ux/db/ProcessInfo;)V
    .locals 0
    .param p1, "processInfo"    # Lcom/samsung/dmc/ux/db/ProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    return-void
.end method

.method public onUserActivated(Lcom/samsung/shareshot/User;I)V
    .locals 0
    .param p1, "user"    # Lcom/samsung/shareshot/User;
    .param p2, "activated"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    return-void
.end method

.method public onUserChanged(Lcom/samsung/shareshot/User;)V
    .locals 2
    .param p1, "user"    # Lcom/samsung/shareshot/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    const-string v0, "ShareShot"

    const-string v1, " on one user changed"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->changeUser(Lcom/samsung/shareshot/User;)V

    .line 278
    return-void
.end method

.method public onUserListChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "user":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const-string v0, "ShareShot"

    const-string v1, " on user list changed"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$3;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->setUserList(Ljava/util/List;)V

    .line 285
    return-void
.end method
