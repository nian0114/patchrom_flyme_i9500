.class Lcom/android/server/enterprise/security/PasswordPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .local v2, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;->getSendingUserId()I

    move-result v9

    .local v9, "sendingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .local v4, "currentUserId":I
    const-string v13, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnTimeout(I)V
    invoke-static {v13, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$000(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    :cond_0
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return-void

    :cond_1
    const-string v13, "android.intent.action.USER_STARTED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "android.intent.extra.user_handle"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .local v8, "newCurrentUser":I
    if-ltz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnStart(I)V
    invoke-static {v13, v8}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$100(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_0

    .end local v8    # "newCurrentUser":I
    :cond_2
    const-string v13, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "android.intent.extra.user_handle"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .restart local v8    # "newCurrentUser":I
    if-ltz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnSwitch(I)V
    invoke-static {v13, v8}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$200(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_0

    .end local v8    # "newCurrentUser":I
    :cond_3
    const-string v13, "android.intent.action.USER_REMOVED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "android.intent.extra.user_handle"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .local v12, "userId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-virtual {v13, v12}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    goto :goto_0

    .end local v12    # "userId":I
    :cond_4
    const-string v13, "android.intent.action.PHONE_STATE"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;
    invoke-static {v13}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$300(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededAfterCall(I)V
    invoke-static {v13, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$400(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_0

    :cond_5
    const-string v13, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "PasswordPolicy"

    const-string v14, "Received MDM_PASSWORD_EXPIRING_NOTIFICATION intent"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    move-object/from16 v0, p2

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->isMDMAdmin(Landroid/content/Intent;I)Z
    invoke-static {v14, v0, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$500(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/Intent;I)Z

    move-result v14

    if-ne v13, v14, :cond_0

    const-string v13, "expiration"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .local v6, "expiration":J
    const-wide/16 v14, -0x1

    cmp-long v13, v6, v14

    if-eqz v13, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v13, v6, v14

    if-lez v13, :cond_7

    :cond_6
    const-string v13, "PasswordPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "In grace period or failed to get "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v13, "PasswordPolicy"

    const-string v14, "Password expired already so launching password screen"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x64

    if-ge v9, v13, :cond_8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .local v3, "am":Landroid/app/IActivityManager;
    const-string v13, "com.android.settings"

    invoke-interface {v3, v13, v9}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "am":Landroid/app/IActivityManager;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v14, 0x0

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z
    invoke-static {v13, v14, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$600(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z

    goto/16 :goto_0

    :catch_0
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    const-string v13, "PasswordPolicy"

    const-string v14, "forceStopPackage failed"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
