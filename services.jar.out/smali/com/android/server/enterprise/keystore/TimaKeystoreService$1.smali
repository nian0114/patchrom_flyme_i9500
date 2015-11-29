.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;
.super Landroid/content/BroadcastReceiver;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "userId":I
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent recevied: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v2, v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/misc/tima_keystore/user_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeystoreReceiver: Unable to remove user keys"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/misc/fips_tima_keystore/user_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeystoreReceiver: Unable to remove user keys from FipsTimaKeyStore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeystoreReceiver: Intent.ACTION_USER_ADDED received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V
    invoke-static {v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$400(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const-string v4, "defaultpackage"

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    invoke-static {v3, v2, v4, v7}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$500(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeystoreReceiver: Error enabling TimaKeyStore on container creation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mReceiver: Intent.ACTION_BOOT_COMPLETED received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ro.boot.security_mode"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "kapSupported":Ljava/lang/String;
    const-string v3, "NONE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v7}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->timaSetLicenseStatus(Z)Z

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->timaSetLicenseStatus(Z)Z

    goto/16 :goto_0
.end method
