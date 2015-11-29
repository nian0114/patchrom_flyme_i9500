.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.super Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;,
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final PERMISSION_SMIME_CERTIFICATE:Ljava/lang/String; = "android.permission.sec.SMIME_CERTIFICATE"

.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"

.field private static final TASK_AUTHORITY:Ljava/lang/String; = "tasks"

.field private static mDeviceId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mExchangeServiceDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRestartExtendDelay:Z

.field private preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;-><init>()V

    iput-boolean v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    iput-boolean v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v4, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    .local v0, "containerId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "syncMgrCn":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "Enabling EAS ExchangeService"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "Constructor failed : "

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    return p1
.end method

.method private enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    const-string v3, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v2, p1, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "callingUid":I
    iget v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling UID changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "info"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "userID"    # I

    .prologue
    const-string v3, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillInExchangeAccountData() : accId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , userID =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .local v0, "acc":Landroid/app/enterprise/Account;
    :try_start_0
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v3, v0, Landroid/app/enterprise/Account;->mId:I

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "0"

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    const-wide/16 v6, -0x1

    iput-wide v6, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    const-wide/16 v6, -0x1

    iput-wide v6, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v3, v0, Landroid/app/enterprise/Account;->mFlags:I

    iget-boolean v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakDays:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakStartMinute:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakEndMinute:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakSyncSchedule:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mOffPeakSyncSchedule:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mRoamingSyncSchedule:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncCalendarAge:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    iput v3, v0, Landroid/app/enterprise/Account;->mEmailBodyTruncationSize:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    iput v3, v0, Landroid/app/enterprise/Account;->mEmailRoamingBodyTruncationSize:I

    new-instance v1, Landroid/accounts/Account;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "acct":Landroid/accounts/Account;
    const-string v3, "com.android.contacts"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncContacts:Z

    const-string v3, "com.android.calendar"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncCalendar:Z

    const-string v3, "tasks"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncTasks:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncNotes:Z

    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, -0x1

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-string v6, "eas"

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v6, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\\"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v6, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, -0x1

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-string v6, "eas"

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v6, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\\"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v6, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "acct":Landroid/accounts/Account;
    :goto_2
    return-object v0

    .restart local v1    # "acct":Landroid/accounts/Account;
    :cond_0
    :try_start_1
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1    # "acct":Landroid/accounts/Account;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ExchangeAccountPolicy"

    const-string v6, "fillInExchangeAccountData() : failed."

    invoke-static {v3, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    const-string v1, "ReqSigSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultValueState() : policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v1, "ReqEncryptSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "ForceSmimeCert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "AllowSettingChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "AllowNotificationChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-string v1, "ForceSmimeCertForEncryption"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const-string v1, "ForceSmimeCertForSigning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const-string v1, "AttachmentEnable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDefaultValueStateInteger(Ljava/lang/String;)I
    .locals 4
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":I
    const-string v1, "IncomingAttachmentSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultValueStateInteger() : policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v1, "MaxCalendarAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "MaxEmailAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "MaxEmailBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "MaxEmailHTMLBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getExchangeServiceName(I)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ExchangeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicyState(IJLjava/lang/String;I)Z
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    .local v8, "ret":Z
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .local v1, "columns":[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object p4, v1, v9

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "userID"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v7, 0x0

    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ExchangeAccountTable"

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPolicyState() : results is default value(null), accId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", container id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "ret":Z
    :goto_0
    return v8

    .restart local v8    # "ret":Z
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    const-string v9, "ExchangeAccountPolicy"

    const-string v10, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPolicyState() : results = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", accId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", container id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v6, 0x1

    .local v6, "restricterState":Z
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .local v2, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_4

    const-string v9, "1"

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "ExchangeAccountPolicy"

    const-string v10, "getPolicyState: restricted. "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v6

    goto :goto_0

    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v6    # "restricterState":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .restart local v6    # "restricterState":Z
    :cond_4
    const-string v9, "0"

    goto :goto_2

    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_5
    const-string v9, "ExchangeAccountPolicy"

    const-string v10, "getPolicyState: no restrictData. "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_6

    const/4 v9, 0x1

    :goto_3
    move v8, v9

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private getPolicyStateasInteger(IJLjava/lang/String;IZ)I
    .locals 14
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "isMinimum"    # Z

    .prologue
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueStateInteger(Ljava/lang/String;)I

    move-result v9

    .local v9, "ret":I
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .local v2, "columns":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object p4, v2, v11

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v11, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "userID"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "AccountId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v8, 0x0

    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ExchangeAccountTable"

    invoke-virtual {v11, v12, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .end local v9    # "ret":I
    :cond_0
    :goto_0
    return v9

    .restart local v9    # "ret":I
    :cond_1
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPolicyStateasInteger() : results = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", accId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", user id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", container id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    if-eqz p6, :cond_3

    const v7, 0x7fffffff

    .local v7, "result":I
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .local v3, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .local v10, "value":Ljava/lang/Integer;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_2

    if-eqz p6, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v7, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v7    # "result":I
    .end local v10    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/lang/Exception;
    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "getPolicyStateasInteger() : Exception while getValuesListasInteger from EDMStorageProvider"

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_3
    const/high16 v7, -0x80000000

    goto :goto_1

    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "result":I
    .restart local v10    # "value":Ljava/lang/Integer;
    :cond_4
    if-nez p6, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v7, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v10    # "value":Ljava/lang/Integer;
    :cond_5
    if-eqz p6, :cond_7

    const v11, 0x7fffffff

    if-eq v7, v11, :cond_6

    :goto_2
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPolicyStateasInteger() : result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v7

    goto/16 :goto_0

    :cond_6
    move v7, v9

    goto :goto_2

    :cond_7
    const/high16 v11, -0x80000000

    if-eq v7, v11, :cond_8

    :goto_3
    goto :goto_2

    :cond_8
    move v7, v9

    goto :goto_3
.end method

.method private putPolicyState(IIJILjava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "value"    # I
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .local v2, "ret":Z
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , value  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , policy ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private putPolicyState(IIJZLjava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "state"    # Z
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .local v2, "ret":Z
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , policy ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v2    # "ret":Z
    :cond_0
    const-string v3, "0"

    goto :goto_0
.end method

.method private resetForcedSMIMECertificateByEncryptionStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "ForceSmimeCertForEncryption"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "whereValues":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ExchangeAccountTable"

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method private resetForcedSMIMECertificateBySigningStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "ForceSmimeCertForSigning"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "whereValues":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ExchangeAccountTable"

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method private resetForcedSMIMECertificateStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "ForceSmimeCert"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "whereValues":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ExchangeAccountTable"

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method private sendReleaseSMIMECertificate(IJI)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private sendReleaseSMIMECertificateForEncryption(IJI)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private sendReleaseSMIMECertificateForSigning(IJI)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountMData"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "accountId"    # J
    .param p5, "doReCreate"    # Z
    .param p6, "updateField"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .local v4, "accId":J
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "callingUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .local v13, "userID":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v8, "containerId":I
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateAccount() :  userID "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "token":J
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/16 v16, 0x1

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    :try_start_0
    const-string v16, "ExchangeAccountPolicy"

    const-string v17, "updateAccount() : Disabling EAS ExchangeService"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .local v11, "pm":Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/ComponentName;

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v16

    invoke-static {v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v12, "syncMgrCn":Landroid/content/ComponentName;
    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v12, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getCBAAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .local v6, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v16, -0x1

    cmp-long v16, v4, v16

    if-nez v16, :cond_2

    const-string v16, "ExchangeAccountPolicy"

    const-string v17, "Enabling EAS ExchangeService : delete account"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v12, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "alias":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return-wide v4

    .restart local v6    # "alias":Ljava/lang/String;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_0

    :try_start_1
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateAccount() : Sending intent to rename"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string v16, "com.android.email.RENAME_CERTIFICATE"

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, "intent":Landroid/content/Intent;
    const-string v16, "accountid"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v16, "alias"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    const-string v18, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v6    # "alias":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v16, "ExchangeAccountPolicy"

    const-string v17, "updateAccount() failed : "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_3
    const/16 v16, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_1

    :catchall_0
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method


# virtual methods
.method public addNewAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 32
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;

    .prologue
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "addNewAccount() EX 2"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1e0

    const/16 v21, 0x3fc

    const/16 v22, 0x3e

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    invoke-virtual/range {v0 .. v31}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .locals 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;
    .param p20, "peakStarttime"    # I
    .param p21, "peakEndtime"    # I
    .param p22, "peakDays"    # I
    .param p23, "offPeak"    # I
    .param p24, "roamingSchedule"    # I
    .param p25, "retrivalSize"    # I
    .param p26, "periodCalendar"    # I
    .param p27, "isNotify"    # Z
    .param p28, "syncContacts"    # I
    .param p29, "syncCalendar"    # I
    .param p30, "certificate_data"    # [B
    .param p31, "certificate_password"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v4, "ExchangeAccountPolicy"

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

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p14

    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p18

    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p19

    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p14, :cond_0

    if-eqz p10, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    :goto_0
    return-wide v12

    :cond_1
    const/4 v4, 0x1

    move/from16 v0, p12

    if-ne v4, v0, :cond_2

    const/4 v4, 0x1

    move/from16 v0, p13

    if-ne v4, v0, :cond_2

    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    goto :goto_0

    :cond_2
    const-string v8, "eas"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p14

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    goto :goto_0

    :cond_3
    const-wide/16 v12, 0x0

    .local v12, "accId":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .local v20, "token":J
    :try_start_0
    const-string v4, "ExchangeAccountPolicy"

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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v16

    .local v16, "newAccountID":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v18

    .local v18, "newCertificateID":J
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

    invoke-static {v11, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v15, "intent":Landroid/content/Intent;
    const-string v4, "account_id"

    move-wide/from16 v0, v16

    invoke-virtual {v15, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "service"

    const-string v5, "eas"

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "server_name"

    move-object/from16 v0, p14

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user_name"

    move-object/from16 v0, p4

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user_passwd_id"

    move-wide/from16 v0, v16

    invoke-virtual {v15, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "serverPathPrefix"

    move-object/from16 v0, p19

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "use_ssl"

    if-eqz p15, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "use_tsl"

    if-eqz p16, :cond_5

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "trust_all"

    if-eqz p17, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "domain"

    move-object/from16 v0, p5

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "peak_starttime"

    move/from16 v0, p20

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak_endtime"

    move/from16 v0, p21

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak_days"

    move/from16 v0, p22

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak"

    move/from16 v0, p7

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "off_peak"

    move/from16 v0, p23

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "roaming_schedule"

    move/from16 v0, p24

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "period_email"

    move/from16 v0, p6

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "retrival_size"

    move/from16 v0, p25

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "period_calendar"

    move/from16 v0, p26

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "notify"

    move/from16 v0, p27

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "sync_contacts"

    move/from16 v0, p28

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "sync_calendar"

    move/from16 v0, p29

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "signature"

    move-object/from16 v0, p11

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "vibrate_when_silent"

    move/from16 v0, p13

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "vibrate"

    move/from16 v0, p12

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "is_default"

    move/from16 v0, p8

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "certificate_data"

    move-object/from16 v0, p30

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "certificate_password_id"

    move-wide/from16 v0, v18

    invoke-virtual {v15, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v4, v15, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNewAccount() EX : sent intent to Email app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "newAccountID":J
    .end local v18    # "newCertificateID":J
    :goto_4
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v16    # "newAccountID":J
    .restart local v18    # "newCertificateID":J
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_3

    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "newAccountID":J
    .end local v18    # "newCertificateID":J
    :catch_0
    move-exception v14

    .local v14, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : failed. "

    invoke-static {v4, v5, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public addNewAccount_new(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/ExchangeAccount;)J
    .locals 38
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "account"    # Landroid/app/enterprise/ExchangeAccount;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v34

    .local v34, "userID":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v14, "containerId":I
    if-nez p2, :cond_0

    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : Error :: Invalid Account."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    :goto_0
    return-wide v12

    :cond_0
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mDisplayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "displayName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "emailAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mServerAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "serverAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "protocolVersion":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSenderName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, "senderName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSignature:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, "signature":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEasUser:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "easUser":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEasDomain:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "easDomain":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mServerPassword:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "serverPassword":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mServerPathPrefix:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "serverPathPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateWhenSilent:Z

    move/from16 v17, v0

    .local v17, "emailNotificationVibrateAlways":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateWhenSilent:Z

    move/from16 v18, v0

    .local v18, "emailNotificationVibrateWhenSilent":Z
    if-eqz v16, :cond_1

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v7, :cond_1

    if-eqz v23, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : Error :: Invalid input parameters."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_3

    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    goto/16 :goto_0

    :cond_3
    const-string v8, "eas"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v8

    const-wide/16 v36, 0x0

    cmp-long v4, v8, v36

    if-lez v4, :cond_4

    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount : Error :: Account already exists."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, -0x1

    goto/16 :goto_0

    :cond_4
    const-wide/16 v12, 0x0

    .local v12, "accId":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    .local v32, "token":J
    :try_start_0
    const-string v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount() New : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePath:Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePassWord:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : SMIME Certificate at creation time"

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificareMode:I

    move/from16 v22, v0

    .local v22, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "caller":Ljava/lang/String;
    new-instance v21, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePassWord:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v4, v8, v2}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .local v21, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    move-object/from16 v0, v21

    invoke-static {v11, v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    .end local v11    # "caller":Ljava/lang/String;
    .end local v21    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v22    # "mode":I
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v24

    .local v24, "newAccountID":J
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_password:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v26

    .local v26, "newCertificateID":J
    new-instance v20, Landroid/content/Intent;

    const-string v4, "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

    invoke-static {v14, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v20, "intent":Landroid/content/Intent;
    const-string v4, "account_id"

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "user_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "service"

    const-string v8, "eas"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "server_name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user_name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user_passwd_id"

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "serverPathPrefix"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "use_ssl"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mUseSSL:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "use_tsl"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mUseTLS:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "trust_all"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mAcceptAllCertificates:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "domain"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mEasDomain:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "peak_starttime"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakStarttime:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak_endtime"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakEndtime:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak_days"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakDays:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "peak"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncInterval:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "off_peak"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mOffPeak:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "roaming_schedule"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mRoamingSchedule:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "period_email"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncLookback:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "retrival_size"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mRetrivalSize:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "period_calendar"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeriodCalendar:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "notify"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Landroid/app/enterprise/ExchangeAccount;->mIsNotify:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "sync_contacts"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncContacts:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "sync_calendar"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncCalendar:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "account_name"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "signature"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSignature:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "vibrate_when_silent"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateWhenSilent:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "vibrate"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateAlways:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "is_default"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Landroid/app/enterprise/ExchangeAccount;->mIsDefault:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "certificate_data"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_data:[B

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "certificate_password_id"

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v34

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount_new : sent intent to Email app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_3

    .end local v20    # "intent":Landroid/content/Intent;
    .end local v24    # "newAccountID":J
    .end local v26    # "newCertificateID":J
    :catch_0
    move-exception v19

    .local v19, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount() NEW : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v19    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public allowEmailSettingsChange(Landroid/app/enterprise/ContextInfo;JZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowEmailSettingsChange() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    const/4 v8, 0x0

    .local v8, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowEmailSettingsChange() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_0
    return v9

    .end local v9    # "ret":I
    .restart local v8    # "ret":Z
    :cond_0
    const-string v7, "AllowSettingChange"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v8

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowEmailSettingsChange() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , allow  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .restart local v9    # "ret":I
    goto :goto_0
.end method

.method public allowInComingAttachments(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    const/4 v8, 0x0

    .local v8, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_0
    return v9

    .end local v9    # "ret":I
    .restart local v8    # "ret":Z
    :cond_0
    const-string v7, "AttachmentEnable"

    move-object v1, p0

    move-wide v4, p3

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v8

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , enable  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .restart local v9    # "ret":I
    goto :goto_0
.end method

.method public createAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;
    .param p6, "serverPassword"    # Ljava/lang/String;

    .prologue
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "addNewAccount() EX 1"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "2.5"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    move-object/from16 v18, p6

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    const/4 v5, 0x0

    .local v5, "ret":Z
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteAccount() :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteAccount() : No exist accId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v5

    :goto_0
    return v9

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v9, :cond_2

    const-string v9, "device_account_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .local v2, "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v2, :cond_1

    const-string v9, "com.android.exchange"

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .local v8, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteAccount() : accId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.sec.DELETE_ACCOUNT_FROM_MDM"

    invoke-static {v1, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "account_id"

    invoke-virtual {v4, v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "user_id"

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "service"

    const-string v10, "eas"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "server_name"

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v11, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v9, v4, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4    # "intent":Landroid/content/Intent;
    :goto_1
    move v9, v5

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v9, "ExchangeAccountPolicy"

    const-string v10, "deleteAccount() : failed. "

    invoke-static {v9, v10, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .end local v2    # "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .end local v6    # "token":J
    .end local v8    # "userID":I
    :cond_2
    move v9, v5

    goto/16 :goto_0
.end method

.method public getAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    const-string v6, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v5, p1, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userID":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    const/4 v3, 0x0

    .local v3, "password":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "caller":Ljava/lang/String;
    :goto_0
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "getAccountCertificatePassword() success"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "getAccountCertificatePassword() failed"

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAccountDetails(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/Account;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userID":I
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountDetails() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountDetails() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,  userID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, "ret":Landroid/app/enterprise/Account;
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {p1, p2, p3, v4, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getAccountEmailPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    const-string v6, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v5, p1, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userID":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    const/4 v3, 0x0

    .local v3, "password":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "E#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "caller":Ljava/lang/String;
    :goto_0
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "getAccountEmailPassword() success"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "getAccountEmailPassword() failed"

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "activeSyncHost"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "eas"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v8

    .local v8, "ret":J
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountId() : = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,  easDomain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", easUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activeSyncHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8
.end method

.method public getAllEASAccounts(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/Account;
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .local v10, "userID":I
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getEASAccounts() : userId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/Account;>;"
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIds(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)[J

    move-result-object v5

    .local v5, "ids":[J
    if-eqz v5, :cond_1

    move-object v1, v5

    .local v1, "arr$":[J
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v8, :cond_1

    aget-wide v6, v1, v4

    .local v6, "id":J
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {p1, v6, v7, v11, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    invoke-direct {p0, v2, v0, v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v1    # "arr$":[J
    .end local v4    # "i$":I
    .end local v5    # "ids":[J
    .end local v6    # "id":J
    .end local v8    # "len$":I
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "getAllEASAccounts() : failed. "

    invoke-static {v11, v12, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/app/enterprise/Account;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/app/enterprise/Account;

    check-cast v11, [Landroid/app/enterprise/Account;

    :goto_1
    return-object v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public getDeviceId(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .local v14, "userID":I
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceId() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() failed : Email App is disabled."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .local v11, "sync":Ljava/lang/Object;
    monitor-enter v11

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .local v12, "token":J
    :try_start_1
    new-instance v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    invoke-direct {v1, p0, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V

    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    const-string v0, "com.android.email.GET_DEVICEID"

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.enterprise.GET_DEVICEID"

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "retAction":Ljava/lang/String;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, v9, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() : sendBroadcast "

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() : Device id is still null, waiting 5 seconds..."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v11, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "action":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "retAction":Ljava/lang/String;
    :goto_2
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .restart local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "retAction":Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() Inturrupted."

    invoke-static {v0, v2, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "retAction":Ljava/lang/String;
    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() : failed. "

    invoke-static {v0, v2, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v12    # "token":J
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .restart local v12    # "token":J
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public getForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "ForceSmimeCert"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "ForceSmimeCertForEncryption"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "ForceSmimeCertForSigning"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "IncomingAttachmentSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "MaxCalendarAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "MaxEmailAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "MaxEmailBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "MaxEmailHTMLBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "ReqEncryptSmime"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "ReqSigSmime"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "AllowNotificationChange"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "AllowSettingChange"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isIncomingAttachmentsAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const-string v4, "AttachmentEnable"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
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

.method public onContainerCreation(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 11
    .param p1, "uid"    # I

    .prologue
    const/4 v10, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .local v7, "userId":I
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .local v2, "columns":[Ljava/lang/String;
    const-string v8, "AccountId"

    aput-object v8, v2, v10

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCert"

    aput-object v9, v2, v8

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvValues":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .local v5, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .local v4, "email":Landroid/content/ContentValues;
    const-string v8, "ForceSmimeCert"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    const-string v8, "AccountId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "accId":J
    invoke-direct {p0, v10, v0, v1, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    goto :goto_0

    .end local v0    # "accId":J
    .end local v4    # "email":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "onPreAdminRemoval() : "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .local v7, "userId":I
    const-string v8, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ExchangeAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .local v2, "columns":[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "AccountId"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCert"

    aput-object v9, v2, v8

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "cvValues":Landroid/content/ContentValues;
    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .local v5, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .local v4, "email":Landroid/content/ContentValues;
    const-string v8, "ForceSmimeCert"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    const-string v8, "AccountId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "accId":J
    invoke-direct {p0, p1, v0, v1, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    goto :goto_0

    .end local v0    # "accId":J
    .end local v4    # "email":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removePendingAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userID":I
    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePendingAccount() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.sec.DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM"

    invoke-static {v0, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "send":Landroid/content/Intent;
    const-string v6, "user_id"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "service"

    const-string v7, "eas"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "server_name"

    invoke-virtual {v2, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "user_name"

    invoke-virtual {v2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "domain"

    invoke-virtual {v2, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "send":Landroid/content/Intent;
    :goto_0
    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePendingAccount() : emailAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", easUser = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", easDomain = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", serverAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePendingAccount() : fail to remove pending EAS Account. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public sendAccountsChangedBroadcast(Landroid/app/enterprise/ContextInfo;)V
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg2:I

    iget-boolean v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    if-nez v6, :cond_0

    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "sendAccountsChangedBroadcast()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "sendAccountsChangedBroadcast() : Delayed Broadcast"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3a98

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setAcceptAllCertificates(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcceptAllCertificates() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcceptAllCertificates() : No exist accId : "

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

    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    const-wide/16 v8, -0x1

    const-string v7, "trust_all"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setAccountBaseParameters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "accId"    # J

    .prologue
    const-wide/16 v4, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setAccountBaseParameters() : deprecated "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p4, 0x0

    :cond_0
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    if-nez p2, :cond_2

    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setAccountBaseParameters() : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-wide v4

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p6, p7, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_3

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAccountBaseParameters() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object p3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz p4, :cond_4

    iput-object p4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    :cond_4
    if-eqz p2, :cond_5

    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    :cond_5
    if-eqz p5, :cond_1

    iput-object p5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object p5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v8, p1, v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .local v0, "callID":J
    if-nez p2, :cond_0

    move-wide v0, v6

    .end local v0    # "callID":J
    :goto_0
    return-wide v0

    .restart local v0    # "callID":J
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "C#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "setAccountCertificatePassword() success"

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "setAccountCertificatePassword() failed"

    invoke-static {v8, v9, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v6

    goto :goto_0
.end method

.method public setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v8, p1, v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .local v0, "callID":J
    if-nez p2, :cond_0

    move-wide v0, v6

    .end local v0    # "callID":J
    :goto_0
    return-wide v0

    .restart local v0    # "callID":J
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "E#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "setAccountEmailPassword() success"

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "setAccountEmailPassword() failed"

    invoke-static {v8, v9, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v6

    goto :goto_0
.end method

.method public setAccountName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAccountName() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "ret":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAccountName() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v4

    .end local v4    # "ret":Z
    .local v12, "ret":I
    :goto_0
    return v12

    .end local v12    # "ret":I
    .restart local v4    # "ret":Z
    :cond_0
    if-nez p2, :cond_1

    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setAccountName() : accountName is null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v4

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_1
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string v11, "account_name"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAccountName() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", accountName ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , accId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v4

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setAlwaysVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "ExchangeAccountPolicy"

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
    const-wide/16 v8, -0x1

    const-string v7, "vibrate"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

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
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAsDefaultAccount() :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v0

    .local v0, "ret":Z
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAsDefaultAccount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , accId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setClientAuthCert(Landroid/app/enterprise/ContextInfo;[BLjava/lang/String;J)V
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certData"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setClientAuthCert() : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v5, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .local v10, "userID":I
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p4

    invoke-static {p1, v0, v1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setClientAuthCert() : No exist accId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-wide/16 v12, 0x1

    cmp-long v11, p4, v12

    if-gez v11, :cond_2

    :cond_1
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setClientAuthCert() : error : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    const/4 v11, 0x1

    :try_start_0
    iput-boolean v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.android.email.INSTALL_CERTIFICATE"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "accCertID":J
    const-string v11, "data"

    move-object/from16 v0, p2

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v11, "accountid"

    move-wide/from16 v0, p4

    invoke-virtual {v7, v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v11, "password_id"

    invoke-virtual {v7, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v10}, Landroid/os/UserHandle;-><init>(I)V

    const-string v13, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v11, v7, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "accCertID":J
    .end local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "setClientAuthCert() : failed"

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public setDataSyncs(Landroid/app/enterprise/ContextInfo;ZZZZJ)Z
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "syncCalendar"    # Z
    .param p3, "syncContacts"    # Z
    .param p4, "syncTasks"    # Z
    .param p5, "syncNotes"    # Z
    .param p6, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v4, "containerId":I
    const-string v10, "ExchangeAccountPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDataSyncs() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    .local v6, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userID":I
    iget-object v10, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .local v2, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v2, :cond_0

    const-string v10, "ExchangeAccountPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setSyncSchedules() : No exist accId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    new-instance v3, Landroid/accounts/Account;

    iget-object v10, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "acct":Landroid/accounts/Account;
    const-string v10, "com.android.contacts"

    invoke-static {v4, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v3, v10, v11, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    const-string v10, "com.android.contacts"

    invoke-static {v4, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p3

    invoke-static {v3, v10, v0, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    const-string v10, "com.android.calendar"

    invoke-static {v4, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v3, v10, v11, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    const-string v10, "com.android.calendar"

    invoke-static {v4, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p2

    invoke-static {v3, v10, v0, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    const-string v10, "tasks"

    invoke-static {v4, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v3, v10, v11, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    const-string v10, "tasks"

    invoke-static {v4, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p4

    invoke-static {v3, v10, v0, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "acct":Landroid/accounts/Account;
    :goto_1
    const-string v10, "ExchangeAccountPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDataSyncs() : = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,  syncCalendar = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", syncContacts = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", accid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v6

    goto/16 :goto_0

    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v10, "ExchangeAccountPolicy"

    const-string v11, "setDataSyncs() : "

    invoke-static {v10, v11, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public setEmailNotificationsState(Landroid/app/enterprise/ContextInfo;JZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEmailNotificationsState() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    const/4 v8, 0x0

    .local v8, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_0
    return v9

    .end local v9    # "ret":I
    .restart local v8    # "ret":Z
    :cond_0
    const-string v7, "AllowNotificationChange"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v8

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEmailNotificationsState() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , enable  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .restart local v9    # "ret":I
    goto :goto_0
.end method

.method public setForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 30
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificate () : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v22, v0

    .local v22, "containerId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v21, v0

    .local v21, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v28

    .local v28, "userID":I
    const/16 v25, 0x0

    .local v25, "result":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v20

    .local v20, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v20, :cond_0

    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificate() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    :goto_0
    return v6

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-string v6, "ExchangeAccountPolicy"

    const-string v8, "setForceSMIMECertificate() : certPath is null"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const-string v6, "ExchangeAccountPolicy"

    const-string v8, "setForceSMIMECertificate() : certPassword is null"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    goto :goto_0

    :cond_4
    monitor-enter p0

    :try_start_0
    new-instance v10, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;)V

    .local v10, "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v18

    .local v18, "accCertID":J
    new-instance v7, Landroid/content/Intent;

    const-string v6, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE"

    move/from16 v0, v22

    invoke-static {v0, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    const-string v6, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v7, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "cert_path"

    move-object/from16 v0, p4

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "cert_password_id"

    move-wide/from16 v0, v18

    invoke-virtual {v7, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v26

    .local v26, "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v28

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificate() :  sendOrderedBroadcast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-boolean v6, v10, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_5

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v23

    .local v23, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "ExchangeAccountPolicy"

    const-string v8, "setForceSMIMECertificate() : Exception while waiting for Email\'s response"

    move-object/from16 v0, v23

    invoke-static {v6, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .end local v23    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v24

    .local v24, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "ExchangeAccountPolicy"

    const-string v8, "setForceSMIMECertificate() : failed. "

    move-object/from16 v0, v24

    invoke-static {v6, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v24    # "ex":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v6, v25

    goto/16 :goto_0

    :cond_5
    :try_start_6
    invoke-virtual {v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->getResultCode()I

    move-result v25

    if-gez v25, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    const/16 v16, 0x1

    const-string v17, "ForceSmimeCert"

    move-object/from16 v11, p0

    move/from16 v12, v21

    move/from16 v13, v22

    move-wide/from16 v14, p2

    invoke-direct/range {v11 .. v17}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v6

    if-eqz v6, :cond_6

    const/16 v25, -0x1

    :goto_3
    :try_start_7
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .end local v18    # "accCertID":J
    .end local v26    # "token":J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v6

    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v10    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .restart local v18    # "accCertID":J
    .restart local v26    # "token":J
    :cond_6
    const/16 v25, 0x0

    goto :goto_3

    :cond_7
    :try_start_8
    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificate() : Result code from Email: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v6

    :try_start_9
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public setForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificateForEncryption() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v22, v0

    .local v22, "containerId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v21, v0

    .local v21, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v25

    .local v25, "userID":I
    const/16 v24, 0x0

    .local v24, "result":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v20

    .local v20, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v20, :cond_0

    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificateForEncryption() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    :goto_0
    return v6

    :cond_0
    monitor-enter p0

    :try_start_0
    new-instance v10, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;)V

    .local v10, "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v18

    .local v18, "accCertID":J
    new-instance v7, Landroid/content/Intent;

    const-string v6, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    move/from16 v0, v22

    invoke-static {v0, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    const-string v6, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v7, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "cert_path"

    move-object/from16 v0, p4

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "cert_password_id"

    move-wide/from16 v0, v18

    invoke-virtual {v7, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .local v26, "token":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v25

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificateForEncryption() :  sendOrderedBroadcast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v6, v10, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v23

    .local v23, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v6, "ExchangeAccountPolicy"

    const-string v8, "setForceSMIMECertificateForEncryption() : Exception while waiting for Email\'s response"

    move-object/from16 v0, v23

    invoke-static {v6, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .end local v18    # "accCertID":J
    .end local v23    # "ex":Ljava/lang/InterruptedException;
    .end local v26    # "token":J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v10    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .restart local v18    # "accCertID":J
    .restart local v26    # "token":J
    :cond_1
    :try_start_3
    invoke-virtual {v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->getResultCode()I

    move-result v24

    if-gez v24, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateByEncryptionStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    const/16 v16, 0x1

    const-string v17, "ForceSmimeCertForEncryption"

    move-object/from16 v11, p0

    move/from16 v12, v21

    move/from16 v13, v22

    move-wide/from16 v14, p2

    invoke-direct/range {v11 .. v17}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v24, -0x1

    :goto_2
    monitor-exit p0

    move/from16 v6, v24

    goto/16 :goto_0

    :cond_2
    const/16 v24, 0x0

    goto :goto_2

    :cond_3
    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificateForEncryption() : Result code from Email : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public setForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificateForSigning() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v22, v0

    .local v22, "containerId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v21, v0

    .local v21, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v25

    .local v25, "userId":I
    const/16 v24, 0x0

    .local v24, "result":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v20

    .local v20, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v20, :cond_0

    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificateForSigning() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    :goto_0
    return v6

    :cond_0
    monitor-enter p0

    :try_start_0
    new-instance v10, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;)V

    .local v10, "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v18

    .local v18, "accCertID":J
    new-instance v7, Landroid/content/Intent;

    const-string v6, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_SIGNING"

    move/from16 v0, v22

    invoke-static {v0, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    const-string v6, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v7, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "cert_path"

    move-object/from16 v0, p4

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "cert_password_id"

    move-wide/from16 v0, v18

    invoke-virtual {v7, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .local v26, "token":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v25

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificateForSigning() :  sendOrderedBroadcast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v6, v10, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v23

    .local v23, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v6, "ExchangeAccountPolicy"

    const-string v8, "setForceSMIMECertificateForSigning() : Exception while waiting for Email\'s response"

    move-object/from16 v0, v23

    invoke-static {v6, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .end local v18    # "accCertID":J
    .end local v23    # "ex":Ljava/lang/InterruptedException;
    .end local v26    # "token":J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v10    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .restart local v18    # "accCertID":J
    .restart local v26    # "token":J
    :cond_1
    :try_start_3
    invoke-virtual {v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->getResultCode()I

    move-result v24

    if-gez v24, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateBySigningStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    const/16 v16, 0x1

    const-string v17, "ForceSmimeCertForSigning"

    move-object/from16 v11, p0

    move/from16 v12, v21

    move/from16 v13, v22

    move-wide/from16 v14, p2

    invoke-direct/range {v11 .. v17}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v24, -0x1

    :goto_2
    monitor-exit p0

    move/from16 v6, v24

    goto/16 :goto_0

    :cond_2
    const/16 v24, 0x0

    goto :goto_2

    :cond_3
    const-string v6, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setForceSMIMECertificateForSigning() : Result code from Email: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public setIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIncomingAttachmentsSize() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .local v10, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    const/4 v8, 0x0

    .local v8, "ret":Z
    if-nez v0, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIncomingAttachmentsSize() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_0
    return v9

    .end local v9    # "ret":I
    .restart local v8    # "ret":Z
    :cond_0
    if-gez p2, :cond_1

    const-string v1, "ExchangeAccountPolicy"

    const-string v4, "setIncomingAttachmentsSize() : Error :: invalid parameter."

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .restart local v9    # "ret":I
    goto :goto_0

    .end local v9    # "ret":I
    :cond_1
    const-string v7, "IncomingAttachmentSize"

    move-object v1, p0

    move-wide v4, p3

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v8

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIncomingAttachmentsSize() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , size  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .restart local v9    # "ret":I
    goto :goto_0
.end method

.method public setMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxCalendarAgeFilter() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .local v17, "userID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxCalendarAgeFilter() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x4

    move/from16 v0, p2

    if-lt v0, v5, :cond_1

    const/4 v5, 0x7

    move/from16 v0, p2

    if-le v0, v5, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxCalendarAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const-string v11, "MaxCalendarAgeFilter"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxCalendarAgeFilter() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v16

    .local v16, "mdmPolicy":I
    iget v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    move/from16 v0, v16

    if-le v5, v0, :cond_5

    if-eqz v16, :cond_5

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxCalendarAgeFilter() : need to change Account value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v16

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    const-wide/16 v18, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v18, v8

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public setMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .local v17, "userID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailAgeFilter() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    if-ltz p2, :cond_1

    const/4 v5, 0x5

    move/from16 v0, p2

    if-le v0, v5, :cond_2

    :cond_1
    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const-string v11, "MaxEmailAgeFilter"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailAgeFilter() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v16

    .local v16, "mdmPolicy":I
    iget v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    move/from16 v0, v16

    if-le v5, v0, :cond_5

    if-eqz v16, :cond_5

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailAgeFilter() : need to change Account value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v16

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    const-wide/16 v18, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v18, v8

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public setMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 29
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailBodyTruncationSize() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v24

    .local v24, "userID":I
    const/16 v21, 0x0

    .local v21, "ret":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailBodyTruncationSize() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .end local v21    # "ret":Z
    .local v22, "ret":I
    :goto_0
    return v22

    .end local v22    # "ret":I
    .restart local v21    # "ret":Z
    :cond_0
    if-gez p2, :cond_1

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto :goto_0

    .end local v22    # "ret":I
    :cond_1
    const-string v11, "MaxEmailBodyTruncationSize"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto :goto_0

    .end local v22    # "ret":I
    :cond_2
    const/16 v21, 0x1

    const/16 v17, 0x1

    .local v17, "isMDMallowed":Z
    :try_start_0
    const-string v5, "email_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailPolicy;

    move-result-object v19

    .local v19, "mService":Landroid/app/enterprise/IEmailPolicy;
    if-eqz v19, :cond_5

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Landroid/app/enterprise/IEmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v20

    .local v20, "mdmPolicy":I
    iget-boolean v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    if-nez v5, :cond_7

    if-nez v17, :cond_7

    if-eqz v20, :cond_7

    const/16 v18, 0x0

    .local v18, "isupdate":Z
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_3

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .local v23, "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    const/16 v18, 0x1

    .end local v23    # "setValue":I
    :cond_3
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_4

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .restart local v23    # "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailBodyTruncationSize() : need to change Account value2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    const/16 v18, 0x1

    .end local v23    # "setValue":I
    :cond_4
    if-eqz v18, :cond_7

    const-wide/16 v26, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v26, v8

    if-eqz v5, :cond_6

    const/16 v21, 0x1

    :goto_2
    if-nez v21, :cond_7

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailBodyTruncationSize() : fail to update Email."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto/16 :goto_0

    .end local v18    # "isupdate":Z
    .end local v20    # "mdmPolicy":I
    .end local v22    # "ret":I
    .restart local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_1

    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :catch_0
    move-exception v16

    .local v16, "ex":Landroid/os/RemoteException;
    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailBodyTruncationSize() : Failed talking with email policy"

    move-object/from16 v0, v16

    invoke-static {v5, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v17, 0x1

    goto/16 :goto_1

    .end local v16    # "ex":Landroid/os/RemoteException;
    .restart local v18    # "isupdate":Z
    .restart local v20    # "mdmPolicy":I
    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    .end local v18    # "isupdate":Z
    :cond_7
    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailBodyTruncationSize() : success."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto/16 :goto_0
.end method

.method public setMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 29
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailHTMLBodyTruncationSize() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v24

    .local v24, "userID":I
    const/16 v21, 0x0

    .local v21, "ret":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailHTMLBodyTruncationSize() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .end local v21    # "ret":Z
    .local v22, "ret":I
    :goto_0
    return v22

    .end local v22    # "ret":I
    .restart local v21    # "ret":Z
    :cond_0
    if-gez p2, :cond_1

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailHTMLBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto :goto_0

    .end local v22    # "ret":I
    :cond_1
    const-string v11, "MaxEmailHTMLBodyTruncationSize"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailHTMLBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto :goto_0

    .end local v22    # "ret":I
    :cond_2
    const/16 v21, 0x1

    const/16 v17, 0x1

    .local v17, "isMDMallowed":Z
    :try_start_0
    const-string v5, "email_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailPolicy;

    move-result-object v19

    .local v19, "mService":Landroid/app/enterprise/IEmailPolicy;
    if-eqz v19, :cond_5

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Landroid/app/enterprise/IEmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v20

    .local v20, "mdmPolicy":I
    iget-boolean v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    if-eqz v5, :cond_7

    if-eqz v17, :cond_7

    if-eqz v20, :cond_7

    const/16 v18, 0x0

    .local v18, "isupdate":Z
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_3

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .local v23, "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    const/16 v18, 0x1

    .end local v23    # "setValue":I
    :cond_3
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_4

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .restart local v23    # "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    const/16 v18, 0x1

    .end local v23    # "setValue":I
    :cond_4
    if-eqz v18, :cond_7

    const-wide/16 v26, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v26, v8

    if-eqz v5, :cond_6

    const/16 v21, 0x1

    :goto_2
    if-nez v21, :cond_7

    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailHTMLBodyTruncationSize() : fail to update Email."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto/16 :goto_0

    .end local v18    # "isupdate":Z
    .end local v20    # "mdmPolicy":I
    .end local v22    # "ret":I
    .restart local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_1

    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :catch_0
    move-exception v16

    .local v16, "ex":Landroid/os/RemoteException;
    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailHTMLBodyTruncationSize() : Failed talking with email policy"

    move-object/from16 v0, v16

    invoke-static {v5, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v17, 0x1

    goto/16 :goto_1

    .end local v16    # "ex":Landroid/os/RemoteException;
    .restart local v18    # "isupdate":Z
    .restart local v20    # "mdmPolicy":I
    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    .end local v18    # "isupdate":Z
    :cond_7
    const-string v5, "ExchangeAccountPolicy"

    const-string v8, "setMaxEmailHTMLBodyTruncationSize() : success."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .restart local v22    # "ret":I
    goto/16 :goto_0
.end method

.method public setPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v5, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .local v12, "userID":I
    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPassword() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    .local v14, "ret":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_0

    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "setPassword() : accountMData is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    if-nez p2, :cond_1

    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "setPassword() : Invalid input parameter."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move v6, v14

    goto :goto_0

    :catch_0
    move-exception v13

    .local v13, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "setPassword() : Exception while setPassword"

    invoke-static {v6, v7, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v13    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setPastDaysToSync(Landroid/app/enterprise/ContextInfo;IJ)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pastDaysToSync"    # I
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPastDaysToSync() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "ret":Z
    const/4 v5, 0x1

    move/from16 v0, p2

    if-gt v5, v0, :cond_0

    const/4 v5, 0x6

    move/from16 v0, p2

    if-ge v5, v0, :cond_1

    :cond_0
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setPastDaysToSync : Error :: Invalid input parameter."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v4

    .end local v4    # "ret":Z
    .local v12, "ret":I
    :goto_0
    return v12

    .end local v12    # "ret":I
    .restart local v4    # "ret":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_2

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPastDaysToSync() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v4

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_2
    move/from16 v0, p2

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string v11, "period_email"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPastDaysToSync() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , pastDaysToSync = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , accId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v4

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setProtocolVersion(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "protocolVersion"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setProtocolVersion() : deprecated "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setProtocolVersion() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProtocolVersion() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setReleaseSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userID":I
    const/4 v2, 0x0

    .local v2, "result":Z
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReleaseSMIMECertificate() : No exist accId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateBySigningStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateByEncryptionStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    :cond_2
    invoke-direct {p0, v1, p2, p3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReleaseSMIMECertificate() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v3, v2

    .restart local v3    # "result":I
    goto :goto_0

    .end local v3    # "result":I
    :cond_3
    const/4 v2, 0x1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReleaseSMIMECertificate() : already applied , ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setReleaseSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v1, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userID":I
    const/4 v3, 0x0

    .local v3, "result":Z
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setReleaseSMIMECertificateForEncryption() : No exist accId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateByEncryptionStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v3

    invoke-direct {p0, v2, p2, p3, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForEncryption(IJI)V

    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setReleaseSMIMECertificateForEncryption : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    ID    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v4, v3

    .restart local v4    # "result":I
    goto :goto_0

    .end local v4    # "result":I
    :cond_1
    const/4 v3, 0x1

    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setReleaseSMIMECertificateForEncryption() : already applied , ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setReleaseSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReleaseSMIMECertificateForSigning() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userID":I
    const/4 v2, 0x0

    .local v2, "result":Z
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReleaseSMIMECertificateForSigning() : No exist accId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateBySigningStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v2

    invoke-direct {p0, v1, p2, p3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForSigning(IJI)V

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReleaseSMIMECertificateForSigning() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    ID    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v3, v2

    .restart local v3    # "result":I
    goto :goto_0

    .end local v3    # "result":I
    :cond_1
    const/4 v2, 0x1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReleaseSMIMECertificateForSigning() : already applied , ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;JZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireEncryptedSMIMEMessages () : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    const/4 v8, 0x0

    .local v8, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireEncryptedSMIMEMessages() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_0
    return v9

    .end local v9    # "ret":I
    .restart local v8    # "ret":Z
    :cond_0
    const-string v7, "ReqEncryptSmime"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v8

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireEncryptedSMIMEMessages () : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,  accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .restart local v9    # "ret":I
    goto :goto_0
.end method

.method public setRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;JZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireSignedSMIMEMessages() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v2, "adminUid":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "containerId":I
    const/4 v8, 0x0

    .local v8, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireSignedSMIMEMessages() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_0
    return v9

    .end local v9    # "ret":I
    .restart local v8    # "ret":Z
    :cond_0
    const-string v7, "ReqSigSmime"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v8

    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRequireSignedSMIMEMessages() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,  accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .restart local v9    # "ret":I
    goto :goto_0
.end method

.method public setSSL(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSSL() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSSL() : No exist accId : "

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

    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    const-wide/16 v8, -0x1

    const-string v7, "use_ssl"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setSenderName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "senderName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSenderName() :  deprecated , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSenderName() : No exist accId : "

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
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSignature(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSignature() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v4, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v18

    .local v18, "userID":I
    const/4 v14, 0x0

    .local v14, "ret":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSignature() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v14

    .end local v14    # "ret":Z
    .local v15, "ret":I
    :goto_0
    return v15

    .end local v15    # "ret":I
    .restart local v14    # "ret":Z
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    :try_start_0
    new-instance v13, Landroid/content/Intent;

    const-string v5, "com.android.email.SIGNATURE_UPDATED"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v13, "intent":Landroid/content/Intent;
    const-string v5, "signature"

    move-object/from16 v0, p2

    invoke-virtual {v13, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v5, v13, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v13    # "intent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    const-wide/16 v20, -0x1

    const/4 v10, 0x0

    const-string v11, "signature"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v20, v8

    if-eqz v5, :cond_1

    const/4 v14, 0x1

    :goto_2
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSignature() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , signature = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , accId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v14

    .restart local v15    # "ret":I
    goto :goto_0

    .end local v15    # "ret":I
    :catch_0
    move-exception v12

    .local v12, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSignature() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v12    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_1
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public setSilentVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSilentVibrateOnEmailNotification() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_1

    const-string v0, "ExchangeAccountPolicy"

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
    const-wide/16 v8, -0x1

    const-string v7, "vibrate_when_silent"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncInterval() : deprecated , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_0

    const-string v1, "ExchangeAccountPolicy"

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

    iput p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    goto :goto_0
.end method

.method public setSyncPeakTimings(Landroid/app/enterprise/ContextInfo;IIIJ)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "peakDays"    # I
    .param p3, "peakStartMinute"    # I
    .param p4, "peakEndMinute"    # I
    .param p5, "accId"    # J

    .prologue
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncPeakTimings() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v4, 0x0

    .local v4, "ret":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncPeakTimings() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v4

    .end local v4    # "ret":Z
    .local v12, "ret":I
    :goto_0
    return v12

    .end local v12    # "ret":I
    .restart local v4    # "ret":Z
    :cond_0
    if-ltz p2, :cond_1

    const/16 v5, 0x7f

    move/from16 v0, p2

    if-le v0, v5, :cond_2

    :cond_1
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setSyncPeakTimings() : peakDays is invalid"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v4

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_2
    if-ltz p3, :cond_3

    const/16 v5, 0x5a0

    move/from16 v0, p3

    if-le v0, v5, :cond_4

    :cond_3
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setSyncPeakTimings() : peakStartMinute is invalid"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v4

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_4
    if-ltz p4, :cond_5

    const/16 v5, 0x5a0

    move/from16 v0, p4

    if-le v0, v5, :cond_6

    :cond_5
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, "setSyncPeakTimings() : peakEndMinute is invalid"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v4

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_6
    move/from16 v0, p2

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    move/from16 v0, p3

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    move/from16 v0, p4

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string v11, "peak_days"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    :goto_1
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncPeakTimings() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , peakDays ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mPeakStartMinute = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", peakEndMinute = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", accid = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v4

    .restart local v12    # "ret":I
    goto/16 :goto_0

    .end local v12    # "ret":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setSyncSchedules(Landroid/app/enterprise/ContextInfo;IIIJ)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "peakSyncSchedule"    # I
    .param p3, "offPeakSyncSchedule"    # I
    .param p4, "roamingSyncSchedule"    # I
    .param p5, "accId"    # J

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncSchedules() :  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "ret":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_0

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncSchedules() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v4

    .end local v4    # "ret":Z
    .local v12, "ret":I
    :goto_0
    return v12

    .end local v12    # "ret":I
    .restart local v4    # "ret":Z
    :cond_0
    move/from16 v0, p2

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    move/from16 v0, p3

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    iput v5, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string v11, "peak"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :goto_2
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSyncSchedules() : = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ,  peakSyncSchedule = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", offPeakSyncSchedule = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", roamingSyncSchedule = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", accid = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v4

    .restart local v12    # "ret":I
    goto :goto_0

    .end local v12    # "ret":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
