.class public Lcom/android/server/enterprise/certificate/CertificatePolicy;
.super Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;
.source "CertificatePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;,
        Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;,
        Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final CERTIFICATE_POLICY_SERVICE:Ljava/lang/String; = "CertificatePolicy"

.field private static final CERT_INSTALLER_PKGNAME:Ljava/lang/String; = "com.android.certinstaller"

.field private static final CHROME_MODULE:Ljava/lang/String; = "Chrome_module"

.field private static final KEYSTORE_ADD_OPERATION:I = 0x0

.field private static final KEYSTORE_DELETE_OPERATION:I = 0x1

.field private static final KEYSTORE_REFRESH_OPERATION:I = 0x1

.field private static final KEYSTORE_ROLLBACK_OPERATION:I = 0x0

.field private static final KEYSTORE_ROLLBACK_REFRESH_OPERATION:I = 0x2

.field private static final PACKAGE_INSTALLER_PKGNAME:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final PERM_APP_PKEY_HOST_DOT:Ljava/lang/String; = "."

.field private static final PERM_APP_PKEY_HOST_WILDCARD:Ljava/lang/String; = "*"

.field private static final PERM_APP_PKEY_PORT_WILDCARD:I = -0x1

.field private static final SBROWSER_PKGNAME:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field private static final TAG:Ljava/lang/String; = "CertificatePolicy"

.field private static final TRUSTED_POLICY_MASK:I = 0x1

.field private static final UNTRUSTED_POLICY_MASK:I = 0x2


# instance fields
.field private mBootCompleted:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private final mCacheTrustedCertLock:Ljava/lang/Object;

.field private final mCacheUntrustedCertLock:Ljava/lang/Object;

.field private mCachedTrustedCertAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedUntrustedCertAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private mCheckRevocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeyStoreLock:Ljava/lang/Object;

.field private mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingKeystoreAction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRandom:Ljava/util/Random;

.field private final mRefreshRollbackLock:Ljava/lang/Object;

.field private mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private miAdminNotification:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheTrustedCertLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPendingKeystoreAction:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRandom:Ljava/util/Random;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerPackageChangeReceiver()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filterBoot":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/security/cert/X509Certificate;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addUserIdPrefixToList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method

.method static synthetic access$1700([B)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->displayAppSignature(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeUserIdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->miAdminNotification:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/enterprise/certificate/CertificatePolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/security/cert/X509Certificate;)[B
    .locals 1
    .param p0, "x0"    # Ljava/security/cert/X509Certificate;

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertX509ToPem(Ljava/security/cert/X509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p3, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CERTIFICATE"

    invoke-virtual {v5, p1, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "previouslist":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v0, ""

    .local v0, "finalList":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CERTIFICATE"

    invoke-virtual {v5, p1, v6, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method private addUserIdPrefixToList(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "item":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "item":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :goto_0
    return-object p1

    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_0
.end method

.method private clearPermissionApplicationPrivateKey(I)Z
    .locals 10
    .param p1, "adminUid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "selectionValues":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "pkgName"

    aput-object v7, v2, v6

    const-string v7, "alias"

    aput-object v7, v2, v5

    .local v2, "returnColumns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PermAppPrivateKey"

    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "pkgName"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-string v9, "alias"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Z)Z

    goto :goto_0

    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PermAppPrivateKey"

    invoke-virtual {v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    if-lez v7, :cond_1

    :goto_1
    return v5

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private clearTrustedCertificates(I)Z
    .locals 7
    .param p1, "adminUid"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "trustedCaList"

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "oldList":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "trustedCaList"

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .local v1, "removedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliasesFromCacheAndKeyStore(ILjava/util/List;)V

    goto :goto_0
.end method

.method private clearUntrustedCertificates(I)Z
    .locals 7
    .param p1, "adminUid"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "untrustedCertsList"

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "oldList":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "untrustedCertsList"

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .local v1, "removedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeUntrustedCerts(ILjava/util/List;)V

    goto :goto_0
.end method

.method private convertListToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static convertPemToX509([B)Ljava/security/cert/X509Certificate;
    .locals 8
    .param p0, "certBytes"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    :cond_0
    const-string v5, "CertificatePolicy"

    const-string v6, "Could not convert one certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v5, "CertificatePolicy"

    const-string v6, "Could not convert certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "cer":Ljava/security/cert/CertificateException;
    const-string v5, "CertificatePolicy"

    const-string v6, "Could not convert certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v2

    .local v2, "ile":Ljava/lang/IllegalArgumentException;
    const-string v5, "CertificatePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not a certificate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ile":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method private convertStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "list"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .local v5, "s":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private convertToX509List(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "certInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/CertificateInfo;

    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_0
    return-object v2
.end method

.method private static convertX509ToPem(Ljava/security/cert/X509Certificate;)[B
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "certBytes":[B
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v2, v0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v3, "CertificatePolicy"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v3, "CertificatePolicy"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private displayAppSignature(Ljava/lang/String;)V
    .locals 28
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v24

    if-eqz v24, :cond_3

    const/16 v16, 0x0

    .local v16, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    const/16 v25, 0x2240

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :goto_0
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_3

    const/4 v4, 0x0

    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_1
    const/16 v17, 0x0

    .local v17, "strRes":Ljava/lang/String;
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "appName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x1040b7c

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v5, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .end local v5    # "appName":Ljava/lang/String;
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .local v20, "toast":Ljava/lang/StringBuilder;
    const/16 v24, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v11

    .local v11, "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    .local v12, "identity":[Ljava/lang/String;
    const-string v24, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v24, 0x0

    aget-object v24, v12, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v24, 0x1

    aget-object v24, v12, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1

    const-string v24, " / "

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v24, 0x1

    aget-object v24, v12, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v12    # "identity":[Ljava/lang/String;
    .end local v17    # "strRes":Ljava/lang/String;
    .end local v20    # "toast":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "CertificatePolicy"

    const-string v25, "Name not found"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "CertificatePolicy"

    const-string v25, "Name not found"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v17    # "strRes":Ljava/lang/String;
    .restart local v20    # "toast":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .local v21, "toast2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "notification"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .local v15, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v8, v21

    .local v8, "header":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .local v22, "when":J
    move-object/from16 v19, v17

    .local v19, "title":Ljava/lang/CharSequence;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "\n"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .local v18, "text":Ljava/lang/CharSequence;
    const v10, 0x1080078

    .local v10, "icon":I
    new-instance v13, Landroid/app/Notification;

    move-wide/from16 v0, v22

    invoke-direct {v13, v10, v8, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .local v13, "notification":Landroid/app/Notification;
    iget v0, v13, Landroid/app/Notification;->flags:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x10

    move/from16 v0, v24

    iput v0, v13, Landroid/app/Notification;->flags:I

    new-instance v14, Landroid/content/Intent;

    const-string v24, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v25, "package"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v14, "notificationIntent":Landroid/content/Intent;
    const-string v24, "appInfoPkgName"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v24, 0x10000000

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .local v6, "contentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRandom:Ljava/util/Random;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Random;->nextInt()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v15, v0, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v8    # "header":Ljava/lang/CharSequence;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "icon":I
    .end local v11    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v13    # "notification":Landroid/app/Notification;
    .end local v14    # "notificationIntent":Landroid/content/Intent;
    .end local v15    # "notificationManager":Landroid/app/NotificationManager;
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "strRes":Ljava/lang/String;
    .end local v18    # "text":Ljava/lang/CharSequence;
    .end local v19    # "title":Ljava/lang/CharSequence;
    .end local v20    # "toast":Ljava/lang/StringBuilder;
    .end local v21    # "toast2":Ljava/lang/String;
    .end local v22    # "when":J
    :cond_3
    return-void
.end method

.method private enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceNotifyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private existsPendingActionForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private fromContentValues(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .locals 12
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x0

    .local v7, "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_0

    :try_start_0
    const-string v9, "adminUid"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, "adminUid":J
    const-string v9, "pkgName"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "pkgName":Ljava/lang/String;
    const-string v9, "host"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "host":Ljava/lang/String;
    const-string v9, "port"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "port":I
    const-string v9, "alias"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "alias":Ljava/lang/String;
    new-instance v8, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    invoke-direct {v8, v5, v4, v6, v2}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .local v8, "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :try_start_1
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->setAdminPkgName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .end local v0    # "adminUid":J
    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v8    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .restart local v7    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parsing ContentValues error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .restart local v0    # "adminUid":J
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "port":I
    .restart local v8    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :catch_1
    move-exception v3

    move-object v7, v8

    .end local v8    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .restart local v7    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    goto :goto_1
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    .prologue
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .local v0, "auxCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v4, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .local v3, "issuer":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_1

    const-string v4, "CertificatePolicy"

    const-string v5, "getCertificateChain error. Could not find certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not build certificate chain; certificate not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getGenericList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getPackageForPid(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .local v2, "listRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v3, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersKeystoreUnlocked()[Ljava/lang/Integer;
    .locals 10

    .prologue
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "userKeystoresUnlocked":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .local v1, "um":Landroid/os/UserManager;
    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v7

    .local v7, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .local v5, "userId":I
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    .end local v7    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    return-object v8
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initUntrustedCertCache()V
    .locals 13

    .prologue
    iget-object v11, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v12, "adminUid"

    aput-object v12, v4, v10

    const/4 v10, 0x1

    const-string v12, "untrustedCertsList"

    aput-object v12, v4, v10

    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "CERTIFICATE"

    invoke-virtual {v10, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .local v5, "cv":Landroid/content/ContentValues;
    const-string v10, "untrustedCertsList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "stringList":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "adminUid":Ljava/lang/Integer;
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "certAlias":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v2    # "certAlias":Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "stringList":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v0    # "adminUid":Ljava/lang/Integer;
    .restart local v2    # "certAlias":Ljava/lang/String;
    .restart local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "stringList":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .local v1, "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v1    # "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "certAlias":Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "stringList":Ljava/lang/String;
    :cond_2
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private isNativeKeyStoreUnlocked()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "isUnlocked":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->stateAsUser(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/AssertionError;
    const-string v2, "CertificatePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadCache()V
    .locals 12

    .prologue
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "trustedCaList"

    aput-object v11, v4, v10

    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .local v5, "cv":Landroid/content/ContentValues;
    const-string v10, "trustedCaList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "stringList":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "adminUid":Ljava/lang/Integer;
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "certAlias":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .local v1, "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v1    # "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "certAlias":Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "stringList":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initUntrustedCertCache()V

    return-void
.end method

.method private obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v9, "CertificatePolicy"

    const-string v10, "obtainMsgFromModule"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    .local v4, "moduleMsgName":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x1040b3c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    const/4 v6, -0x1

    .local v6, "reason":I
    const-string v9, "wifi_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x1040b36

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "eventReason":[Ljava/lang/String;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eventReason "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    array-length v9, v1

    if-le v9, v12, :cond_0

    aget-object v8, v1, v12

    .local v8, "reasonStr":Ljava/lang/String;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reasonStr "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "reason="

    .local v7, "reasonPrefix":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .end local v1    # "eventReason":[Ljava/lang/String;
    .end local v7    # "reasonPrefix":Ljava/lang/String;
    .end local v8    # "reasonStr":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reason "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v6, :pswitch_data_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b3d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    :goto_1
    return-object v4

    .restart local v1    # "eventReason":[Ljava/lang/String;
    .restart local v7    # "reasonPrefix":Ljava/lang/String;
    .restart local v8    # "reasonStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    goto :goto_0

    .end local v1    # "eventReason":[Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "reasonPrefix":Ljava/lang/String;
    .end local v8    # "reasonStr":Ljava/lang/String;
    :cond_1
    const-string v9, "browser_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x1040b37

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    .local v0, "errorCode":I
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_2
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_1

    :pswitch_0
    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_1
    const/16 v6, 0xd

    goto/16 :goto_0

    :pswitch_2
    const/4 v6, 0x2

    goto/16 :goto_0

    :pswitch_3
    const/4 v6, 0x1

    goto/16 :goto_0

    :pswitch_4
    const/4 v6, 0x4

    goto/16 :goto_0

    :pswitch_5
    const/4 v6, 0x3

    goto/16 :goto_0

    :pswitch_6
    const/4 v6, 0x5

    goto/16 :goto_0

    .end local v0    # "errorCode":I
    :cond_2
    const-string v9, "package_manager_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x1040b38

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v5, -0x1

    .local v5, "parserError":I
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    :goto_3
    packed-switch v5, :pswitch_data_2

    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_7
    const/16 v6, 0xa

    goto/16 :goto_0

    :pswitch_8
    const/16 v6, 0xc

    goto/16 :goto_0

    :pswitch_9
    const/16 v6, 0xb

    goto/16 :goto_0

    .end local v5    # "parserError":I
    :cond_3
    const-string v9, "installer_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x1040b39

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v3, -0x1

    .local v3, "installerError":I
    :try_start_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    :goto_4
    packed-switch v3, :pswitch_data_3

    :pswitch_a
    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_b
    const/4 v6, 0x1

    goto/16 :goto_0

    :pswitch_c
    const/4 v6, 0x2

    goto/16 :goto_0

    :pswitch_d
    const/16 v6, 0xd

    goto/16 :goto_0

    :pswitch_e
    const/16 v6, 0x8

    goto/16 :goto_0

    :pswitch_f
    const/4 v6, 0x4

    goto/16 :goto_0

    :pswitch_10
    const/4 v6, 0x3

    goto/16 :goto_0

    :pswitch_11
    const/16 v6, 0xa

    goto/16 :goto_0

    :pswitch_12
    const/16 v6, 0xb

    goto/16 :goto_0

    .end local v3    # "installerError":I
    :cond_4
    const-string v9, "Chrome_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "CHROME"

    aput-object v9, v4, v11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v3, -0x1

    .restart local v3    # "installerError":I
    :try_start_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    :goto_5
    sparse-switch v3, :sswitch_data_0

    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_4
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :sswitch_0
    const/4 v6, 0x1

    goto/16 :goto_0

    :sswitch_1
    const/4 v6, 0x2

    goto/16 :goto_0

    :sswitch_2
    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_3
    const/4 v6, 0x4

    goto/16 :goto_0

    :sswitch_4
    const/4 v6, 0x3

    goto/16 :goto_0

    .end local v3    # "installerError":I
    :pswitch_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b3e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b42

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b45

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b3f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b40

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_18
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b41

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b44

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_1a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b43

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_1b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b46

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_1c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b47

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_1d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b48

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_1e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b49

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_1f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040b4a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_14
        :pswitch_1a
        :pswitch_19
        :pswitch_15
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x69
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_f
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_a
        :pswitch_11
        :pswitch_12
        :pswitch_a
        :pswitch_d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method private putGenericList(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    move-result v0

    return v0
.end method

.method private putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertListToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private registerPackageChangeReceiver()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "CertificatePolicy"

    const-string v3, "registerPackageChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeAliasesFromCacheAndKeyStore(ILjava/util/List;)V
    .locals 9
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "removedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheTrustedCertLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "alias":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    invoke-direct {v3, p0, v6, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v4, v7, [[Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getUsersKeystoreUnlocked()[Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void

    :cond_3
    new-instance v3, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    invoke-direct {v3, p0, v7, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v4, v7, [[Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getUsersKeystoreUnlocked()[Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Z
    .locals 9
    .param p1, "uid"    # I
    .param p3, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "listToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CERTIFICATE"

    invoke-virtual {v7, p1, v8, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "previousList":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v1, "certAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "alias":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "alias":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "finalList":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x0

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CERTIFICATE"

    invoke-virtual {v7, p1, v8, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .end local v1    # "certAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "finalList":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    return v7

    :cond_3
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private removeUntrustedCerts(ILjava/util/List;)V
    .locals 7
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "removedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "alias":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    :cond_2
    new-instance v3, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v6, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [[Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getUsersKeystoreUnlocked()[Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private removeUserIdFromPendingList(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPendingKeystoreAction:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeUserIdPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "aliasUserId"    # Ljava/lang/String;

    .prologue
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private retrieveAppPermissionsFromDb(I)Ljava/util/List;
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "storedPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;>;"
    const/4 v7, 0x5

    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "adminUid"

    aput-object v7, v3, v9

    const/4 v7, 0x1

    const-string v8, "pkgName"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "host"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "port"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string v8, "alias"

    aput-object v8, v3, v7

    .local v3, "returnColumns":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "selectionValues":Landroid/content/ContentValues;
    invoke-static {v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "#SelectClause#"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PermAppPrivateKey"

    invoke-virtual {v7, v8, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .local v1, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->fromContentValues(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    move-result-object v0

    .local v0, "appPerm":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    if-eqz v0, :cond_0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "appPerm":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_1
    return-object v5
.end method

.method private sendIntentToSettings()V
    .locals 4

    .prologue
    iget-boolean v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "refreshUi":Landroid/content/Intent;
    const-string v1, "edm.intent.action.REFRESH_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "refreshUi":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_0
    return-void
.end method

.method private setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "grant"    # Z

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v5

    invoke-virtual {v5, p1, v4, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .local v1, "appUid":I
    const/4 v2, 0x0

    .local v2, "connection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v4, 0x0

    .local v4, "result":Z
    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    invoke-interface {v5, v1, p3, p4}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_4
    :goto_1
    if-eqz v4, :cond_0

    const-string v5, "com.sec.android.app.sbrowser"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .end local v4    # "result":Z
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "result":Z
    :catch_1
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_1

    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_5
    throw v5
.end method

.method private toContentValues(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "pkgName"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "host"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "port"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "alias"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private validateAlias(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v3, "USRPKEY_"

    const/4 v4, 0x4

    invoke-static {v4, p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "aliasArray":[Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .local v1, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local p1    # "alias":Ljava/lang/String;
    :goto_1
    return-object p1

    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "alias":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .restart local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method private varargs validateCerts([Ljava/security/cert/X509Certificate;)I
    .locals 20
    .param p1, "arrayCerts"    # [Ljava/security/cert/X509Certificate;

    .prologue
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .local v6, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x0

    .local v4, "certPath":Ljava/security/cert/CertPath;
    const/16 v16, 0x0

    .local v16, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .local v2, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v7

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :goto_0
    const/4 v13, 0x0

    .local v13, "rootCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    check-cast v13, Ljava/security/cert/X509Certificate;

    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    :goto_1
    new-instance v15, Ljava/security/cert/TrustAnchor;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v15, v13, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .local v15, "trustAnchor":Ljava/security/cert/TrustAnchor;
    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v16

    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    new-instance v11, Ljava/security/cert/PKIXParameters;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2

    .local v11, "params":Ljava/security/cert/PKIXParameters;
    const/4 v5, 0x0

    .local v5, "certPathValidator":Ljava/security/cert/CertPathValidator;
    :try_start_2
    const-string v17, "PKIX"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    const/4 v12, 0x0

    .local v12, "result":I
    :try_start_3
    invoke-virtual {v5, v4, v11}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v8

    .local v8, "cpvResult":Ljava/security/cert/CertPathValidatorResult;
    const-string v17, "CertificatePolicy"

    const-string v18, "Validation success"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_5

    const/4 v12, -0x1

    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certPathValidator":Ljava/security/cert/CertPathValidator;
    .end local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "cpvResult":Ljava/security/cert/CertPathValidatorResult;
    .end local v11    # "params":Ljava/security/cert/PKIXParameters;
    .end local v12    # "result":I
    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local v15    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :goto_2
    return v12

    .restart local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_0
    :try_start_4
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .end local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/security/cert/CertificateException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failure generating cert path: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x8

    goto :goto_2

    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .restart local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    check-cast v13, Ljava/security/cert/X509Certificate;
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1

    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    goto :goto_1

    .end local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v9

    .local v9, "e":Ljava/lang/AssertionError;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "If FIPS mode is turned on, cannot use MD5 algorithm : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_2

    .end local v9    # "e":Ljava/lang/AssertionError;
    .restart local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local v15    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :catch_2
    move-exception v9

    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Should not happen!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_2

    .end local v9    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v5    # "certPathValidator":Ljava/security/cert/CertPathValidator;
    .restart local v11    # "params":Ljava/security/cert/PKIXParameters;
    :catch_3
    move-exception v9

    .local v9, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Should not happen!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    goto/16 :goto_2

    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v12    # "result":I
    :catch_4
    move-exception v9

    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Should not happen!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    goto/16 :goto_2

    .end local v9    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_5
    move-exception v9

    .local v9, "e":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .local v10, "errorMessage":Ljava/lang/String;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Validation failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "Additional certificate path checker failed."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    .local v14, "t":Ljava/lang/Throwable;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    .end local v14    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string v17, "is revoked"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "Certificate revocation after"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_3
    const/4 v12, 0x2

    goto/16 :goto_2

    :cond_4
    const-string v17, "OCSP check failed!"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "Certificate status could not be determined."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "CRL distribution point extension could not be read"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "No additional CRL locations could be decoded from CRL distribution point extension."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "Distribution points could not be read."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "No valid CRL found."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "Unable to get CRL for certificate"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_5
    const/16 v12, 0xd

    goto/16 :goto_2

    :cond_6
    const-string v17, ", expiration time"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/security/cert/CertificateExpiredException;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    :cond_7
    const/4 v12, 0x4

    goto/16 :goto_2

    :cond_8
    const-string v17, ", validation time"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/security/cert/CertificateNotYetValidException;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    :cond_9
    const/4 v12, 0x3

    goto/16 :goto_2

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method private validatePkey(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .locals 5
    .param p1, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v3

    .local v3, "port":I
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v4, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    invoke-direct {v4, v2, v1, v3, v0}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "port":I
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x1

    .local v0, "result":Z
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    and-int/2addr v0, v2

    :cond_0
    if-eqz v0, :cond_1

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    and-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    const/4 v2, 0x0

    .local v2, "result":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validatePkey(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->toContentValues(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    move-result-object v1

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PermAppPrivateKey"

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const/4 v2, 0x1

    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "cv":Landroid/content/ContentValues;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    const/4 v7, 0x1

    .local v7, "ret":Z
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v6

    .local v6, "prevSize":I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .local v4, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .local v2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_1
    and-int/2addr v7, v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheTrustedCertLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "alias":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1    # "alias":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .restart local v1    # "alias":Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v1    # "alias":Ljava/lang/String;
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_6
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "trustedCaList"

    invoke-direct {p0, v0, v2, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v7, v9

    if-nez v6, :cond_7

    new-instance v9, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v10, 0x1

    new-array v10, v10, [[Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getUsersKeystoreUnlocked()[Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_3
    move v9, v7

    goto/16 :goto_0

    :cond_7
    new-instance v9, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v10, 0x1

    new-array v10, v10, [[Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getUsersKeystoreUnlocked()[Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3
.end method

.method public addUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v4, v8

    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .local v2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-ne v6, v9, :cond_2

    move v4, v7

    .local v4, "result":Z
    :goto_1
    const-string v6, "untrustedCertsList"

    invoke-direct {p0, v0, v2, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v4, v6

    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "alias":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1    # "alias":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .end local v4    # "result":Z
    :cond_2
    move v4, v8

    goto :goto_1

    .restart local v1    # "alias":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":Z
    :cond_3
    :try_start_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v1    # "alias":Ljava/lang/String;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v6, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v7, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v7, v7, [[Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getUsersKeystoreUnlocked()[Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public allowUserRemoveCertificates(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "CERTIFICATE"

    const-string v4, "allowUserRemoveCertificate"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings()V

    :cond_0
    return v0
.end method

.method public clearPermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearPermissionApplicationPrivateKey(I)Z

    move-result v0

    return v0
.end method

.method public clearTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearTrustedCertificates(I)Z

    move-result v0

    return v0
.end method

.method public clearUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearUntrustedCertificates(I)Z

    move-result v0

    return v0
.end method

.method public enableCertificateFailureNotification(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "CERTIFICATE"

    const-string v3, "notificateSignatureFailureToUser"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableCertificateValidationAtInstall(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "CERTIFICATE"

    const-string v3, "validateCertificateAtInstall"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableSignatureIdentityInformation(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "CERTIFICATE"

    const-string v4, "signatureIdentityInformationEnabled"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "ret":Z
    return v0
.end method

.method public getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "ret":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v6, v15, :cond_0

    aget-object v15, p2, v6

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .local v2, "cert":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v7, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string v15, "X509"

    invoke-static {v15}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v1, 0x0

    .local v1, "c":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    new-instance v9, Landroid/net/http/SslCertificate;

    invoke-direct {v9, v1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .local v9, "mSslCert":Landroid/net/http/SslCertificate;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v4

    .local v4, "cn":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v10

    .local v10, "o":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v11

    .local v11, "ou":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    move-object v13, v10

    .local v13, "subjectPrimary":Ljava/lang/String;
    move-object v14, v4

    .local v14, "subjectSecondary":Ljava/lang/String;
    :goto_1
    const/4 v15, 0x2

    new-array v8, v15, [Ljava/lang/String;

    .local v8, "item":[Ljava/lang/String;
    const/4 v15, 0x0

    aput-object v13, v8, v15

    const/4 v15, 0x1

    aput-object v14, v8, v15

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v4    # "cn":Ljava/lang/String;
    .end local v8    # "item":[Ljava/lang/String;
    .end local v9    # "mSslCert":Landroid/net/http/SslCertificate;
    .end local v10    # "o":Ljava/lang/String;
    .end local v11    # "ou":Ljava/lang/String;
    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/security/cert/CertificateException;
    const-string v15, "CertificatePolicy"

    const-string v16, "CertificateFactory error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "cert":[B
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .end local v7    # "input":Ljava/io/InputStream;
    :cond_0
    :goto_2
    return-object v12

    .restart local v2    # "cert":[B
    .restart local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/security/cert/CertificateException;
    const-string v15, "CertificatePolicy"

    const-string v16, "X509Certificate error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    .restart local v4    # "cn":Ljava/lang/String;
    .restart local v9    # "mSslCert":Landroid/net/http/SslCertificate;
    .restart local v10    # "o":Ljava/lang/String;
    .restart local v11    # "ou":Ljava/lang/String;
    :cond_1
    move-object v13, v10

    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    move-object v14, v11

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_1

    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    move-object v13, v4

    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    const-string v14, ""

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_1

    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    const-string v14, ""

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_1
.end method

.method public getListPermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    return-object v1

    :cond_1
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "trustedCaList"

    aput-object v11, v4, v10

    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .local v5, "cv":Landroid/content/ContentValues;
    const-string v10, "trustedCaList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "stringList":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;-><init>()V

    .local v0, "certInfo":Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .local v9, "uid":Ljava/lang/Integer;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    return-object v1

    :cond_1
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "untrustedCertsList"

    aput-object v11, v4, v10

    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .local v5, "cv":Landroid/content/ContentValues;
    const-string v10, "untrustedCertsList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "stringList":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;-><init>()V

    .local v0, "certInfo":Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .local v9, "uid":Ljava/lang/Integer;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isCaCertificateDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certAlias"    # Ljava/lang/String;

    .prologue
    const-string v1, "systemDisabledList"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .local v0, "disabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isCaCertificateTrusted(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certificate"    # Landroid/app/enterprise/CertificateInfo;
    .param p3, "showMsg"    # Z

    .prologue
    const/4 v2, 0x1

    const-string v3, "com.android.certinstaller"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .local v0, "ret":Z
    invoke-virtual {p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .local v1, "x509cert":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v3, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/security/cert/X509Certificate;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z

    move-result v2

    and-int/2addr v0, v2

    :goto_1
    if-eqz p3, :cond_0

    if-nez v0, :cond_0

    const v2, 0x1040b34

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z

    move-result v2

    and-int/2addr v0, v2

    goto :goto_1
.end method

.method public isCertificateFailureNotificationEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "notificateSignatureFailureToUser"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "notificateUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "notificateUser":Z
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .end local v1    # "notificateUser":Z
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .local v1, "validate":Z
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    const-string v6, "validateCertificateAtInstall"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "validateCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, "validateCert":Z
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .end local v2    # "validateCert":Z
    :cond_1
    return v1
.end method

.method public isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageForPid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "com.android.certinstaller"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "*"

    invoke-virtual {v0, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isPrivateKeyApplicationPermitted(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .local v0, "userId":I
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .local v4, "result":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    move-result-object v2

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .local v3, "pkey":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v0

    .local v0, "adminDomain":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v6

    if-ne p3, v6, :cond_0

    :cond_4
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v0    # "adminDomain":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;>;"
    .end local v3    # "pkey":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :cond_5
    return-object v4
.end method

.method public isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageForPid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "com.android.certinstaller"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "*"

    invoke-virtual {v0, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const-string v4, "com.android.packageinstaller"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v1, 0x0

    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    const-string v6, "signatureIdentityInformationEnabled"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_1
    return v1
.end method

.method public isUserRemoveCertificatesAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x1

    .local v1, "allowed":Z
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    const-string v6, "allowUserRemoveCertificate"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "adminValue":Z
    if-eq v0, v1, :cond_0

    move v1, v0

    .end local v0    # "adminValue":Z
    :cond_1
    return v1
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    :try_start_0
    new-instance v8, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceNotifyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "userMsgModName":[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "edm.intent.certificate.action.certificate.failure"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "iAdminNotification":Landroid/content/Intent;
    const-string v8, "certificate_failure_module"

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "certificate_failure_message"

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->miAdminNotification:Landroid/content/Intent;

    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    .local v0, "broadcastThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v4, 0x0

    .local v4, "isNotificationEnabled":Z
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "CERTIFICATE"

    const-string v10, "notificateSignatureFailureToUser"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "notificateUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .local v5, "notificateUser":Z
    if-eqz v5, :cond_0

    move v4, v5

    .end local v5    # "notificateUser":Z
    :cond_1
    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x1040b35

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    :cond_2
    return-void

    .end local v0    # "broadcastThread":Ljava/lang/Thread;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iAdminNotification":Landroid/content/Intent;
    .end local v4    # "isNotificationEnabled":Z
    .end local v6    # "notificateUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v7    # "userMsgModName":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v8

    const-string v9, "CertificatePolicy"

    const-string v10, "notifyCertificateFailure"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyCertificateRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceSystemUser()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.knox.certificate.CertificatePolicy.ACTION_CERTIFICATE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intentNotification":Landroid/content/Intent;
    const-string v1, "certificate_removed_subject"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v2, "CertificatePolicy/certificateRemoved"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->existsPendingActionForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v1, v3, [[Ljava/lang/Integer;

    new-array v2, v3, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeUserIdFromPendingList(I)Z

    :cond_0
    return-void
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
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearTrustedCertificates(I)Z

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearUntrustedCertificates(I)Z

    return-void
.end method

.method public removePermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v4

    iget v0, v4, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    const/4 v1, 0x0

    .local v1, "result":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validatePkey(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->toContentValues(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    move-result-object v2

    .local v2, "selectionValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PermAppPrivateKey"

    invoke-virtual {v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v3

    and-int/2addr v1, v3

    .end local v2    # "selectionValues":Landroid/content/ContentValues;
    :cond_0
    return v1

    .restart local v2    # "selectionValues":Landroid/content/ContentValues;
    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public removeTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    return v4

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    .local v2, "cert":Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "cert":Landroid/app/enterprise/CertificateInfo;
    :cond_3
    const-string v5, "trustedCaList"

    invoke-direct {p0, v0, v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v4

    .local v4, "result":Z
    if-eqz v4, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliasesFromCacheAndKeyStore(ILjava/util/List;)V

    goto :goto_0
.end method

.method public removeUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    return v4

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    .local v2, "cert":Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "cert":Landroid/app/enterprise/CertificateInfo;
    :cond_3
    const-string v5, "untrustedCertsList"

    invoke-direct {p0, v0, v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v4

    .local v4, "result":Z
    if-eqz v4, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeUntrustedCerts(ILjava/util/List;)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->loadCache()V

    return-void
.end method

.method public validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I
    .locals 3
    .param p1, "certInfo"    # Landroid/app/enterprise/CertificateInfo;

    .prologue
    invoke-virtual {p1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts([Ljava/security/cert/X509Certificate;)I

    move-result v1

    return v1
.end method

.method public validateChainAtInstall(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "listCertInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v4, 0x0

    .local v4, "result":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/CertificateInfo;

    invoke-virtual {v5}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts([Ljava/security/cert/X509Certificate;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "listX509":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/CertificateInfo;

    .local v1, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts([Ljava/security/cert/X509Certificate;)I

    move-result v4

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listX509":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_1
    return v4
.end method
