.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
.super Ljava/lang/Object;
.source "KnoxVpnApiValidation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxVpnApiValidation"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private static mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field private static mPersonaManager:Landroid/os/IPersonaManager;


# instance fields
.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-void
.end method

.method private static getEnterpriseDeviceManager()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPersonaManager()Landroid/os/IPersonaManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    if-nez v0, :cond_0

    const-string v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Landroid/os/IPersonaManager;

    return-object v0
.end method


# virtual methods
.method public activateVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)I
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/16 v4, 0x64

    .local v4, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    const/16 v4, 0x68

    move v5, v4

    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_0
    return v5

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_2

    const/16 v4, 0x6c

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_3

    const/16 v4, 0x70

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .local v3, "routeType":I
    if-nez v3, :cond_4

    const/16 v4, 0x6d

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .local v0, "currentStateOfProfile":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    const/16 v4, 0x73

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v0    # "currentStateOfProfile":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0    # "currentStateOfProfile":I
    if-nez v0, :cond_6

    const/16 v4, 0x74

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v0    # "currentStateOfProfile":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at activateVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x65

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activateVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0
.end method

.method public addAllContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x64

    .local v5, "validationResult":I
    if-eqz p3, :cond_0

    :try_start_0
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    const/16 v5, 0x68

    move v6, v5

    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_0
    return v6

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_2

    const/16 v5, 0x6c

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_3

    const/16 v5, 0x70

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .local v4, "routeType":I
    if-nez v4, :cond_4

    const/16 v5, 0x6d

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_5

    const/16 v5, 0x71

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_5
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .local v0, "containerOwner":I
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v7, :cond_6

    const/16 v5, 0x72

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_7

    const/16 v5, 0x7b

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_7
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_8

    const/16 v5, 0x75

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_8
    const/16 v5, 0x76

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at addAllContainerPackagesToVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_0
.end method

.method public addAllPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x64

    .local v3, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    const/16 v3, 0x68

    move v4, v3

    .end local v3    # "validationResult":I
    .local v4, "validationResult":I
    :goto_0
    return v4

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    const/16 v3, 0x6c

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v5, v6, :cond_3

    const/16 v3, 0x70

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .local v2, "routeType":I
    if-nez v2, :cond_4

    const/16 v3, 0x6d

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v3, 0x7b

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_5
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_6

    const/16 v3, 0x75

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_6
    const/16 v3, 0x76

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at addAllPackagesToVpnValidation API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x65

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAllPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto/16 :goto_0
.end method

.method public addContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x64

    .local v11, "validationResult":I
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v14, 0x1

    if-lt v13, v14, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v13, :cond_1

    :cond_0
    const/16 v11, 0x68

    move v12, v11

    .end local v11    # "validationResult":I
    .local v12, "validationResult":I
    :goto_0
    return v12

    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .local v7, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v7, :cond_2

    const/16 v11, 0x6c

    move v12, v11

    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_0

    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v13, v14, :cond_3

    const/16 v11, 0x70

    move v12, v11

    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_0

    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v9

    .local v9, "routeType":I
    if-nez v9, :cond_4

    const/16 v11, 0x6d

    move v12, v11

    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_0

    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v13

    move/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v5

    .local v5, "isPersonaIdIsValid":Z
    if-nez v5, :cond_5

    const/16 v11, 0x71

    move v12, v11

    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_0

    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_5
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .local v2, "containerOwner":I
    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v2, v13, :cond_6

    const/16 v11, 0x72

    move v12, v11

    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_0

    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_6
    move-object/from16 v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_8

    aget-object v10, v1, v4

    .local v10, "tempPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v14, "ADD_ALL_PACKAGES"

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v11, 0x89

    move v12, v11

    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_0

    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v10    # "tempPackage":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v13, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v15, "ADD_ALL_PACKAGES"

    move/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "profileOwningPackage":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    packed-switch v13, :pswitch_data_0

    const/16 v11, 0x77

    move v12, v11

    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_0

    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :pswitch_0
    move v12, v11

    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_0

    .end local v8    # "profileOwningPackage":Ljava/lang/String;
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_9
    const/16 v11, 0x78

    move v12, v11

    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_0

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "containerOwner":I
    .end local v4    # "i$":I
    .end local v5    # "isPersonaIdIsValid":Z
    .end local v6    # "len$":I
    .end local v7    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v9    # "routeType":I
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "KnoxVpnApiValidation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception at addContainerPackagesToVpnValidation API "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0x65

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    const-string v13, "KnoxVpnApiValidation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public addPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x64

    .local v9, "validationResult":I
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v12, 0x1

    if-lt v11, v12, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v11, :cond_1

    :cond_0
    const/16 v9, 0x68

    move v10, v9

    .end local v9    # "validationResult":I
    .local v10, "validationResult":I
    :goto_0
    return v10

    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .local v5, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_2

    const/16 v9, 0x6c

    move v10, v9

    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_0

    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v11, v12, :cond_3

    const/16 v9, 0x70

    move v10, v9

    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_0

    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v7

    .local v7, "routeType":I
    if-nez v7, :cond_4

    const/16 v9, 0x6d

    move v10, v9

    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_0

    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_4
    move-object/from16 v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v8, v1, v3

    .local v8, "tempPackage":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v13, "ADD_ALL_PACKAGES"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v9, 0x89

    move v10, v9

    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_0

    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v8    # "tempPackage":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v12, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v14, "ADD_ALL_PACKAGES"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "profileOwningPackage":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    packed-switch v11, :pswitch_data_0

    const/16 v9, 0x77

    move v10, v9

    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_0

    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :pswitch_0
    move v10, v9

    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_0

    .end local v6    # "profileOwningPackage":Ljava/lang/String;
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_7
    const/16 v9, 0x78

    move v10, v9

    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_0

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "routeType":I
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "KnoxVpnApiValidation"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception at addPackagesToVpnValidation API "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x65

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v11, "KnoxVpnApiValidation"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public createVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 29
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;

    .prologue
    const/16 v23, 0x64

    .local v23, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    :cond_0
    const/16 v23, 0x68

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .local v24, "validationResult":I
    :goto_0
    return v24

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_1
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v18, "profileObj":Lorg/json/JSONObject;
    const-string v26, "KNOX_VPN_PARAMETERS"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .local v12, "parentAttrObj":Lorg/json/JSONObject;
    const-string v26, "profile_attribute"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .local v14, "profileAttrObj":Lorg/json/JSONObject;
    const-string v26, "knox"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .local v10, "knoxAttrObj":Lorg/json/JSONObject;
    const-string v26, "profileName"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "profileName":Ljava/lang/String;
    const-string v26, "vpn_type"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "protocolType":Ljava/lang/String;
    const-string v26, "vpn_route_type"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .local v20, "routeType":I
    const-string v26, "chaining_enabled"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, "chainingEnabled":I
    const-string v26, "uidpid_search_enabled"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    .local v21, "uidPidSearchEnabled":I
    const-string v26, "connectionType"

    const-string v27, "keepon"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "connectionType":Ljava/lang/String;
    if-eqz v17, :cond_2

    if-eqz v19, :cond_2

    const/16 v26, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    if-eqz v20, :cond_3

    :cond_2
    const/16 v23, 0x69

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_3
    if-nez v20, :cond_6

    if-eqz v3, :cond_4

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v3, v0, :cond_5

    :cond_4
    const/16 v23, 0x1f9

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_5
    const-string v26, "ondemand"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v23, 0x2be

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_6
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_7

    if-eqz v3, :cond_7

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_7

    const/16 v23, 0x1f5

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_7
    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    if-eqz v21, :cond_8

    const/16 v23, 0x259

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_8
    const-string v26, "keepon"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    const-string v26, "ondemand"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v23, 0x2bd

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_9
    const-string v26, "ondemand"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    if-nez v3, :cond_a

    const/16 v23, 0x2be

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_a
    const-string v26, "\\s"

    invoke-static/range {v26 .. v26}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .local v13, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .local v11, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    .local v7, "found":Z
    if-eqz v7, :cond_b

    const/16 v23, 0x6a

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    .local v16, "profileLength":I
    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-lt v0, v1, :cond_c

    const/16 v26, 0x80

    move/from16 v0, v16

    move/from16 v1, v26

    if-le v0, v1, :cond_d

    :cond_c
    const/16 v23, 0x6b

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v15

    .local v15, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v26

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    const/16 v23, 0x6f

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_e
    const/16 v23, 0x70

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v25, v0

    .local v25, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v22, v0

    .local v22, "userId":I
    const-string v26, "chaining_enabled"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, "chainingValue":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v4, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v27

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .local v8, "isChainingEnabled":I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_10

    if-nez v8, :cond_11

    :cond_10
    const/16 v23, 0x1f7

    .end local v3    # "chainingEnabled":I
    .end local v4    # "chainingValue":I
    .end local v5    # "connectionType":Ljava/lang/String;
    .end local v7    # "found":Z
    .end local v8    # "isChainingEnabled":I
    .end local v10    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v15    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v16    # "profileLength":I
    .end local v17    # "profileName":Ljava/lang/String;
    .end local v18    # "profileObj":Lorg/json/JSONObject;
    .end local v19    # "protocolType":Ljava/lang/String;
    .end local v20    # "routeType":I
    .end local v21    # "uidPidSearchEnabled":I
    .end local v22    # "userId":I
    .end local v25    # "vendorName":Ljava/lang/String;
    :cond_11
    :goto_1
    const-string v26, "KnoxVpnApiValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "createVpnProfileValidation : validationResult value is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v23

    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_0

    .end local v24    # "validationResult":I
    .restart local v3    # "chainingEnabled":I
    .restart local v4    # "chainingValue":I
    .restart local v5    # "connectionType":Ljava/lang/String;
    .restart local v7    # "found":Z
    .restart local v10    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v11    # "matcher":Ljava/util/regex/Matcher;
    .restart local v12    # "parentAttrObj":Lorg/json/JSONObject;
    .restart local v13    # "pattern":Ljava/util/regex/Pattern;
    .restart local v14    # "profileAttrObj":Lorg/json/JSONObject;
    .restart local v15    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v16    # "profileLength":I
    .restart local v17    # "profileName":Ljava/lang/String;
    .restart local v18    # "profileObj":Lorg/json/JSONObject;
    .restart local v19    # "protocolType":Ljava/lang/String;
    .restart local v20    # "routeType":I
    .restart local v21    # "uidPidSearchEnabled":I
    .restart local v22    # "userId":I
    .restart local v23    # "validationResult":I
    .restart local v25    # "vendorName":Ljava/lang/String;
    :cond_12
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .local v9, "isVpnEnabled":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v9, v0, :cond_11

    const/16 v23, 0x1f8

    goto :goto_1

    .end local v3    # "chainingEnabled":I
    .end local v4    # "chainingValue":I
    .end local v5    # "connectionType":Ljava/lang/String;
    .end local v7    # "found":Z
    .end local v9    # "isVpnEnabled":I
    .end local v10    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v15    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v16    # "profileLength":I
    .end local v17    # "profileName":Ljava/lang/String;
    .end local v18    # "profileObj":Lorg/json/JSONObject;
    .end local v19    # "protocolType":Ljava/lang/String;
    .end local v20    # "routeType":I
    .end local v21    # "uidPidSearchEnabled":I
    .end local v22    # "userId":I
    .end local v25    # "vendorName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    const-string v26, "KnoxVpnApiValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "JSONException at createVpnProfileValidation API "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x67

    goto :goto_1

    .end local v6    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v26, "KnoxVpnApiValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception at createVpnProfileValidation API "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x65

    goto/16 :goto_1
.end method

.method public getAllContainerPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_2

    :cond_0
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .end local p3    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p3

    .restart local p3    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_3

    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_4

    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: Not the same admin"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .local v4, "routeType":I
    if-nez v4, :cond_5

    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_6

    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: user id is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    goto :goto_0

    :cond_6
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .local v0, "containerOwner":I
    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v6, :cond_1

    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, v5

    goto :goto_0

    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at getAllContainerPackagesInVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    goto :goto_0
.end method

.method public getAllPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .end local p2    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_3

    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v4, v5, :cond_4

    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: Not the same Admin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .local v2, "routeType":I
    if-nez v2, :cond_1

    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v3

    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getVpnProfileValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    goto :goto_0
.end method

.method public getVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: profileName value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .end local p2    # "profileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_3

    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: profileInfo value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_1

    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: Not the same admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAllContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x64

    .local v5, "validationResult":I
    if-eqz p3, :cond_0

    :try_start_0
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    const/16 v5, 0x68

    move v6, v5

    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_0
    return v6

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_2

    const/16 v5, 0x6c

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_3

    const/16 v5, 0x70

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .local v4, "routeType":I
    if-nez v4, :cond_4

    const/16 v5, 0x6d

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_5

    const/16 v5, 0x71

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_5
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .local v0, "containerOwner":I
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v7, :cond_6

    const/16 v5, 0x72

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_7

    const/16 v5, 0x7c

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_0

    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_0
.end method

.method public removeAllPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x64

    .local v3, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    const/16 v3, 0x68

    move v4, v3

    .end local v3    # "validationResult":I
    .local v4, "validationResult":I
    :goto_0
    return v4

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    const/16 v3, 0x6c

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v5, v6, :cond_3

    const/16 v3, 0x70

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .local v2, "routeType":I
    if-nez v2, :cond_4

    const/16 v3, 0x6d

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_5

    const/16 v3, 0x7c

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x65

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_0
.end method

.method public removeContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x64

    .local v6, "validationResult":I
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    array-length v8, p3

    const/4 v9, 0x1

    if-lt v8, v9, :cond_0

    iget-object v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v8, :cond_1

    :cond_0
    const/16 v6, 0x68

    move v7, v6

    .end local v6    # "validationResult":I
    .local v7, "validationResult":I
    :goto_0
    return v7

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_2

    const/16 v6, 0x6c

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_3

    const/16 v6, 0x70

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v5

    .local v5, "routeType":I
    if-nez v5, :cond_4

    const/16 v6, 0x6d

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_5

    const/16 v6, 0x71

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_5
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .local v0, "containerOwner":I
    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v8, :cond_6

    const/16 v6, 0x72

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_6
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v10, "ADD_ALL_PACKAGES"

    invoke-virtual {v9, p2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "profileOwningPackage":Ljava/lang/String;
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    packed-switch v8, :pswitch_data_0

    const/16 v6, 0x79

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :pswitch_0
    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v4    # "profileOwningPackage":Ljava/lang/String;
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_7
    const/16 v6, 0x7a

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_0

    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "routeType":I
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at removeContainerPackagesFromVpnValidation API "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x65

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeContainerPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removePackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x64

    .local v4, "validationResult":I
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v6, p2

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    const/16 v4, 0x68

    move v5, v4

    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_0
    return v5

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    const/16 v4, 0x6c

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_3

    const/16 v4, 0x70

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .local v3, "routeType":I
    if-nez v3, :cond_4

    const/16 v4, 0x6d

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "profileOwningPackage":Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    packed-switch v6, :pswitch_data_0

    const/16 v4, 0x79

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :pswitch_0
    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v2    # "profileOwningPackage":Ljava/lang/String;
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_5
    const/16 v4, 0x7a

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at removePackagesFromVpnValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x65

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/16 v4, 0x64

    .local v4, "validationResult":I
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    const/16 v4, 0x68

    move v5, v4

    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_0
    return v5

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_2

    const/16 v4, 0x6c

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_3

    const/16 v4, 0x70

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .local v3, "routeType":I
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "profileState":I
    if-ne v3, v8, :cond_4

    if-ne v2, v8, :cond_4

    const/16 v4, 0x7d

    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "profileState":I
    .end local v3    # "routeType":I
    :cond_4
    :goto_1
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_0

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at removeVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x65

    goto :goto_1
.end method
