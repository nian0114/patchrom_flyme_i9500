.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;
.super Landroid/os/Handler;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const-string v8, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handler : message = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .local v0, "containerId":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .local v5, "userID":I
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # getter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    invoke-static {v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$100(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # getter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$300(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "syncMgrCn":Landroid/content/ComponentName;
    const-string v8, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handler / RESTART_EMAIL_APP : Enabling EAS ExchangeService user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v8, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # setter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    invoke-static {v8, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$102(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.email.EXCHANGE_INTENT"

    invoke-static {v0, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # getter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v10, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "syncMgrCn":Landroid/content/ComponentName;
    .end local v6    # "token":J
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # setter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z
    invoke-static {v8, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$402(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z

    goto :goto_0

    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "syncMgrCn":Landroid/content/ComponentName;
    .restart local v6    # "token":J
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "Handler / RESTART_EMAIL_APP : fail to restart ExchangeService. "

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
