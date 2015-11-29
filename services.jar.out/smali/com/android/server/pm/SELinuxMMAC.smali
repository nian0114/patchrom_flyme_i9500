.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SELinuxMMAC$1;,
        Lcom/android/server/pm/SELinuxMMAC$Policy;,
        Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;,
        Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    }
.end annotation


# static fields
.field private static final BASE_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final BASE_SEAPP_CONTEXTS:Ljava/lang/String; = "/seapp_contexts"

.field private static final BASE_VERSION_FILE:Ljava/lang/String; = "/selinux_version"

.field public static final BLACKLISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static BT_TYPE:I = 0x0

.field private static final CONTAINER_APP:Ljava/lang/String; = "container"

.field private static final CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final DATA_SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final DATA_VERSION_FILE:Ljava/lang/String;

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final FILECOPIER_METADATA_PREFIX:Ljava/lang/String; = "rcpFileCopier"

.field private static final GENERIC_MDM_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final GENERIC_SECURED_APPTYPE:I = 0x3

.field public static final GENERIC_SEINFO:Ljava/lang/String; = "generic_mdm"

.field private static final GENERIC_TRUSTED_APPTYPE:I = 0x4

.field public static final GOOD_CONTAINER:I = 0x1

.field private static final GSD_CATEGORY:I = 0x66

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File;

.field private static final MAC_PERMISSIONS:Ljava/lang/String;

.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field public static final MYCONTAINER:I = 0x2

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final PROVIDER_METADATA_PREFIX:Ljava/lang/String; = "RCPProviderName_"

.field private static final PROXY_METADATA_PREFIX:Ljava/lang/String; = "proxyName"

.field private static RESOURCE_NUM:I = 0x0

.field public static final SBALISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static SDCARD_TYPE:I = 0x0

.field private static final SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final SEAPP_HASH_FILE:Ljava/lang/String;

.field private static final SECURED_APPTYPE:I = 0x1

.field private static final SECURE_PKG_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final SIG_POLICY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/SELinuxMMAC$Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNCER_METADATA_PREFIX:Ljava/lang/String; = "RCPSyncerName_"

.field private static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field static final TAG1:Ljava/lang/String; = "MyContainer"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static final USE_OVERRIDE_POLICY:Z

.field public static final WHITELISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static containerIDTable:[I

.field private static sDefaultSeinfo:Ljava/lang/String;

.field private static sSigSeinfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/SELinuxMMAC$Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    sput-object v7, Lcom/android/server/pm/SELinuxMMAC;->sDefaultSeinfo:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/selinux_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->useOverridePolicy()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/security/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/seapp_contexts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    :goto_1
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/seapp_hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    sput v4, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    sput v5, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    sput v6, Lcom/android/server/pm/SELinuxMMAC;->RESOURCE_NUM:I

    const/16 v0, 0x12c

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "security/spota/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    aput-object v7, v0, v1

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v0, "/seapp_contexts"

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arraylist_to_int_array(Ljava/util/ArrayList;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [I

    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)Z
    .locals 18
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v11, :cond_11

    aget-object v13, v1, v3

    .local v13, "s":Landroid/content/pm/Signature;
    if-nez v13, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/SELinuxMMAC$Policy;

    .local v14, "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$Policy;
    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/pm/SELinuxMMAC$Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v14, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v14, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    new-instance v12, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v12}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v12, "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    invoke-virtual {v13}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v15, v12, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .local v2, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_2
    :goto_2
    const-string v15, "platform"

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "shared"

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v15, :cond_f

    const/4 v5, 0x0

    .local v5, "isProvider":Z
    const/4 v7, 0x0

    .local v7, "isSyncer":Z
    const/4 v6, 0x0

    .local v6, "isProxy":Z
    const/4 v4, 0x0

    .local v4, "isFileCopier":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_f

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "key":Ljava/lang/String;
    const-string v15, "RCPProviderName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    .end local v4    # "isFileCopier":Z
    .end local v5    # "isProvider":Z
    .end local v6    # "isProxy":Z
    .end local v7    # "isSyncer":Z
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    iget-boolean v15, v14, Lcom/android/server/pm/SELinuxMMAC$Policy;->isContainerApp:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v16, 0x3ff

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":s0:c"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_4

    .restart local v4    # "isFileCopier":Z
    .restart local v5    # "isProvider":Z
    .restart local v6    # "isProxy":Z
    .restart local v7    # "isSyncer":Z
    .restart local v8    # "it":Ljava/util/Iterator;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const-string v15, "RCPSyncerName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_8
    const-string v15, "proxyName"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_9
    const-string v15, "rcpFileCopier"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v4, 0x1

    goto/16 :goto_3

    .end local v9    # "key":Ljava/lang/String;
    :cond_a
    if-nez v5, :cond_b

    if-nez v7, :cond_b

    if-nez v6, :cond_b

    if-eqz v4, :cond_f

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Provider Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Syncer Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Proxy Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as an RCP File Copier App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "isFileCopier":Z
    .end local v5    # "isProvider":Z
    .end local v6    # "isProxy":Z
    .end local v7    # "isSyncer":Z
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const/4 v15, 0x1

    .end local v12    # "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v13    # "s":Landroid/content/pm/Signature;
    .end local v14    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$Policy;
    :goto_5
    return v15

    .restart local v13    # "s":Landroid/content/pm/Signature;
    .restart local v14    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$Policy;
    :cond_10
    const-string v15, "SELinuxMMAC"

    const-string v16, "Install policy instance is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v13    # "s":Landroid/content/pm/Signature;
    .end local v14    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$Policy;
    :cond_11
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/SELinuxMMAC$Policy;

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget v15, v15, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    move-object/from16 v0, v16

    iput v15, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget-object v15, v15, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    const/4 v15, 0x0

    goto/16 :goto_5
.end method

.method public static checkContainerAllowCategory(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v0, "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SELinuxMMAC"

    const-string v3, " Given Package Name has a non-empty Container Allow Category"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method protected static checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    const/4 v0, 0x0

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static compareHashsets(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "oldlist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p1, "newlist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "SELinuxMMAC"

    const-string v4, "xxxxxx Entered compareHashsets"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .local v0, "diffList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Looping over packages in old list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Package not found in new list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "pkgName":Ljava/lang/String;
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Looping over packages in new list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Package not found in old list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method protected static createMyContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    const-string v8, "container"

    monitor-enter v8

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v7, 0x12c

    if-ge v3, v7, :cond_4

    :try_start_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    aget v7, v7, v3

    if-nez v7, :cond_3

    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v2}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v2, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    const/4 v0, 0x0

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v2, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iput-object p0, v2, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v3

    add-int/lit16 v7, v3, 0xc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 v6, v3, 0xc9

    .local v6, "newContainerID":I
    add-int/lit16 v7, v3, 0xc9

    monitor-exit v8

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v6    # "newContainerID":I
    :goto_2
    return v7

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .local v5, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_2

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_1

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, -0x7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static dumpHash(Ljava/io/File;[B)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .local v2, "tmp":Ljava/io/File;
    :try_start_0
    const-string v3, "seapp_hash"

    const-string v4, ".journal"

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/File;->setReadable(Z)Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure renaming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    goto :goto_0
.end method

.method public static findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .local v0, "certs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private static flushInstallPolicy()V
    .locals 12

    .prologue
    :try_start_0
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .local v6, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .local v0, "containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "SELinuxMMAC"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    const/4 v7, 0x0

    .local v7, "pos":I
    :goto_1
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_2

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    :goto_2
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_4

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .local v8, "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .local v9, "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    goto :goto_3

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v9    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v8    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    :cond_4
    const/4 v7, 0x0

    :goto_4
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_6

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .restart local v8    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .restart local v9    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    goto :goto_5

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v9    # "wlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v8    # "wlaSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;>;"
    :cond_6
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->setupResourceLists()V

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    const/16 v10, 0x12c

    if-ge v4, v10, :cond_0

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    const/4 v11, 0x0

    aput v11, v10, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method

.method public static getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 14
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    array-length v10, p1

    new-array v9, v10, [Landroid/content/pm/Signature;

    .local v9, "signatures":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, p1

    if-ge v3, v10, :cond_0

    new-instance v10, Landroid/content/pm/Signature;

    aget-object v11, p1, v3

    invoke-direct {v10, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v9

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v7, v1, v4

    .local v7, "s":Landroid/content/pm/Signature;
    if-nez v7, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SELinuxMMAC$Policy;

    .local v8, "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$Policy;
    if-eqz v8, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {v8, p0}, Lcom/android/server/pm/SELinuxMMAC$Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v10, v8, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v10, v8, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iput v13, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    new-instance v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v6}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v6, "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iput-object p0, v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .local v2, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    .end local v2    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v7    # "s":Landroid/content/pm/Signature;
    .end local v8    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$Policy;
    :cond_3
    :goto_3
    return-object v0

    .restart local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .restart local v7    # "s":Landroid/content/pm/Signature;
    .restart local v8    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$Policy;
    :cond_4
    const-string v10, "sec_container_"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "container"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    goto :goto_3

    .end local v6    # "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_5
    const-string v10, "SELinuxMMAC"

    const-string v11, "Install policy instance is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v7    # "s":Landroid/content/pm/Signature;
    .end local v8    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$Policy;
    :cond_6
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$Policy;

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget v10, v10, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget-object v10, v10, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iput v13, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string v10, "untrusted"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iput v13, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v12, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    goto :goto_3
.end method

.method public static getBlacklist(II)Ljava/util/HashSet;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v0, "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .local v1, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .end local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;
    .locals 13
    .param p0, "containerID"    # I
    .param p1, "CONTAINER_TYPE"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v12, 0x2

    const-string v11, "container"

    monitor-enter v11

    const/4 v3, 0x0

    .local v3, "existContainerAllowCat":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .local v7, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v3, v10, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v9, 0x0

    .local v9, "srcCategories":[Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .local v1, "cat":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    if-ne p1, v10, :cond_1

    if-ne p2, v12, :cond_1

    const/16 v10, 0x66

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    iget-object v10, v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ne p1, v12, :cond_2

    const/4 v10, 0x4

    if-ne p2, v10, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    iget-object v10, v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cat":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "srcCategories":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    monitor-exit v11

    :goto_1
    return-object v10

    :cond_4
    const/4 v10, 0x0

    monitor-exit v11

    goto :goto_1

    .end local v7    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .end local v8    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method protected static getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-exit v3

    return-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getPackageLevelbyKey(Ljava/lang/String;)I
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x3ff

    .local v0, "category":I
    if-eqz p0, :cond_0

    const-string v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, "dotIndex":I
    const-string v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "categoryStartIndex":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "strCategory":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v1    # "categoryStartIndex":I
    .end local v2    # "dotIndex":I
    .end local v4    # "strCategory":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .restart local v1    # "categoryStartIndex":I
    .restart local v2    # "dotIndex":I
    .restart local v4    # "strCategory":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not define category."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getPackageNamesFromSEContainerID(III)[Ljava/lang/String;
    .locals 7
    .param p0, "containerID"    # I
    .param p1, "CONTAINER_TYPE"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v5, 0x0

    const-string v6, "container"

    monitor-enter v6

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v6

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const/16 v4, 0x66

    if-eq p0, v4, :cond_1

    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v4, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    if-ne v4, p0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .end local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .restart local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getSBAlist(I)Ljava/util/HashSet;
    .locals 1
    .param p0, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method protected static getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 7
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "CONTAINER_TYPE"    # I
    .param p4, "appType"    # I

    .prologue
    const/4 v4, -0x1

    const-string v5, "container"

    monitor-enter v5

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v0, "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .local v1, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    if-eqz v1, :cond_3

    iget v3, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {p0, p1, v3}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v5

    .end local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :goto_0
    return v3

    :cond_0
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .restart local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_1
    monitor-exit v5

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne p3, v3, :cond_3

    if-eqz v1, :cond_3

    iget v3, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v6, 0x66

    if-ne v3, v6, :cond_3

    iget v3, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v5

    goto :goto_0

    .end local v0    # "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v2    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .restart local v1    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .restart local v2    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0
.end method

.method protected static getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I
    .locals 14
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "CONTAINER_TYPE"    # I
    .param p4, "appType"    # I

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "containerIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v12, "container"

    monitor-enter v12

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v7}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v7, "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-eqz v9, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .local v8, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v4, v8, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .local v4, "existContainerAllowCat":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "srcCategories":[Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    :cond_0
    if-eqz v10, :cond_6

    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v2, v1, v5

    .local v2, "cat":Ljava/lang/String;
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_2

    const/4 v11, 0x2

    move/from16 v0, p4

    if-ne v0, v11, :cond_2

    const/16 v11, 0x66

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x66

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v11

    monitor-exit v12

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cat":Ljava/lang/String;
    .end local v4    # "existContainerAllowCat":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v10    # "srcCategories":[Ljava/lang/String;
    :goto_1
    return-object v11

    :cond_1
    const/4 v11, 0x0

    monitor-exit v12

    goto :goto_1

    .end local v7    # "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v9    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "cat":Ljava/lang/String;
    .restart local v4    # "existContainerAllowCat":Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .restart local v8    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .restart local v9    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "srcCategories":[Ljava/lang/String;
    :cond_2
    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v0, v11, :cond_3

    const/4 v11, 0x4

    move/from16 v0, p4

    if-ne v0, v11, :cond_3

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {p0, p1, v11}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "SELinuxMMAC"

    const-string v13, "Given Container ID not created by Caller - Returning Refused"

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "cat":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v11

    monitor-exit v12

    goto :goto_1

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_6
    const/4 v11, 0x0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    if-nez p0, :cond_1

    move-object v5, v6

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v3, p0, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    goto :goto_0
.end method

.method public static getWhitelist(II)Ljava/util/HashSet;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static hasGenericContainers()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x12c

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static hasSEContainers()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMyContainerID(I)Z
    .locals 1
    .param p0, "containerID"    # I

    .prologue
    const/16 v0, 0xc9

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f5

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isSEContainerActivated(I)Z
    .locals 7
    .param p0, "containerID"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "res":Z
    const-string v5, "container"

    monitor-enter v5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    monitor-exit v5

    move v3, v2

    .end local v2    # "res":Z
    .local v3, "res":I
    :goto_1
    return v3

    .end local v3    # "res":I
    .restart local v2    # "res":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v5

    move v3, v2

    .restart local v3    # "res":I
    goto :goto_1

    .end local v0    # "col":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v1    # "i":I
    .end local v3    # "res":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "seInfo"    # Ljava/lang/String;

    .prologue
    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "release"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "seinfoValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SELinuxMMAC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<seinfo> without valid value at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static readInstallPolicy()Z
    .locals 21

    .prologue
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .local v14, "sigSeinfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/pm/Signature;Lcom/android/server/pm/SELinuxMMAC$Policy;>;"
    const/4 v4, 0x0

    .local v4, "defaultSeinfo":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "policyFile":Ljava/io/FileReader;
    const/4 v13, 0x0

    .local v13, "priorityPolicyFile":Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v7, 0x0

    .local v7, "index":I
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v7

    :try_start_0
    new-instance v12, Ljava/io/FileReader;

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v18, v7, -0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v11    # "policyFile":Ljava/io/FileReader;
    .local v12, "policyFile":Ljava/io/FileReader;
    :try_start_1
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v18, v7, -0x1

    aget-object v13, v17, v18
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v12, :cond_0

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    :cond_0
    :goto_0
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v8, v0, [Ljava/io/File;

    const/16 v17, 0x0

    aput-object v13, v8, v17

    const/16 v17, 0x1

    new-instance v18, Ljava/io/File;

    const-string v19, "/data/security/good/mac_permissions.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v8, v17

    const/16 v17, 0x2

    new-instance v18, Ljava/io/File;

    const-string v19, "/data/security/mycontainer/mac_permissions.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v8, v17

    const/16 v17, 0x3

    new-instance v18, Ljava/io/File;

    const-string v19, "/data/security/whitelist/mac_permissions.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v8, v17

    const/16 v17, 0x4

    const/16 v18, 0x0

    aput-object v18, v8, v17

    .local v8, "macPermFiles":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "cnt":I
    const/4 v2, 0x0

    .local v2, "cert":Ljava/lang/String;
    move-object v11, v12

    .end local v12    # "policyFile":Ljava/io/FileReader;
    .restart local v11    # "policyFile":Ljava/io/FileReader;
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    :goto_1
    aget-object v17, v8, v3

    if-eqz v17, :cond_c

    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Read and parse file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v8, v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    new-instance v12, Ljava/io/FileReader;

    aget-object v17, v8, v3

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v11    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "policyFile":Ljava/io/FileReader;
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v17, "policy"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    if-eqz v12, :cond_2

    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    :cond_2
    move-object v11, v12

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "policyFile":Ljava/io/FileReader;
    .restart local v11    # "policyFile":Ljava/io/FileReader;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "cert":Ljava/lang/String;
    .end local v3    # "cnt":I
    .end local v8    # "macPermFiles":[Ljava/io/File;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t find install policy "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v20, v7, -0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "SELinuxMMAC"

    const-string v18, "MMAC install disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v17, 0x0

    if-eqz v11, :cond_4

    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_5
    return v17

    :catchall_0
    move-exception v17

    :goto_6
    if-eqz v11, :cond_5

    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    :cond_5
    :goto_7
    throw v17

    .end local v11    # "policyFile":Ljava/io/FileReader;
    .restart local v2    # "cert":Ljava/lang/String;
    .restart local v3    # "cnt":I
    .restart local v8    # "macPermFiles":[Ljava/io/File;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "policyFile":Ljava/io/FileReader;
    :cond_6
    :try_start_9
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .local v16, "tagName":Ljava/lang/String;
    const-string v17, "signer"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x0

    const-string v18, "signature"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<signer> without signature at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v11, v12

    .end local v12    # "policyFile":Ljava/io/FileReader;
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "policyFile":Ljava/io/FileReader;
    :goto_8
    :try_start_a
    const-string v17, "SELinuxMMAC"

    const-string v18, "Got execption parsing "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v11, :cond_3

    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v17

    goto/16 :goto_3

    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v11    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "tagName":Ljava/lang/String;
    :cond_7
    :try_start_c
    new-instance v15, Landroid/content/pm/Signature;

    invoke-direct {v15, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .local v15, "signature":Landroid/content/pm/Signature;
    if-nez v15, :cond_8

    :try_start_d
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<signer> with null signature at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "signature":Landroid/content/pm/Signature;
    .end local v16    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object v11, v12

    .end local v12    # "policyFile":Ljava/io/FileReader;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "policyFile":Ljava/io/FileReader;
    :goto_9
    :try_start_e
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File not found exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v8, v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v11, :cond_3

    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v17

    goto/16 :goto_3

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v11    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "tagName":Ljava/lang/String;
    :catch_5
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_10
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<signer> with bad signature at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_2

    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    :catch_6
    move-exception v5

    move-object v11, v12

    .end local v12    # "policyFile":Ljava/io/FileReader;
    .local v5, "e":Ljava/io/IOException;
    .restart local v11    # "policyFile":Ljava/io/FileReader;
    :goto_a
    :try_start_11
    const-string v17, "SELinuxMMAC"

    const-string v18, "Got execption parsing "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v11, :cond_3

    :try_start_12
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v17

    goto/16 :goto_3

    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "policyFile":Ljava/io/FileReader;
    .restart local v15    # "signature":Landroid/content/pm/Signature;
    .restart local v16    # "tagName":Ljava/lang/String;
    :cond_8
    :try_start_13
    invoke-static {v9, v2}, Lcom/android/server/pm/SELinuxMMAC;->readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$Policy;

    move-result-object v10

    .local v10, "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_2

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    .end local v15    # "signature":Landroid/content/pm/Signature;
    .end local v16    # "tagName":Ljava/lang/String;
    :catchall_1
    move-exception v17

    move-object v11, v12

    .end local v12    # "policyFile":Ljava/io/FileReader;
    .restart local v11    # "policyFile":Ljava/io/FileReader;
    :goto_b
    if-eqz v11, :cond_9

    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    :cond_9
    :goto_c
    throw v17

    .end local v11    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "tagName":Ljava/lang/String;
    :cond_a
    :try_start_15
    const-string v17, "default"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/server/pm/SELinuxMMAC;->readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$Policy;

    move-result-object v10

    .restart local v10    # "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    if-eqz v10, :cond_1

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .end local v10    # "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    :cond_b
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_2

    .end local v16    # "tagName":Ljava/lang/String;
    :catch_8
    move-exception v17

    move-object v11, v12

    .end local v12    # "policyFile":Ljava/io/FileReader;
    .restart local v11    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_c
    if-eqz v11, :cond_d

    :try_start_16
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d

    :cond_d
    :goto_d
    const/16 v17, 0x1

    goto/16 :goto_5

    .end local v2    # "cert":Ljava/lang/String;
    .end local v3    # "cnt":I
    .end local v8    # "macPermFiles":[Ljava/io/File;
    .end local v11    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "policyFile":Ljava/io/FileReader;
    :catch_9
    move-exception v17

    goto/16 :goto_0

    .end local v12    # "policyFile":Ljava/io/FileReader;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "policyFile":Ljava/io/FileReader;
    :catch_a
    move-exception v18

    goto/16 :goto_5

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v18

    goto/16 :goto_7

    .restart local v2    # "cert":Ljava/lang/String;
    .restart local v3    # "cnt":I
    .restart local v8    # "macPermFiles":[Ljava/io/File;
    :catch_c
    move-exception v18

    goto :goto_c

    :catch_d
    move-exception v17

    goto :goto_d

    :catchall_2
    move-exception v17

    goto :goto_b

    :catch_e
    move-exception v5

    goto :goto_a

    :catch_f
    move-exception v5

    goto/16 :goto_9

    :catch_10
    move-exception v5

    goto/16 :goto_8

    .end local v2    # "cert":Ljava/lang/String;
    .end local v3    # "cnt":I
    .end local v8    # "macPermFiles":[Ljava/io/File;
    .end local v11    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "policyFile":Ljava/io/FileReader;
    :catchall_3
    move-exception v17

    move-object v11, v12

    .end local v12    # "policyFile":Ljava/io/FileReader;
    .restart local v11    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_6

    .end local v11    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "policyFile":Ljava/io/FileReader;
    :catch_11
    move-exception v5

    move-object v11, v12

    .end local v12    # "policyFile":Ljava/io/FileReader;
    .restart local v11    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_4
.end method

.method private static readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/SELinuxMMAC$Policy;
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, "outerDepth":I
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$Policy;

    invoke-direct {v2}, Lcom/android/server/pm/SELinuxMMAC$Policy;-><init>()V

    .local v2, "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    if-ne v5, v9, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_6

    :cond_1
    if-eq v5, v9, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "seinfo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .local v3, "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/SELinuxMMAC$Policy;->putSeinfo(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_3
    const-string v6, "package"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "SELinuxMMAC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<package> without valid name at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/SELinuxMMAC$Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v4    # "tagName":Ljava/lang/String;
    :cond_6
    return-object v2
.end method

.method private static readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$Policy;
    .locals 51
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "certs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .local v34, "pkgPolicy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$Policy;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v30

    .local v30, "outerDepth":I
    const/16 v41, 0x0

    .local v41, "seinfo":Ljava/lang/String;
    const/16 v40, -0x1

    .local v40, "seandroidCategory":I
    const/16 v39, 0x0

    .local v39, "seandroidAllowCategory":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "allowCategoryValue":Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, "isContainerApp":Z
    new-instance v35, Lcom/android/server/pm/SELinuxMMAC$Policy;

    invoke-direct/range {v35 .. v35}, Lcom/android/server/pm/SELinuxMMAC$Policy;-><init>()V

    .local v35, "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v46

    .local v46, "type":I
    const/16 v48, 0x1

    move/from16 v0, v46

    move/from16 v1, v48

    if-eq v0, v1, :cond_25

    const/16 v48, 0x3

    move/from16 v0, v46

    move/from16 v1, v48

    if-ne v0, v1, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v48

    move/from16 v0, v48

    move/from16 v1, v30

    if-le v0, v1, :cond_25

    :cond_1
    const/16 v48, 0x3

    move/from16 v0, v46

    move/from16 v1, v48

    if-eq v0, v1, :cond_0

    const/16 v48, 0x4

    move/from16 v0, v46

    move/from16 v1, v48

    if-eq v0, v1, :cond_0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v44

    .local v44, "tagName":Ljava/lang/String;
    const-string v48, "seinfo"

    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_6

    const/16 v48, 0x0

    const-string v49, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .local v42, "seinfoValue":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_3

    move-object/from16 v41, v42

    :goto_1
    const/16 v48, 0x0

    const-string v49, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "categoryValue":Ljava/lang/String;
    if-eqz v11, :cond_4

    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v40

    :goto_2
    const/16 v48, 0x0

    const-string v49, "allowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v39, v4

    :goto_3
    if-eqz v41, :cond_2

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    # setter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$002(Lcom/android/server/pm/SELinuxMMAC$Policy;Ljava/lang/String;)Ljava/lang/String;

    move/from16 v0, v40

    move-object/from16 v1, v35

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    .end local v11    # "categoryValue":Ljava/lang/String;
    .end local v42    # "seinfoValue":Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .restart local v42    # "seinfoValue":Ljava/lang/String;
    :cond_3
    const-string v48, "SELinuxMMAC"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "<seinfo> without value at "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local v11    # "categoryValue":Ljava/lang/String;
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/NumberFormatException;
    const-string v48, "SELinuxMMAC"

    const-string v49, " Category value is incorrect"

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const/16 v40, 0x3ff

    goto :goto_2

    :cond_5
    const-string v39, "0,501-1023"

    goto :goto_3

    .end local v11    # "categoryValue":Ljava/lang/String;
    .end local v42    # "seinfoValue":Ljava/lang/String;
    :cond_6
    const-string v48, "package"

    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_8

    const/16 v48, 0x0

    const-string v49, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .local v32, "pkg":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v48

    if-nez v48, :cond_7

    const-string v48, "SELinuxMMAC"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "<package> without valid name at "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v41

    if-eqz v41, :cond_2

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/SELinuxMMAC$Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v32    # "pkg":Ljava/lang/String;
    :cond_8
    const-string v48, "container"

    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_9

    const/16 v48, 0x0

    const-string v49, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "containerflag":Ljava/lang/String;
    if-eqz v16, :cond_2

    const-string v48, "true"

    move-object/from16 v0, v48

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_2

    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/server/pm/SELinuxMMAC$Policy;->isContainerApp:Z

    goto/16 :goto_4

    .end local v16    # "containerflag":Ljava/lang/String;
    :cond_9
    const-string v48, "service"

    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_20

    new-instance v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    const/16 v48, 0x0

    move-object/from16 v0, v48

    invoke-direct {v15, v0}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .local v15, "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/16 v48, 0x0

    move-object/from16 v0, v48

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    const/16 v48, 0x0

    move/from16 v0, v48

    iput v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    const/16 v48, 0x0

    move-object/from16 v0, v48

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    const/16 v48, 0x0

    move-object/from16 v0, v48

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    const/16 v48, 0x0

    move-object/from16 v0, v48

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    const/16 v48, 0x0

    move-object/from16 v0, v48

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    const/16 v48, 0x0

    const-string v49, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .local v33, "pkgName":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v48

    if-nez v48, :cond_a

    const-string v48, "SELinuxMMAC"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "<package> without valid name at "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_a
    const/16 v48, 0x0

    const-string v49, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "category":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "seinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "innerSeinfo":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "allowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "innerAllowCategory":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "containerallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "contAllowCat":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "agentInfo":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "agent"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v22, :cond_b

    const-string v22, "0,501-1023"

    :cond_b
    new-instance v31, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v31, "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    if-eqz v33, :cond_c

    if-eqz p1, :cond_c

    const/16 v18, 0x0

    .local v18, "existContAllowCat":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC;->getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_11

    if-eqz v13, :cond_10

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ","

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .local v29, "newValue":Ljava/lang/String;
    move-object/from16 v0, v29

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .end local v18    # "existContAllowCat":Ljava/lang/String;
    .end local v29    # "newValue":Ljava/lang/String;
    :cond_c
    :goto_5
    if-eqz v33, :cond_2

    if-eqz v10, :cond_2

    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    move/from16 v0, v48

    iput v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    if-eqz v23, :cond_13

    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    :cond_d
    :goto_7
    const/16 v48, 0x0

    const-string v49, "issdcardsbaapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, "issdcardsbaapp":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "isbluetoothsbaapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .local v25, "isbluetoothsbaapp":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "sdcarduserid"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .local v37, "sdcarduserid":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "bluetoothuserid"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "bluetoothuserid":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "sdcarduseridBL"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .local v38, "sdcarduseridBL":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "bluetoothuseridBL"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "bluetoothuseridBL":Ljava/lang/String;
    if-eqz v26, :cond_e

    const-string v48, "true"

    move-object/from16 v0, v48

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_e

    iget v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v48, v0

    or-int/lit8 v48, v48, 0x4

    move/from16 v0, v48

    iput v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashSet;

    move-object/from16 v0, v48

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v25, :cond_f

    const-string v48, "true"

    move-object/from16 v0, v48

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_f

    iget v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v48, v0

    or-int/lit8 v48, v48, 0x8

    move/from16 v0, v48

    iput v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashSet;

    move-object/from16 v0, v48

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v37, :cond_16

    move-object/from16 v0, v37

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    const-string v48, ","

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    .local v47, "users":[Ljava/lang/String;
    const/16 v43, 0x0

    .local v43, "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v5, v47

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_16

    aget-object v27, v5, v20

    .local v27, "item":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .local v21, "id":I
    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_15

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .end local v43    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v43, Ljava/util/HashSet;

    .restart local v43    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_9
    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v7    # "bluetoothuserid":Ljava/lang/String;
    .end local v8    # "bluetoothuseridBL":Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v21    # "id":I
    .end local v25    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v26    # "issdcardsbaapp":Ljava/lang/String;
    .end local v27    # "item":Ljava/lang/String;
    .end local v28    # "len$":I
    .end local v37    # "sdcarduserid":Ljava/lang/String;
    .end local v38    # "sdcarduseridBL":Ljava/lang/String;
    .end local v43    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v47    # "users":[Ljava/lang/String;
    .restart local v18    # "existContAllowCat":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_5

    :cond_11
    if-eqz v13, :cond_12

    iput-object v13, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_5

    :cond_12
    const/16 v48, 0x0

    move-object/from16 v0, v48

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_5

    .end local v18    # "existContAllowCat":Ljava/lang/String;
    :catch_1
    move-exception v17

    .local v17, "e":Ljava/lang/Exception;
    const-string v48, "SELinuxMMAC"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " does not define correct category."

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v17    # "e":Ljava/lang/Exception;
    :cond_13
    if-eqz v41, :cond_d

    if-eqz v4, :cond_14

    iput-object v4, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    :goto_a
    move-object/from16 v0, v41

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    goto :goto_a

    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v7    # "bluetoothuserid":Ljava/lang/String;
    .restart local v8    # "bluetoothuseridBL":Ljava/lang/String;
    .restart local v20    # "i$":I
    .restart local v21    # "id":I
    .restart local v25    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v26    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v27    # "item":Ljava/lang/String;
    .restart local v28    # "len$":I
    .restart local v37    # "sdcarduserid":Ljava/lang/String;
    .restart local v38    # "sdcarduseridBL":Ljava/lang/String;
    .restart local v43    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v47    # "users":[Ljava/lang/String;
    :cond_15
    new-instance v43, Ljava/util/HashSet;

    .end local v43    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v43 .. v43}, Ljava/util/HashSet;-><init>()V

    .restart local v43    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_9

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v21    # "id":I
    .end local v27    # "item":Ljava/lang/String;
    .end local v28    # "len$":I
    .end local v43    # "swlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v47    # "users":[Ljava/lang/String;
    :cond_16
    if-eqz v7, :cond_18

    iput-object v7, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    const-string v48, ","

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "users":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v5, v47

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v20, 0x0

    .restart local v20    # "i$":I
    :goto_b
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    aget-object v27, v5, v20

    .restart local v27    # "item":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .restart local v21    # "id":I
    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_17

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v9, Ljava/util/HashSet;

    .restart local v9    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_c
    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    :cond_17
    new-instance v9, Ljava/util/HashSet;

    .end local v9    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .restart local v9    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_c

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "bwlalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20    # "i$":I
    .end local v21    # "id":I
    .end local v27    # "item":Ljava/lang/String;
    .end local v28    # "len$":I
    .end local v47    # "users":[Ljava/lang/String;
    :cond_18
    if-eqz v38, :cond_1a

    move-object/from16 v0, v38

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    const-string v48, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "users":[Ljava/lang/String;
    const/16 v36, 0x0

    .local v36, "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v5, v47

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v20, 0x0

    .restart local v20    # "i$":I
    :goto_d
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_1a

    aget-object v27, v5, v20

    .restart local v27    # "item":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .restart local v21    # "id":I
    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_19

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .end local v36    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v36, Ljava/util/HashSet;

    .restart local v36    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_e
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    :cond_19
    new-instance v36, Ljava/util/HashSet;

    .end local v36    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {v36 .. v36}, Ljava/util/HashSet;-><init>()V

    .restart local v36    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_e

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v21    # "id":I
    .end local v27    # "item":Ljava/lang/String;
    .end local v28    # "len$":I
    .end local v36    # "sblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v47    # "users":[Ljava/lang/String;
    :cond_1a
    if-eqz v8, :cond_1c

    iput-object v8, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    const-string v48, ","

    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "users":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v5, v47

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v20, 0x0

    .restart local v20    # "i$":I
    :goto_f
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c

    aget-object v27, v5, v20

    .restart local v27    # "item":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .restart local v21    # "id":I
    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1b

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v6, Ljava/util/HashSet;

    .restart local v6    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_10
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v49, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    :cond_1b
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .restart local v6    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_10

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "bblalist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20    # "i$":I
    .end local v21    # "id":I
    .end local v27    # "item":Ljava/lang/String;
    .end local v28    # "len$":I
    .end local v47    # "users":[Ljava/lang/String;
    :cond_1c
    iget-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v48, v0

    if-eqz v48, :cond_2

    if-nez v3, :cond_1d

    const-string v48, "generic_mdm"

    iget-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1f

    :cond_1d
    new-instance v19, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v19, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    const/4 v12, 0x0

    .local v12, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1e

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v12, Ljava/util/HashSet;

    .restart local v12    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_11
    iget v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v48, v0

    const/16 v49, 0xc9

    move/from16 v0, v48

    move/from16 v1, v49

    if-lt v0, v1, :cond_0

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    iget v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v49, v0

    move/from16 v0, v49

    add-int/lit16 v0, v0, -0xc9

    move/from16 v49, v0

    const/16 v50, 0x1

    aput v50, v48, v49

    goto/16 :goto_0

    :cond_1e
    new-instance v12, Ljava/util/HashSet;

    .end local v12    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .restart local v12    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_11

    .end local v12    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v19    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_1f
    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .end local v3    # "agentInfo":Ljava/lang/String;
    .end local v7    # "bluetoothuserid":Ljava/lang/String;
    .end local v8    # "bluetoothuseridBL":Ljava/lang/String;
    .end local v10    # "category":Ljava/lang/String;
    .end local v13    # "contAllowCat":Ljava/lang/String;
    .end local v15    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v22    # "innerAllowCategory":Ljava/lang/String;
    .end local v23    # "innerSeinfo":Ljava/lang/String;
    .end local v25    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v26    # "issdcardsbaapp":Ljava/lang/String;
    .end local v31    # "packageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v33    # "pkgName":Ljava/lang/String;
    .end local v37    # "sdcarduserid":Ljava/lang/String;
    .end local v38    # "sdcarduseridBL":Ljava/lang/String;
    :cond_20
    const-string v48, "containerallowpackage"

    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_2

    new-instance v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    const/16 v48, 0x0

    move-object/from16 v0, v48

    invoke-direct {v15, v0}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .restart local v15    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/16 v48, 0x0

    const-string v49, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "pkgName":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "containerallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "contAllowCat":Ljava/lang/String;
    const/16 v48, 0x0

    const-string v49, "seinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .local v45, "trustInnerSeinfo":Ljava/lang/String;
    new-instance v14, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v14}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v14, "containerAllowPackageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v33

    iput-object v0, v14, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    if-eqz v33, :cond_2

    if-eqz p1, :cond_2

    new-instance v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .end local v15    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/16 v48, 0x0

    move-object/from16 v0, v48

    invoke-direct {v15, v0}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .restart local v15    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/16 v18, 0x0

    .restart local v18    # "existContAllowCat":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC;->getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_22

    if-eqz v13, :cond_21

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ","

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "newValue":Ljava/lang/String;
    move-object/from16 v0, v29

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    .end local v29    # "newValue":Ljava/lang/String;
    :goto_12
    if-eqz v45, :cond_24

    move-object/from16 v0, v45

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    :goto_13
    iput-object v4, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move/from16 v0, v40

    iput v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    sget-object v48, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v48

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_21
    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_12

    :cond_22
    if-eqz v13, :cond_23

    iput-object v13, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_12

    :cond_23
    const-string v48, "501-1023"

    move-object/from16 v0, v48

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_12

    :cond_24
    move-object/from16 v0, v41

    iput-object v0, v15, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    goto :goto_13

    .end local v13    # "contAllowCat":Ljava/lang/String;
    .end local v14    # "containerAllowPackageID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v15    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v18    # "existContAllowCat":Ljava/lang/String;
    .end local v33    # "pkgName":Ljava/lang/String;
    .end local v44    # "tagName":Ljava/lang/String;
    .end local v45    # "trustInnerSeinfo":Ljava/lang/String;
    :cond_25
    return-object v35
.end method

.method private static readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, "outerDepth":I
    const/4 v1, 0x0

    .local v1, "seinfo":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    :cond_1
    if-eq v3, v5, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "seinfo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method protected static removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    add-int/lit16 v5, p2, -0xc9

    const/4 v6, 0x0

    aput v6, v4, v5

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    const/4 v0, 0x0

    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v3

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :goto_1
    return v2

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    const/16 v2, -0xc

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static returnHash(Ljava/lang/String;)[B
    .locals 3
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "contents":[B
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v0    # "contents":[B
    :catch_0
    move-exception v1

    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setRestoreconDone()V
    .locals 5

    .prologue
    :try_start_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "currentHash":[B
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/android/server/pm/SELinuxMMAC;->dumpHash(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "SELinuxMMAC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error with saving hash to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setupResourceLists()V
    .locals 3

    .prologue
    const-string v1, "xxxxxxsetupresourcelist"

    const-string v2, "entered setup resource list in selinuxmmac"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    sget v1, Lcom/android/server/pm/SELinuxMMAC;->RESOURCE_NUM:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static shouldRestorecon()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "currentHash":[B
    :try_start_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v2, 0x0

    .local v2, "storedHash":[B
    :try_start_1
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .end local v2    # "storedHash":[B
    :cond_1
    :goto_1
    return v3

    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    const-string v4, "SELinuxMMAC"

    const-string v5, "Error with hashing seapp_contexts."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v2    # "storedHash":[B
    :catch_1
    move-exception v1

    .restart local v1    # "ioe":Ljava/io/IOException;
    const-string v4, "SELinuxMMAC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error opening "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Assuming first boot."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static useOverridePolicy()Z
    .locals 6

    .prologue
    :try_start_0
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "overrideVersion":Ljava/lang/String;
    const-string v3, "/selinux_version"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "baseVersion":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_0
    return v3

    .restart local v0    # "baseVersion":Ljava/lang/String;
    :cond_0
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override policy version \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "base version \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Skipping override policy files."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "SELinuxMMAC"

    const-string v4, "Skipping override policy files."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static validatePackageName(Ljava/lang/String;)Z
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    if-nez p0, :cond_1

    move v3, v5

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "hasSep":Z
    const/4 v2, 0x1

    .local v2, "front":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    const/16 v6, 0x61

    if-lt v1, v6, :cond_2

    const/16 v6, 0x7a

    if-le v1, v6, :cond_3

    :cond_2
    const/16 v6, 0x41

    if-lt v1, v6, :cond_5

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_5

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-nez v2, :cond_7

    const/16 v6, 0x30

    if-lt v1, v6, :cond_6

    const/16 v6, 0x39

    if-le v1, v6, :cond_4

    :cond_6
    const/16 v6, 0x5f

    if-eq v1, v6, :cond_4

    :cond_7
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_8

    const/4 v3, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    move v3, v5

    goto :goto_0
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "N":I
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    const/16 v4, 0x61

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7a

    if-le v1, v4, :cond_4

    :cond_2
    const/16 v4, 0x41

    if-lt v1, v4, :cond_3

    const/16 v4, 0x5a

    if-le v1, v4, :cond_4

    :cond_3
    const/16 v4, 0x5f

    if-ne v1, v4, :cond_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "c":C
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method
