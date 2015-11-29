.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MumXmlDataParser"
.end annotation


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final APPLICATIONONLY:Ljava/lang/String; = "applicationonly"

.field private static final ATTR_ALLOW:Ljava/lang/String; = "allow"

.field private static final ATTR_DISALLOW:Ljava/lang/String; = "disallow"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_REENABLE:Ljava/lang/String; = "reenable"

.field private static final ATTR_REMOVE:Ljava/lang/String; = "remove"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final CLONE_APPLICATION:Ljava/lang/String; = "cloneapplication"

.field private static final CLONE_DISABLE_PKG:Ljava/lang/String; = "clonedisablePkg"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final DISABLE_PKG:Ljava/lang/String; = "disablePkg"

.field private static final DISALLOW:Ljava/lang/String; = "disallow"

.field private static final FORBIDDEN_STRING:Ljava/lang/String; = "forbiddenString"

.field private static final FOTA_DISABLE_PKG:Ljava/lang/String; = "fotadisablePkg"

.field private static final GROUPPKG:Ljava/lang/String; = "groupPkg"

.field private static final GROUPPREFIX:Ljava/lang/String; = "group_"

.field private static final KNOXCORE:Ljava/lang/String; = "knoxCore"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PERSONA:Ljava/lang/String; = "persona"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROTECTED_PKG:Ljava/lang/String; = "protectedPkg"

.field private static final PROVIDER_TAG:Ljava/lang/String; = "provider"

.field private static final REPLACE:Ljava/lang/String; = "replace"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "MumXmlDataParser"


# instance fields
.field fotaCloneAppDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppInstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppReenableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-void
.end method

.method private containsProductName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "target":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "oper":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getFotaCloneDisableApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MumXmlDataParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFotaCloneDisableApps :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneInstallApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MumXmlDataParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFotaCloneInstallApps :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneReenableApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MumXmlDataParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFotaCloneReenableApps :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneRemoveApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MumXmlDataParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFotaCloneInstallApps :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-object v0
.end method

.method public mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "origTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    .local p2, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    const/4 v4, 0x0

    .local v4, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "customName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const-string v6, "MumXmlDataParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mergeKnoxConfigurationTypes: customTypeList == null or empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v5, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v0, "custRow":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public readFromCustomXml()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "rowsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .local v4, "event":I
    const/4 v10, 0x0

    .local v10, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/4 v13, 0x0

    .local v13, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "nameAttribute":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, "ro.product.name"

    const-string v15, "NONE"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "productName":Ljava/lang/String;
    :goto_0
    const/4 v14, 0x1

    if-eq v4, v14, :cond_2

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .local v12, "tag":Ljava/lang/String;
    const-string v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "MumXmlDataParser"

    const-string v15, "New row found "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct {v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    :cond_1
    const-string v14, "column"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "value"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New attribute found : key("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), value("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "Name"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v10, :cond_3

    invoke-virtual {v10, v13}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "event":I
    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "nameAttribute":Ljava/lang/String;
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "productName":Ljava/lang/String;
    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "readFromCustomXml EX:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v11

    .restart local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "event":I
    .restart local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "nameAttribute":Ljava/lang/String;
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "productName":Ljava/lang/String;
    .restart local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v14, "AppInstallList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_4
    const-string v14, "ProtectedPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_5
    const-string v14, "GoogleAppsPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_6
    const-string v14, "application"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New attribute found : name("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v13, :cond_0

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    const-string v14, "protectedPkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New attribute found : name("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v13, :cond_0

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    const-string v14, "disablePkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New attribute found : name("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v13, :cond_0

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    const-string v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_d
    const-string v14, "package"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v14

    if-eqz v14, :cond_e

    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "package: New attribute found knoxCore: name("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "allow"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "content":Ljava/lang/String;
    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "disallow"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    :cond_10
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v2    # "content":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "tag":Ljava/lang/String;
    const-string v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    if-eqz v10, :cond_14

    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_11

    invoke-virtual {v10, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    :cond_11
    if-eqz v9, :cond_12

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v10, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    :cond_12
    if-eqz v5, :cond_13

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v10, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    :cond_13
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    const-string v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    if-eqz v7, :cond_15

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_15

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2600()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readFromXml()V
    .locals 43

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .local v12, "event":I
    const/16 v34, 0x0

    .local v34, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v18, 0x0

    .local v18, "intVal":I
    const/4 v9, 0x0

    .local v9, "booleanVal":Z
    const/16 v20, 0x0

    .local v20, "isRCPDataSettings":Z
    const/16 v37, 0x0

    .local v37, "value":Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, "nameAttribute":Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .local v22, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v31, 0x0

    .local v31, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .local v26, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v28, 0x0

    .local v28, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v38, "ro.product.name"

    const-string v39, "NONE"

    invoke-static/range {v38 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "productName":Ljava/lang/String;
    :goto_0
    const/16 v38, 0x1

    move/from16 v0, v38

    if-eq v12, v0, :cond_4

    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    .local v35, "tag":Ljava/lang/String;
    const-string v38, "row"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3

    const-string v38, "MumXmlDataParser"

    const-string v39, "New row found "

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "type"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1

    new-instance v34, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    .end local v34    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v34 .. v34}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;-><init>()V

    .restart local v34    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    :cond_1
    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2

    new-instance v34, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    .end local v34    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v34 .. v34}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;-><init>()V

    .restart local v34    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    :cond_2
    new-instance v34, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v34    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v34 .. v34}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v34    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    :cond_3
    const-string v38, "column"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "value"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "New attribute found : key("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "), value("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v38, "Name"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_5

    if-eqz v34, :cond_5

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "booleanVal":Z
    .end local v12    # "event":I
    .end local v13    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "intVal":I
    .end local v20    # "isRCPDataSettings":Z
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "nameAttribute":Ljava/lang/String;
    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v27    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v28    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "productName":Ljava/lang/String;
    .end local v31    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v35    # "tag":Ljava/lang/String;
    .end local v37    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "readFromXml EX:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .restart local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "booleanVal":Z
    .restart local v12    # "event":I
    .restart local v13    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "intVal":I
    .restart local v20    # "isRCPDataSettings":Z
    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "nameAttribute":Ljava/lang/String;
    .restart local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v27    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v28    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "productName":Ljava/lang/String;
    .restart local v31    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v35    # "tag":Ljava/lang/String;
    .restart local v37    # "value":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v38, "UID"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_6

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    goto/16 :goto_1

    :cond_6
    const-string v38, "UserID"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v38, -0x1

    move/from16 v0, v18

    move/from16 v1, v38

    if-lt v0, v1, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setUserId(I)V

    goto/16 :goto_1

    :cond_7
    const-string v38, "PersonaIDs"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_8

    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .restart local v27    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_1

    :cond_8
    const-string v38, "Version"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_9

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v38, "MaximumTimeToLock"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_a

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    goto/16 :goto_1

    :cond_a
    const-string v38, "PasswordMinimumLength"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_b

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    goto/16 :goto_1

    :cond_b
    const-string v38, "PasswordMinimumNonLetters"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_c

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    goto/16 :goto_1

    :cond_c
    const-string v38, "PasswordMinimumLetters"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_d

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    goto/16 :goto_1

    :cond_d
    const-string v38, "PasswordMinimumNumeric"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_e

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    goto/16 :goto_1

    :cond_e
    const-string v38, "PasswordMinimumUpperCase"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_f

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    goto/16 :goto_1

    :cond_f
    const-string v38, "PasswordMinimumLowerCase"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_10

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    goto/16 :goto_1

    :cond_10
    const-string v38, "PasswordMinimumSymbols"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_11

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    goto/16 :goto_1

    :cond_11
    const-string v38, "PasswordQuality"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_12

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    goto/16 :goto_1

    :cond_12
    const-string v38, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_13

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    goto/16 :goto_1

    :cond_13
    const-string v38, "MaximumCharacterOccurences"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_14

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    goto/16 :goto_1

    :cond_14
    const-string v38, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_15

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    goto/16 :goto_1

    :cond_15
    const-string v38, "MaximumNumericSequenceLength"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_16

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    goto/16 :goto_1

    :cond_16
    const-string v38, "SimplePasswordEnabled"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_17

    if-eqz v34, :cond_17

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    goto/16 :goto_1

    :cond_17
    const-string v38, "MultifactorAuthEnabled"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_18

    if-eqz v34, :cond_18

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    goto/16 :goto_1

    :cond_18
    const-string v38, "UserManaged"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_19

    if-eqz v34, :cond_19

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    goto/16 :goto_1

    :cond_19
    const-string v38, "ForbiddenStrings"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1a

    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .restart local v13    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_1a
    const-string v38, "AppInstallList"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1b

    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_1b
    const-string v38, "ProtectedPkgList"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1c

    new-instance v31, Ljava/util/ArrayList;

    .end local v31    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .restart local v31    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_1c
    const-string v38, "GoogleAppsPkgList"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1d

    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .restart local v14    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_1d
    const-string v38, "FOTADisableAppsPkgList"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1e

    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_1e
    const-string v38, "AppInstallListForFotaClone"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1f

    const-string v38, "MumXmlDataParser"

    const-string v39, "New column while readfromxml: AppInstallListForFotaClone - initiate arraylist"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    goto/16 :goto_1

    :cond_1f
    const-string v38, "AppDisableListForFotaClone"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_20

    const-string v38, "MumXmlDataParser"

    const-string v39, "New column  while readfromxml: AppDisableListForFotaClone - initiate arraylist"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    goto/16 :goto_1

    :cond_20
    const-string v38, "PatternRestriction"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_23

    if-eqz v34, :cond_23

    if-eqz v37, :cond_21

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_22

    :cond_21
    const/16 v37, 0x0

    :cond_22
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_23
    const-string v38, "CustomBadgeIcon"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_26

    if-eqz v34, :cond_26

    if-eqz v37, :cond_24

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_25

    :cond_24
    const/16 v37, 0x0

    :cond_25
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_26
    const-string v38, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_29

    if-eqz v34, :cond_29

    if-eqz v37, :cond_27

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_28

    :cond_27
    const/16 v37, 0x0

    :cond_28
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_29
    const-string v38, "CustomLockScreenWallpaper"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2c

    if-eqz v34, :cond_2c

    if-eqz v37, :cond_2a

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_2b

    :cond_2a
    const/16 v37, 0x0

    :cond_2b
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2c
    const-string v38, "CustomStatusLabel"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2f

    if-eqz v34, :cond_2f

    if-eqz v37, :cond_2d

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_2e

    :cond_2d
    const/16 v37, 0x0

    :cond_2e
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2f
    const-string v38, "CustomStatusIcon"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_32

    if-eqz v34, :cond_32

    if-eqz v37, :cond_30

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_31

    :cond_30
    const/16 v37, 0x0

    :cond_31
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_32
    const-string v38, "FolderHeaderTitle"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_35

    if-eqz v34, :cond_35

    if-eqz v37, :cond_33

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_34

    :cond_33
    const/16 v37, 0x0

    :cond_34
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, v34

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_35
    const-string v38, "FolderHeaderIcon"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_38

    if-eqz v34, :cond_38

    if-eqz v37, :cond_36

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_37

    :cond_36
    const/16 v37, 0x0

    :cond_37
    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, v34

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_38
    const-string v38, "RCPDataSettings"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_39

    const/16 v20, 0x1

    if-nez v22, :cond_0

    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_39
    const-string v38, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3a

    const/16 v20, 0x0

    if-nez v22, :cond_0

    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_3a
    const-string v38, "RCPNotifSettings"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3b

    if-nez v22, :cond_0

    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    :cond_3b
    const-string v38, "AllowMultiwindowMode"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3c

    if-eqz v34, :cond_3c

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    goto/16 :goto_1

    :cond_3c
    const-string v38, "AllowTaskManager"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3d

    if-eqz v34, :cond_3d

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    goto/16 :goto_1

    :cond_3d
    const-string v38, "AllowSettingsChanges"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3e

    if-eqz v34, :cond_3e

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, v34

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowSettingsChanges(Z)V

    goto/16 :goto_1

    :cond_3e
    const-string v38, "AllowStatusBarExpansion"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3f

    if-eqz v34, :cond_3f

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, v34

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowStatusBarExpansion(Z)V

    goto/16 :goto_1

    :cond_3f
    const-string v38, "AllowHomeKey"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_40

    if-eqz v34, :cond_40

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, v34

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowHomeKey(Z)V

    goto/16 :goto_1

    :cond_40
    const-string v38, "AllowClearAllNotification"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_41

    if-eqz v34, :cond_41

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, v34

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowClearAllNotification(Z)V

    goto/16 :goto_1

    :cond_41
    const-string v38, "HideSystemBar"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_42

    if-eqz v34, :cond_42

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, v34

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->setHideSystemBar(Z)V

    goto/16 :goto_1

    :cond_42
    const-string v38, "WipeRecentTasks"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_43

    if-eqz v34, :cond_43

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, v34

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->setWipeRecentTasks(Z)V

    goto/16 :goto_1

    :cond_43
    const-string v38, "BiometricAuthEnabled"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "type"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-lez v18, :cond_0

    const/16 v38, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setBiometricAuthenticationEnabled(IZ)V

    goto/16 :goto_1

    :cond_44
    const-string v38, "persona"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_45

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "id"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "New attribute found : id("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_45
    const-string v38, "forbiddenString"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_46

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "value"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "New attribute found : value("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v37, :cond_0

    move-object/from16 v0, v37

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_46
    const-string v38, "cloneapplication"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v38

    if-eqz v38, :cond_47

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " FOTA CLONE - fotaCloneAppInstallList New attribute found : value("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-eqz v37, :cond_0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "remove"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .local v33, "remove":Ljava/lang/String;
    if-eqz v33, :cond_48

    const-string v38, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_48

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " FOTA CLONE Remove true = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " FOTA CLONE Remove true = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_48
    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " FOTA CLONE adding clone app install: value = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " FOTA CLONE Remove null = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v33    # "remove":Ljava/lang/String;
    :cond_49
    const-string v38, "clonedisablePkg"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " FOTA CLONE- fotaCloneAppDisableList New attribute found : value("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v37, :cond_0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "reenable"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .local v32, "re_enable_attr":Ljava/lang/String;
    if-eqz v32, :cond_4a

    const-string v38, "true"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4a

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " FOTA CLONE adding clone app re-enable: value = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4a
    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " FOTA CLONE adding clone app disable: value = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v32    # "re_enable_attr":Ljava/lang/String;
    :cond_4b
    const-string v38, "application"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_50

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "New attribute found : name("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v37, :cond_0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "remove"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "remove":Ljava/lang/String;
    if-eqz v33, :cond_4c

    const-string v38, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4c

    move-object/from16 v0, v37

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "allow"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "content":Ljava/lang/String;
    if-eqz v10, :cond_4d

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4f

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "disallow"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4e

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_0

    :cond_4e
    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4f
    const-string v38, "systemAppOnly"

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_0

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static/range {v37 .. v37}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2400(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v10    # "content":Ljava/lang/String;
    .end local v33    # "remove":Ljava/lang/String;
    :cond_50
    const-string v38, "replace"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_52

    if-eqz v6, :cond_0

    const-string v38, "MumXmlDataParser"

    const-string v39, "Replace tag found"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "value"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "value is "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v38, " "

    const-string v39, ""

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    const-string v39, ","

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .local v36, "target":[Ljava/lang/String;
    move-object/from16 v8, v36

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v24, v8, v16

    .local v24, "oper":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "name is "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v38

    move-object/from16 v1, v37

    invoke-interface {v6, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_51
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v21    # "len$":I
    .end local v24    # "oper":Ljava/lang/String;
    .end local v36    # "target":[Ljava/lang/String;
    :cond_52
    const-string v38, "groupPkg"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_54

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "value"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "GROUPPKG tag found for "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_53
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .local v17, "installPkg":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "installPkg":Ljava/lang/String;
    :cond_54
    const-string v38, "provider"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_56

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "provider: New attribute found : name("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v37, :cond_55

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_55

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    new-instance v26, Ljava/util/ArrayList;

    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .restart local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    :cond_56
    const-string v38, "package"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_5b

    if-eqz v28, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "package: New attribute found knoxCore: name("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v37, :cond_0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "allow"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "content":Ljava/lang/String;
    if-eqz v10, :cond_57

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "disallow"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_58

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_0

    :cond_58
    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v10    # "content":Ljava/lang/String;
    :cond_59
    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "package: New attribute found : name("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v37, :cond_5a

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_5a

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5a
    new-instance v26, Ljava/util/ArrayList;

    .end local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .restart local v26    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    :cond_5b
    const-string v38, "property"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_5c

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "property":Ljava/lang/String;
    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "property: New attribute found : name("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "value"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "property: New attribute found : value("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v30, :cond_0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    if-eqz v37, :cond_0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    new-instance v38, Landroid/util/Pair;

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v30    # "property":Ljava/lang/String;
    :cond_5c
    const-string v38, "protectedPkg"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_5d

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "New attribute found : name("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v37, :cond_0

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5d
    const-string v38, "disablePkg"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_62

    if-eqz v14, :cond_0

    const/16 v19, 0x1

    .local v19, "isDisabled":Z
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v38

    if-eqz v38, :cond_5e

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "disablePKG. value attr is "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "value"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_60

    const-string v38, " "

    const-string v39, ""

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    const-string v39, ","

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .restart local v36    # "target":[Ljava/lang/String;
    move-object/from16 v8, v36

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v21, v0

    .restart local v21    # "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_60

    aget-object v24, v8, v16

    .restart local v24    # "oper":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_5f

    const/16 v19, 0x0

    :cond_5f
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v21    # "len$":I
    .end local v24    # "oper":Ljava/lang/String;
    .end local v36    # "target":[Ljava/lang/String;
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "New attribute found : name("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v38, "com.android.chrome"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_61

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isTvzwProject()Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2500()Z

    move-result v38

    if-eqz v38, :cond_61

    const/16 v19, 0x1

    :cond_61
    if-eqz v37, :cond_0

    if-eqz v19, :cond_0

    move-object/from16 v0, v37

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v19    # "isDisabled":Z
    :cond_62
    const-string v38, "fotadisablePkg"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_65

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "name"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v38

    if-eqz v38, :cond_63

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "FOTA Disable:New attribute found : name("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    if-eqz v37, :cond_0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "reenable"

    invoke-interface/range {v38 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "re_enable_attr":Ljava/lang/String;
    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "FOTA Disable-Enable:New attribute found : re_enable("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ") for app:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v32, :cond_64

    const-string v38, "true"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_64

    move-object/from16 v0, v37

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_64
    move-object/from16 v0, v37

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v32    # "re_enable_attr":Ljava/lang/String;
    :cond_65
    const-string v38, "knoxCore"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .restart local v28    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .end local v35    # "tag":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "tag":Ljava/lang/String;
    const-string v38, "row"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_70

    if-eqz v34, :cond_70

    if-eqz v6, :cond_67

    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v15, v0, :cond_67

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    const-string v39, "group_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_66

    const-string v39, "MumXmlDataParser"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, "is removed"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_66
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .end local v15    # "i":I
    :cond_67
    if-eqz v27, :cond_68

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_68

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    :cond_68
    if-eqz v13, :cond_69

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_69

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    :cond_69
    if-eqz v6, :cond_6a

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_6a

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    :cond_6a
    if-eqz v7, :cond_6b

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_6b

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    :cond_6b
    if-eqz v31, :cond_6c

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_6c

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    :cond_6c
    if-eqz v14, :cond_6d

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_6d

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    :cond_6d
    if-eqz v4, :cond_6e

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_6e

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    :cond_6e
    if-eqz v5, :cond_6f

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_6f

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    const-string v38, "MumXmlDataParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "FOTA Re-enable list:size ="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    invoke-virtual/range {v34 .. v34}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    const/16 v27, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v31, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_70
    const-string v38, "provider"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_73

    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    if-eqz v26, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_72

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/Pair;

    .local v25, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v20, :cond_71

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_71
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_5

    .end local v25    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_72
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    const/16 v26, 0x0

    goto/16 :goto_1

    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_73
    const-string v38, "package"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_75

    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    if-eqz v26, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_74

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/Pair;

    .restart local v25    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .end local v25    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_74
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    const/16 v26, 0x0

    goto/16 :goto_1

    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_75
    const-string v38, "knoxCore"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    if-eqz v28, :cond_76

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_76

    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static/range {v28 .. v28}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2602(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_76
    const/16 v28, 0x0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-void
.end method

.method public writeToXml()V
    .locals 37

    .prologue
    new-instance v9, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "enterprisedata.xml"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "file":Ljava/io/File;
    const/16 v30, 0x0

    .local v30, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v31, Ljava/io/FileOutputStream;

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-direct {v0, v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v30    # "stream":Ljava/io/FileOutputStream;
    .local v31, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v19, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v19, "out":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v14, 0x0

    .local v14, "intVal":I
    const/16 v29, 0x0

    .local v29, "strVal":Ljava/lang/String;
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .local v5, "booleanVal":Ljava/lang/Boolean;
    const-string v34, "utf-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v34, 0x0

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v34, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "table"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "MUMContainerType"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_3f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v33, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const-string v34, "\n\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "row"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v34, v0

    if-eqz v34, :cond_4

    const/16 v34, 0x0

    const-string v35, "type"

    sget-object v36, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v36 .. v36}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    :goto_1
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v14

    if-ltz v14, :cond_1

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "UID"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v14

    const/16 v34, -0x1

    move/from16 v0, v34

    if-lt v14, v0, :cond_2

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "UserID"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v23

    .local v23, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v23, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_6

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "PersonaIDs"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .local v22, "personaId":Ljava/lang/Integer;
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "persona"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "id"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "persona"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v5    # "booleanVal":Ljava/lang/Boolean;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "intVal":I
    .end local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v22    # "personaId":Ljava/lang/Integer;
    .end local v23    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v29    # "strVal":Ljava/lang/String;
    .end local v33    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_0
    move-exception v8

    move-object/from16 v30, v31

    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/io/IOException;
    .restart local v30    # "stream":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v30, :cond_3

    :try_start_2
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v8    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    return-void

    .end local v30    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "booleanVal":Ljava/lang/Boolean;
    .restart local v14    # "intVal":I
    .restart local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v29    # "strVal":Ljava/lang/String;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v33    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_4
    :try_start_3
    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v34, v0

    if-eqz v34, :cond_0

    const/16 v34, 0x0

    const-string v35, "type"

    sget-object v36, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v36 .. v36}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v23    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_7

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "Name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_8

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "Version"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v14

    if-eqz v14, :cond_9

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "MaximumTimeToLock"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v14

    if-eqz v14, :cond_a

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "PasswordMinimumLength"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v14

    if-eqz v14, :cond_b

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "PasswordMinimumNonLetters"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v14

    if-eqz v14, :cond_c

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "PasswordMinimumLetters"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v14

    if-eqz v14, :cond_d

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "PasswordMinimumNumeric"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v14

    if-eqz v14, :cond_e

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "PasswordMinimumUpperCase"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v14

    if-eqz v14, :cond_f

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "PasswordMinimumLowerCase"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v14

    if-eqz v14, :cond_10

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "PasswordMinimumSymbols"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v14

    if-eqz v14, :cond_11

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "PasswordQuality"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v14

    if-eqz v14, :cond_12

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v14

    if-eqz v14, :cond_13

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "MaximumCharacterOccurences"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v14

    if-eqz v14, :cond_14

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_14
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v14

    if-eqz v14, :cond_15

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "MaximumNumericSequenceLength"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_15
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-nez v34, :cond_16

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "SimplePasswordEnabled"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_17

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "MultifactorAuthEnabled"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_17
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_18

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "UserManaged"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_18
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledValue()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledType()I

    move-result v14

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_19

    if-lez v14, :cond_19

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "BiometricAuthEnabled"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "type"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_19
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v10

    .local v10, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_1b

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_1b

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "ForbiddenStrings"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .local v32, "string":Ljava/lang/String;
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "forbiddenString"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "forbiddenString"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .end local v32    # "string":Ljava/lang/String;
    :cond_1a
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_1c

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "PatternRestriction"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1c
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_1d

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "CustomBadgeIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1d
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_1e

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1e
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_1f

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "CustomLockScreenWallpaper"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1f
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_20

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "CustomStatusLabel"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_20
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_21

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "CustomStatusIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_21
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_22

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "AllowMultiwindowMode"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_22
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_23

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "AllowTaskManager"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_23
    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v34, v0

    if-eqz v34, :cond_29

    move-object/from16 v0, v33

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v16, v0

    .local v16, "kiosktype":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_24

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "AllowSettingsChanges"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_24
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_25

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "AllowStatusBarExpansion"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_25
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_26

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "AllowHomeKey"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_26
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_27

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "AllowClearAllNotification"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_27
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_28

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "HideSystemBar"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_28
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_29

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "WipeRecentTasks"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v16    # "kiosktype":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    :cond_29
    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v34, v0

    if-eqz v34, :cond_2b

    move-object/from16 v0, v33

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v18, v0

    .local v18, "lwctype":Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderTitle()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_2a

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "FolderHeaderTitle"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2a
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_2b

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "FolderHeaderIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v18    # "lwctype":Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    :cond_2b
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v17

    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_2e

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_2e

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "AppInstallList"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_2c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "application":Ljava/lang/String;
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "application"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "application"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .end local v4    # "application":Ljava/lang/String;
    :cond_2c
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v27

    .local v27, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v27, :cond_2d

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_2d

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_2d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "application":Ljava/lang/String;
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "application"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "remove"

    const-string v36, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "application"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .end local v4    # "application":Ljava/lang/String;
    :cond_2d
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v27    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_30

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_30

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "ProtectedPkgList"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_2f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .local v24, "protectedPkg":Ljava/lang/String;
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "protectedPkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "protectedPkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .end local v24    # "protectedPkg":Ljava/lang/String;
    :cond_2f
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_30
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_32

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_32

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "GoogleAppsPkgList"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_31

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "disablePkg":Ljava/lang/String;
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "disablePkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "disablePkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    .end local v7    # "disablePkg":Ljava/lang/String;
    :cond_31
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_32
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_35

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_35

    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "FOTADisableAppsPkgList"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_33

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "disablePkg":Ljava/lang/String;
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "fotadisablePkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "fotadisablePkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .end local v7    # "disablePkg":Ljava/lang/String;
    :cond_33
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v25

    .local v25, "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v25, :cond_34

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_34

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_34

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .local v26, "reenablePkg":Ljava/lang/String;
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "fotadisablePkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "reenable"

    const-string v36, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "fotadisablePkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    .end local v26    # "reenablePkg":Ljava/lang/String;
    :cond_34
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v25    # "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_35
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v28

    .local v28, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v28, :cond_38

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_38

    const/16 v21, 0x0

    .local v21, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "RCPDataSettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_37

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v21, Ljava/util/List;

    .restart local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "provider"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_36

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .local v20, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v34, "\n\t\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v35, 0x0

    const-string v36, "name"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v35, 0x0

    const-string v36, "value"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d

    .end local v20    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_36
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "provider"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_c

    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    :cond_37
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_38
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v28

    if-eqz v28, :cond_3b

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_3b

    const/16 v21, 0x0

    .restart local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_3a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .restart local v15    # "key":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v21, Ljava/util/List;

    .restart local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "provider"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_39

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .restart local v20    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v34, "\n\t\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v35, 0x0

    const-string v36, "name"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v35, 0x0

    const-string v36, "value"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .end local v20    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_39
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "provider"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_e

    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    :cond_3a
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3b
    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v28

    if-eqz v28, :cond_3e

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_3e

    const/16 v21, 0x0

    .restart local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    const-string v36, "RCPNotifSettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_3d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .restart local v15    # "key":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v21, Ljava/util/List;

    .restart local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_3c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .restart local v20    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v34, "\n\t\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v35, 0x0

    const-string v36, "name"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v35, 0x0

    const-string v36, "value"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_11

    .end local v20    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3c
    const-string v34, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_10

    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    :cond_3d
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3e
    const-string v34, "\n\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "row"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .end local v10    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v28    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v33    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3f
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2600()Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_41

    const-string v34, "\n\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "knoxCore"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2600()Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_40

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "corePkg":Ljava/lang/String;
    const-string v34, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    .end local v6    # "corePkg":Ljava/lang/String;
    :cond_40
    const-string v34, "\n\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "knoxCore"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_41
    const-string v34, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v34, 0x0

    const-string v35, "table"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_13
    :try_start_5
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v30, v31

    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v30    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v30    # "stream":Ljava/io/FileOutputStream;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    const-string v34, "MumXmlDataParser"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Error in Write to XML sync FD "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_13

    .end local v5    # "booleanVal":Ljava/lang/Boolean;
    .end local v14    # "intVal":I
    .end local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v29    # "strVal":Ljava/lang/String;
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v30    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v34

    goto/16 :goto_4

    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto/16 :goto_3
.end method
