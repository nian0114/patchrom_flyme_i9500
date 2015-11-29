.class Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDStorageEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/DirEncryptServiceHelper;
    .param p2, "x1"    # Lcom/android/server/DirEncryptServiceHelper$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "preventMetaCheckSDcard":Z
    const-string v3, "vold.decrypt"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "voldProperty":Ljava/lang/String;
    const-string v3, "trigger_default_encryption"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->access$500(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->access$500(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v3

    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChanged:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->access$600(Lcom/android/server/DirEncryptServiceHelper;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unmounted"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "removed"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    const-string v3, "unmounted"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->access$500(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->getUserDiff()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "MEDIA_UNMOUNTED + mDew.getUserDiff = true"

    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->access$500(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/dirEncryption/DirEncryptionWrapper;->setUserDiff(Z)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v3}, Lcom/android/server/DirEncryptServiceHelper;->access$500(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    return-void
.end method
