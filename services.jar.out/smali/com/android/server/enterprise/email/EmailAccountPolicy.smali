.class public Lcom/android/server/enterprise/email/EmailAccountPolicy;
.super Landroid/app/enterprise/IEmailAccountPolicy$Stub;
.source "EmailAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/EmailAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailAccountPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private preCallingUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    iput-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    const-string v4, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v3, p1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "callingUid":I
    iget v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "pkg":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    iput v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    const-string v3, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling UID changed :    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  callingUid   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;
    .locals 6
    .param p1, "info"    # Lcom/android/server/enterprise/email/AccountMetaData;

    .prologue
    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .local v0, "acc":Landroid/app/enterprise/Account;
    iget v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v1, v0, Landroid/app/enterprise/Account;->mId:I

    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    iget v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v1, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    iput-wide v4, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    iput-wide v4, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    iget v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v1, v0, Landroid/app/enterprise/Account;->mFlags:I

    iget-boolean v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v1, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    iput-object v2, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    new-instance v1, Landroid/app/enterprise/HostAuth;

    invoke-direct {v1}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v3, v1, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v4, v1, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    new-instance v1, Landroid/app/enterprise/HostAuth;

    invoke-direct {v1}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v3, v1, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v4, v1, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pop3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "imap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidIncomingProtocol returned  protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "smtp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidOutgoingProtocol returned  protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountMData"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "accountId"    # J
    .param p5, "doReCreate"    # Z
    .param p6, "updateField"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    const-wide/16 v2, -0x1

    .local v2, "id":J
    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EmailAccountPolicy"

    const-string v8, "updateAccount() : Error :: Failed during update"

    invoke-static {v1, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v4, v2

    .end local v2    # "id":J
    .local v4, "id":J
    :goto_0
    return-wide v4

    .end local v4    # "id":J
    .restart local v2    # "id":J
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz p5, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-object v8, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v1, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    move-wide v4, v2

    .end local v2    # "id":J
    .restart local v4    # "id":J
    goto :goto_0

    .end local v4    # "id":J
    .restart local v2    # "id":J
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "EmailAccountPolicy"

    const-string v8, "updateAccount() : failed. "

    invoke-static {v1, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method


# virtual methods
.method public addNewAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "inComingProtocol"    # Ljava/lang/String;
    .param p4, "inComingServerAddress"    # Ljava/lang/String;
    .param p5, "inComingServerPort"    # I
    .param p6, "inComingServerLogin"    # Ljava/lang/String;
    .param p7, "inComingServerPassword"    # Ljava/lang/String;
    .param p8, "outGoingProtocol"    # Ljava/lang/String;
    .param p9, "outGoingServerAddress"    # Ljava/lang/String;
    .param p10, "outGoingServerPort"    # I
    .param p11, "outGoingServerLogin"    # Ljava/lang/String;
    .param p12, "outGoingServerPassword"    # Ljava/lang/String;

    .prologue
    const-string v0, "EmailAccountPolicy"

    const-string v1, "addNewAccount() EX"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "Send from SamsungMobile"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v20}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .locals 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "inComingProtocol"    # Ljava/lang/String;
    .param p4, "inComingServerAddress"    # Ljava/lang/String;
    .param p5, "inComingServerPort"    # I
    .param p6, "inComingServerLogin"    # Ljava/lang/String;
    .param p7, "inComingServerPassword"    # Ljava/lang/String;
    .param p8, "outGoingProtocol"    # Ljava/lang/String;
    .param p9, "outGoingServerAddress"    # Ljava/lang/String;
    .param p10, "outGoingServerPort"    # I
    .param p11, "outGoingServerLogin"    # Ljava/lang/String;
    .param p12, "outGoingServerPassword"    # Ljava/lang/String;
    .param p13, "sendSSL"    # Z
    .param p14, "sendTLS"    # Z
    .param p15, "sendAllCert"    # Z
    .param p16, "recvSSL"    # Z
    .param p17, "recvTLS"    # Z
    .param p18, "recvAllCert"    # Z
    .param p19, "signature"    # Ljava/lang/String;
    .param p20, "isNotify"    # Z

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v4, "EmailAccountPolicy"

    const-string v5, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v22

    .local v22, "userID":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v11, "containerId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static/range {p12 .. p12}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p12

    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    if-eqz p2, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p4, :cond_0

    if-eqz p9, :cond_0

    if-eqz p3, :cond_0

    if-eqz p8, :cond_0

    const/4 v4, 0x1

    move/from16 v0, p5

    if-gt v4, v0, :cond_0

    const/4 v4, 0x1

    move/from16 v0, p10

    if-gt v4, v0, :cond_0

    if-eqz p11, :cond_0

    if-nez p6, :cond_1

    :cond_0
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    :goto_0
    return-wide v4

    :cond_1
    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_2
    const-string v19, "none"

    .local v19, "sendSecurityStr":Ljava/lang/String;
    const-string v18, "none"

    .local v18, "recvSecurityStr":Ljava/lang/String;
    if-eqz p13, :cond_3

    if-nez p14, :cond_3

    if-nez p15, :cond_3

    const-string v19, "ssl"

    :cond_3
    if-nez p13, :cond_4

    if-eqz p14, :cond_4

    if-nez p15, :cond_4

    const-string v19, "tls"

    :cond_4
    if-eqz p13, :cond_5

    if-nez p14, :cond_5

    if-eqz p15, :cond_5

    const-string v19, "ssl+trustallcerts"

    :cond_5
    if-nez p13, :cond_6

    if-eqz p14, :cond_6

    if-eqz p15, :cond_6

    const-string v19, "tls+trustallcerts"

    :cond_6
    if-eqz p16, :cond_7

    if-nez p17, :cond_7

    if-nez p18, :cond_7

    const-string v18, "ssl"

    :cond_7
    if-nez p16, :cond_8

    if-eqz p17, :cond_8

    if-nez p18, :cond_8

    const-string v18, "tls"

    :cond_8
    if-eqz p16, :cond_9

    if-nez p17, :cond_9

    if-eqz p18, :cond_9

    const-string v18, "ssl+trustallcerts"

    :cond_9
    if-nez p16, :cond_a

    if-eqz p17, :cond_a

    if-eqz p18, :cond_a

    const-string v18, "tls+trustallcerts"

    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .local v20, "token":J
    :try_start_0
    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNewAccount() EX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Landroid/content/Intent;

    const-string v4, "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

    invoke-static {v11, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v14

    .local v14, "accOutgoingID":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    .local v12, "accIncomingID":J
    const-string v4, "account_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "user_id"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user_passwd_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "outgoing_user_passwd_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "service"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "outgoing_service"

    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "receive_host"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "receive_security"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "receive_port"

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "send_host"

    move-object/from16 v0, v17

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "send_security"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "send_port"

    move-object/from16 v0, v17

    move/from16 v1, p10

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "sender_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "outgoing_sender_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p11

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "signature"

    move-object/from16 v0, v17

    move-object/from16 v1, p19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "notify"

    move-object/from16 v0, v17

    move/from16 v1, p20

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " addNewAccount_ex() : sent intent to Email app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v12    # "accIncomingID":J
    .end local v14    # "accOutgoingID":J
    .end local v17    # "intent":Landroid/content/Intent;
    :goto_1
    const-string v4, "EmailAccountPolicy"

    const-string v5, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email + recvSecurityStr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v16

    .local v16, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount_ex() : "

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v16    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public addNewAccount_new(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/EmailAccount;)J
    .locals 34
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "account"    # Landroid/app/enterprise/EmailAccount;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v4, "EmailAccountPolicy"

    const-string v5, ">>>>>>>>>>>>>>>>>\t\taddNewAccount NEW "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v30

    .local v30, "userID":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v11, "containerId":I
    if-nez p2, :cond_0

    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() NEW : Error :: Invalid Account."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    :goto_0
    return-wide v4

    :cond_0
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mEmailAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "emailAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "inComingServerAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "outGoingServerAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingProtocol:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "inComingProtocol":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingProtocol:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, "outGoingProtocol":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "inComingServerLogin":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerLogin:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "outGoingServerLogin":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerPassword:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "inComingServerPassword":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerPassword:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .local v24, "outGoingServerPassword":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerPort:I

    move/from16 v19, v0

    .local v19, "inComingServerPort":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerPort:I

    move/from16 v25, v0

    .local v25, "outGoingServerPort":I
    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v7, :cond_1

    if-eqz v22, :cond_1

    if-eqz v8, :cond_1

    if-eqz v21, :cond_1

    const/4 v4, 0x1

    move/from16 v0, v19

    if-gt v4, v0, :cond_1

    const/4 v4, 0x1

    move/from16 v0, v25

    if-gt v4, v0, :cond_1

    if-eqz v23, :cond_1

    if-nez v17, :cond_2

    :cond_1
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() NEW : Error :: Invalid input parameters."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v32, 0x0

    cmp-long v4, v4, v32

    if-lez v4, :cond_3

    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() NEW : Error :: Account already exists."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    goto/16 :goto_0

    :cond_3
    const-string v27, "none"

    .local v27, "sendSecurityStr":Ljava/lang/String;
    const-string v26, "none"

    .local v26, "recvSecurityStr":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseSSL:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseTLS:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerAcceptAllCertificates:Z

    if-nez v4, :cond_4

    const-string v27, "ssl"

    :cond_4
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseSSL:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseTLS:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerAcceptAllCertificates:Z

    if-nez v4, :cond_5

    const-string v27, "tls"

    :cond_5
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseSSL:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseTLS:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_6

    const-string v27, "ssl+trustallcerts"

    :cond_6
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseSSL:Z

    if-nez v4, :cond_7

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseTLS:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_7

    const-string v27, "tls+trustallcerts"

    :cond_7
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseSSL:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseTLS:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerAcceptAllCertificates:Z

    if-nez v4, :cond_8

    const-string v26, "ssl"

    :cond_8
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseSSL:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseTLS:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerAcceptAllCertificates:Z

    if-nez v4, :cond_9

    const-string v26, "tls"

    :cond_9
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseSSL:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseTLS:Z

    if-nez v4, :cond_a

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_a

    const-string v26, "ssl+trustallcerts"

    :cond_a
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseSSL:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseTLS:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_b

    const-string v26, "tls+trustallcerts"

    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .local v28, "token":J
    :try_start_0
    new-instance v20, Landroid/content/Intent;

    const-string v4, "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

    invoke-static {v11, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v14

    .local v14, "accOutgoingID":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    .local v12, "accIncomingID":J
    const-string v4, "account_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user_passwd_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "outgoing_user_passwd_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "service"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "outgoing_service"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "receive_host"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "receive_security"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "receive_port"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "send_host"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "send_security"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "send_port"

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "sender_name"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "outgoing_sender_name"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "signature"

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/app/enterprise/EmailAccount;->mSignature:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "notify"

    move-object/from16 v0, p2

    iget-boolean v5, v0, Landroid/app/enterprise/EmailAccount;->mIsNotify:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v30

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " addNewAccount() NEW : sent intent to Email app : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v12    # "accIncomingID":J
    .end local v14    # "accOutgoingID":J
    .end local v20    # "intent":Landroid/content/Intent;
    :goto_1
    const-string v4, "EmailAccountPolicy"

    const-string v5, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email +  recvSecurityStr "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v16

    .local v16, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() NEW :  failed. "

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v16    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public deleteAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v5, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .local v14, "userID":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v6, "containerId":I
    const/4 v10, 0x0

    .local v10, "ret":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    const-string v15, "EmailAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "deleteAccount() : accId "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",  userID :  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_0

    const-string v15, "EmailAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "deleteAccount() : No exist accId : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .end local v10    # "ret":Z
    .local v11, "ret":I
    :goto_0
    return v11

    .end local v11    # "ret":I
    .restart local v10    # "ret":Z
    :cond_0
    if-eqz v4, :cond_2

    iget-boolean v15, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-nez v15, :cond_2

    const-string v15, "device_account_policy"

    invoke-static {v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .local v7, "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v7, :cond_1

    const-string v15, "com.android.email"

    iget-object v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v15, v0, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "EmailAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "deleteAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .restart local v11    # "ret":I
    goto :goto_0

    .end local v11    # "ret":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "token":J
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    const-string v15, "android.intent.action.sec.DELETE_ACCOUNT_FROM_MDM"

    invoke-static {v6, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "intent":Landroid/content/Intent;
    const-string v15, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v9, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v15, "user_id"

    iget-object v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "service"

    iget-object v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "receive_host"

    iget-object v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string v17, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v9, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v7    # "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v12    # "token":J
    :cond_2
    :goto_1
    move v11, v10

    .restart local v11    # "ret":I
    goto/16 :goto_0

    .end local v11    # "ret":I
    .restart local v7    # "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .restart local v12    # "token":J
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v15, "EmailAccountPolicy"

    const-string v16, "deleteAccount() : failed. "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
.end method

.method public getAccountDetails(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/Account;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountDetails() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p1, p2, p3, v1, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailId"    # Ljava/lang/String;
    .param p3, "serverAddress"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEmailAccounts(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/Account;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v9, "EmailAccountPolicy"

    const-string v10, "getAllEmailAccounts()"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/Account;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIds(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)[J

    move-result-object v6

    .local v6, "ids":[J
    if-eqz v6, :cond_1

    move-object v1, v6

    .local v1, "arr$":[J
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_2

    aget-wide v4, v1, v3

    .local v4, "id":J
    iget-object v9, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {p1, v4, v5, v9, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-nez v9, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v1    # "arr$":[J
    .end local v3    # "i$":I
    .end local v4    # "id":J
    .end local v7    # "len$":I
    :cond_1
    const-string v9, "EmailAccountPolicy"

    const-string v10, "getAllEmailAccounts( ): ids is empty "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "ids":[J
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/app/enterprise/Account;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/app/enterprise/Account;

    check-cast v9, [Landroid/app/enterprise/Account;

    :goto_2
    return-object v9

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const-string v9, "EmailAccountPolicy"

    const-string v10, "getAllEmailAccounts() : failed. "

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public getSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    const-string v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v5, p1, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userID":I
    const/4 v3, 0x0

    .local v3, "password":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "EmailAccountPolicy"

    const-string v6, "getSecurityInComingServerPassword() success"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "caller":Ljava/lang/String;
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "EmailAccountPolicy"

    const-string v6, "getSecurityInComingServerPassword() failed "

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    const-string v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v5, p1, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userID":I
    const/4 v3, 0x0

    .local v3, "password":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "O#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "EmailAccountPolicy"

    const-string v6, "getSecurityOutGoingServerPassword() success"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "caller":Ljava/lang/String;
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "EmailAccountPolicy"

    const-string v6, "getSecurityOutGoingServerPassword() failed"

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public removePendingAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "login"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "serverAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .local v6, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.sec.DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM"

    invoke-static {v1, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "send":Landroid/content/Intent;
    const-string v7, "user_id"

    invoke-virtual {v3, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "service"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "receive_host"

    invoke-virtual {v3, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v7, v3, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "send":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "EmailAccountPolicy"

    const-string v8, "removePendingAccount() : failed. "

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public sendAccountsChangedBroadcast(Landroid/app/enterprise/ContextInfo;)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setAccountName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccountName() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setAccountName() : accountName is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccountName ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    const-string v7, "account_name"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlwaysVibrateOnEmailNotification("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlwaysVibrateOnEmailNotification() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p2, :cond_2

    iput-boolean v0, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v6, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    :goto_1
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlwaysVibrateOnEmailNotification( "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v7, "vibrate"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_0

    move v6, v0

    goto :goto_0

    :cond_2
    iput-boolean v6, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    goto :goto_1
.end method

.method public setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAccount :  userID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   accId  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setEmailAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)J
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "EmailAccountPolicy"

    const-string v4, "setEmailAddress() : Error :: Invalid input parameter."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_2

    const-string v2, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEmailAddress() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailAddress (??, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const-string v7, "user_id"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public setInComingProtocol(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setInComingProtocol()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setInComingProtocol() : Error :: Invalid input parameter."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_2

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingProtocol() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingProtocol returned  protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v7, "service"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setInComingServerAcceptAllCertificates(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setInComingServerAcceptAllCertificates()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingServerAcceptAllCertificates() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingServerAcceptAllCertificates returned  acceptAllCertificates : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v7, "send_security"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setInComingServerAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)J
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "serverAddress"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v2, "EmailAccountPolicy"

    const-string v4, "setInComingServerAddress()"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v2, "EmailAccountPolicy"

    const-string v4, "setInComingServerAddress() : Error :: Invalid input parameter."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v2, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInComingServerAddress() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingServerAddress returned  serverAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    const-string v7, "receive_host"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public setInComingServerLogin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)J
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "loginId"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const-wide/16 v4, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setInComingServerLogin() : deprecated. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setInComingServerLogin() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v4

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_1

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerLogin() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "EmailAccountPolicy"

    const-string v2, "setInComingServerLogin deprecated "

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .local v12, "userID":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v5, "containerId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v6, "EmailAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setInComingServerLogin() : No exist accId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v6, "EmailAccountPolicy"

    const-string v7, "setInComingServerPassword : Error :: Invalid input parameter."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setInComingServerPathPrefix(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathPrefix"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setInComingServerPathPrefix() : deprecated"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerPathPrefix() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInComingServerPort(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "port"    # I
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setInComingServerPort()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p2, :cond_1

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setInComingServerPort() : Error :: Invalid input parameter."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_2

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingServerPort() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingServerPort returned  port : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v7, "receive_port"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setInComingServerSSL(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setInComingServerSSL()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingServerSSL() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingServerSSL returned  enableSSL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v7, "send_security"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setOutGoingProtocol(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setOutGoingProtocol : deprecated."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setOutGoingProtocol : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_1

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingProtocol() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOutGoingServerAcceptAllCertificates(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingServerAcceptAllCertificates() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingServerAcceptAllCertificates() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingServerAcceptAllCertificates() returned  acceptAllCertificates : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v7, "send_security"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setOutGoingServerAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)J
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "serverAddress"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v2, "EmailAccountPolicy"

    const-string v4, "setOutGoingServerAddress() : Error :: Invalid input parameter."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v2, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOutGoingServerAddress() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingServerAddress() returned  serverAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v7, "send_host"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public setOutGoingServerLogin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)J
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "loginId"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const-wide/16 v4, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setOutGoingServerLogin() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v4

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_1

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerLogin() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .local v12, "userID":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v5, "containerId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v6, "EmailAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOutGoingServerPassword() : No exist accId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v6, "EmailAccountPolicy"

    const-string v7, "setOutGoingServerPassword : Error :: Invalid input parameter."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setOutGoingServerPathPrefix(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathPrefix"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setOutGoingServerPathPrefix() : deprecated. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerPathPrefix() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOutGoingServerPort(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "port"    # I
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-gez p2, :cond_1

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setOutGoingServerPort : Error :: Invalid input parameter."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_2

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingServerPort() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingServerPort returned  port : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v7, "send_port"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setOutGoingServerSSL(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingServerSSL() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingServerPort() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingServerSSL returned  enableSSL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v7, "send_security"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v4, p1, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .local v0, "callID":J
    if-nez p2, :cond_0

    const-string v4, "EmailAccountPolicy"

    const-string v5, "setSecurityInComingServerPassword() : password is null"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .end local v0    # "callID":J
    :goto_0
    return-wide v0

    .restart local v0    # "callID":J
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "EmailAccountPolicy"

    const-string v5, "setSecurityInComingServerPassword() success"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "EmailAccountPolicy"

    const-string v5, "setSecurityInComingServerPassword() failed"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    goto :goto_0
.end method

.method public setSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v4, p1, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .local v0, "callID":J
    if-nez p2, :cond_0

    const-string v4, "EmailAccountPolicy"

    const-string v5, "setSecurityOutGoingServerPassword() : password is null"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .end local v0    # "callID":J
    :goto_0
    return-wide v0

    .restart local v0    # "callID":J
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "O#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "EmailAccountPolicy"

    const-string v5, "setSecurityOutGoingServerPassword() success"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "EmailAccountPolicy"

    const-string v5, "setSecurityOutGoingServerPassword() failed"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    goto :goto_0
.end method

.method public setSenderName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "senderName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSenderName() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setSenderName() : senderName is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSenderName ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    const-string v7, "sender_name"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setSignature(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSignature() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setSignature() : signature is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSignature ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    const-string v7, "signature"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setSilentVibrateOnEmailNotification()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSilentVibrateOnEmailNotification() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p2, :cond_2

    iput-boolean v0, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    iput-boolean v6, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    :goto_1
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSilentVibrateOnEmailNotification returned enable : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " accId  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v7, "vibrate_when_silent"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_0

    move v6, v0

    goto :goto_0

    :cond_2
    iput-boolean v6, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_1
.end method

.method public setSyncInterval(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "syncInterval"    # I
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncInterval() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    iput p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setSyncInterval() : deprecated."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
