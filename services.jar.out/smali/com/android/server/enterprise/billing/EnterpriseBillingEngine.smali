.class public Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
.super Ljava/lang/Object;
.source "EnterpriseBillingEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$EnterpriseBillingEngineConstants;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnterpriseBillingEngine"

.field private static engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;


# instance fields
.field private ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

.field private mContext:Landroid/content/Context;

.field public receiver:Landroid/content/BroadcastReceiver;

.field public telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    new-instance v2, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$1;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;)V

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$2;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;)V

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->receiver:Landroid/content/BroadcastReceiver;

    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " EnterpriseBillingEngine() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-direct {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "IF":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v2, "EnterpriseBillingEngine"

    const-string v3, "EnterpriseBillingEngine() - created"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleAllprofiles()V

    return-void
.end method

.method private getApplicationsInfoOfContainer(I)Ljava/util/Map;
    .locals 6
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v3

    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .restart local v2    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "EnterpriseBillingEngine"

    const-string v2, "Feature not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    :cond_0
    :goto_0
    const-string v0, "EnterpriseBillingEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " engine - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    return-object v0

    :cond_1
    if-nez p0, :cond_2

    :try_start_1
    const-string v2, "EnterpriseBillingEngine"

    const-string v3, "Feature enabled, but context passed is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private handleAllprofiles()V
    .locals 8

    .prologue
    const-string v5, "EnterpriseBillingEngine"

    const-string v6, "handleAllprofiles - start"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfiles()[Ljava/lang/String;

    move-result-object v4

    .local v4, "profiles":[Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "EnterpriseBillingEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle - profile not null - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "profileName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleProfile(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "profileName":Ljava/lang/String;
    :cond_0
    const-string v5, "EnterpriseBillingEngine"

    const-string v6, "handleAllprofiles - end"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;

    .prologue
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendEventToRIL - start - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "eapnType":Ljava/lang/String;
    const-string v6, "com.android.server.enterprise.billing.mapping_modified"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.server.enterprise.billing.action_enable_status_modified"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "extraIntent":Landroid/content/Intent;
    const-string v6, "ent_type"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v2    # "extraIntent":Landroid/content/Intent;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "ent_type"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendEventToRIL - end - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "eapnType":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendEventToRIL - failed -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method


# virtual methods
.method public addContainerToExceptionList(Ljava/lang/String;I)I
    .locals 13
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addContainerToExceptionList called by VPN inside EnterpriseBillingEngine for container- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "returnVal":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getApplicationsInfoOfContainer(I)Ljava/util/Map;

    move-result-object v5

    .local v5, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, "uid":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, p1, v11, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addToUIDExceptionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v10, -0x1

    if-ne v6, v10, :cond_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfileFromActiveProfileList()Ljava/lang/String;

    move-result-object v0

    .local v0, "activeProfileName":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v10, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v10, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "activeProfileName":Ljava/lang/String;
    .end local v5    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addContainerToExceptionList inside EnterpriseBillingEngine exits with returnVal = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendEventToRIL - failed -"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_3
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addContainerToExceptionList Error Invalid input parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addUIDListToExceptionList(Ljava/lang/String;Ljava/util/Map;)I
    .locals 12
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v9, "EnterpriseBillingEngine"

    const-string v10, "addUIDListToExceptionList called by VPN inside EnterpriseBillingEngine for packages"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .local v5, "returnVal":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "uid":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p1, v10, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addToUIDExceptionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v8    # "uid":I
    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfileFromActiveProfileList()Ljava/lang/String;

    move-result-object v0

    .local v0, "activeProfileName":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v9, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v9, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "activeProfileName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_0
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addUIDListToExceptionList inside EnterpriseBillingEngine exits with returnVal = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendEventToRIL - failed -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_3
    const-string v9, "EnterpriseBillingEngine"

    const-string v10, "addUIDListToExceptionList Error Invalid input parameter"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected allowOnWifi(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "allowOnWifi - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "com.android.server.enterprise.billing.wifi_fallback_modified"

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "allowOnWifi - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowOnWifi - Invalid Profile Name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected allowRoaming(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "allowOnRoaming - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "com.android.server.enterprise.billing.roaming_modified"

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "allowOnRoaming - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowRoaming - Invalid Profile Name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected disableApplicationOrContainer(Ljava/lang/String;)Z
    .locals 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "returnValue":I
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableForContainerOrApplication() - start - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getApplicationsUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .local v2, "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getActiveApnForProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    move-result-object v0

    .local v0, "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableForContainerOrApplication() - active apn - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getDefaultApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "defaultType":Ljava/lang/String;
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableForContainerOrApplication() - active apn defaultType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;Ljava/lang/String;)I

    move-result v5

    .local v5, "value":I
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableForContainerOrApplication() - update active apn defualtType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "value":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->clearActiveApnProfile(Ljava/lang/String;)I

    move-result v4

    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableForContainerOrApplication() - clearActiveApnProfile- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->clearEapnProfile(Ljava/lang/String;)I

    move-result v4

    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableForContainerOrApplication() - clear eapn profile - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v3    # "defaultType":Ljava/lang/String;
    :goto_0
    const-string v6, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableForContainerOrApplication() - end - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v4, :cond_5

    const/4 v6, 0x1

    :goto_2
    return v6

    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableApplicationOrContainer() - ERROR - Invalid profileName - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected enableApplicationOrContainer(Ljava/lang/String;)Z
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const-string v4, "EnterpriseBillingEngine"

    const-string v5, "enableForContainer() - start"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, "returnValue":Z
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v1

    .local v1, "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "eapnType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleProfile(Ljava/lang/String;)V

    const/4 v2, 0x1

    .end local v0    # "eapnType":Ljava/lang/String;
    .end local v1    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    :goto_0
    const-string v4, "EnterpriseBillingEngine"

    const-string v5, "enableForContainer() - end - "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .restart local v0    # "eapnType":Ljava/lang/String;
    .restart local v1    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAvailableEapn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addEapnProfileMapping(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .local v3, "rows":I
    if-lez v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleProfile(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .end local v3    # "rows":I
    :cond_2
    const-string v4, "EnterpriseBillingEngine"

    const-string v5, "enableForContainer() - ERROR - no eapn type available - "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "eapnType":Ljava/lang/String;
    :cond_3
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableForContainer() - ERROR - No such profile - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    .end local v1    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    :cond_4
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableForContainer() - ERROR - Invalid profileName - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getApnTypeForVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "eapnType":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "billingProfileName":Ljava/lang/String;
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApnTypeForVpnProfile - start - vpnProfileName - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getBillingProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApnTypeForVpnProfile - BillingProfile not null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApnTypeForVpnProfile - eapnType is  - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApnTypeForVpnProfile - end - eapnType: - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApnTypeForVpnProfile - Error Invalid parameter- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContainersForConnection(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "eapnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "profileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .end local v1    # "profileName":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainersUsingProfile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainersUsingProfile Invalid parameter- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized getUidApnTypeMapping()Ljava/util/Map;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/16 v19, 0x0

    .local v19, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :try_start_0
    const-string v32, "EnterpriseBillingEngine"

    const-string v33, " - getUidApnTypeMapping - start - "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getExceptionUIDList()Ljava/util/List;

    move-result-object v11

    .local v11, "exceptionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfiles()[Ljava/lang/String;

    move-result-object v26

    .local v26, "profiles":[Ljava/lang/String;
    if-eqz v26, :cond_f

    const-string v32, "EnterpriseBillingEngine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " - getUidApnTypeMapping - profiles - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .local v22, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    .local v16, "isContains":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getCurrentActiveApns(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .local v3, "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    move-object/from16 v5, v26

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v18, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move v14, v12

    .end local v12    # "i$":I
    .local v14, "i$":I
    move-object/from16 v20, v19

    .end local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v20, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :goto_0
    move/from16 v0, v18

    if-ge v14, v0, :cond_e

    :try_start_1
    aget-object v25, v5, v14

    .local v25, "profileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v17

    .local v17, "isProfileActive":Z
    const-string v32, "EnterpriseBillingEngine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " - getUidApnTypeMapping - profile - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " : isActive - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_12

    const/4 v8, 0x0

    .local v8, "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getMatchingApn(Ljava/lang/String;Ljava/util/List;)Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    move-result-object v8

    :cond_0
    if-nez v8, :cond_1

    move-object/from16 v19, v20

    .end local v8    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v14    # "i$":I
    .end local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :goto_1
    add-int/lit8 v12, v14, 0x1

    .restart local v12    # "i$":I
    move v14, v12

    .end local v12    # "i$":I
    .restart local v14    # "i$":I
    move-object/from16 v20, v19

    .end local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    goto :goto_0

    .restart local v8    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "eapnType":Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getApplicationsUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .local v4, "applications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v32, "EnterpriseBillingEngine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " - getUidApnTypeMapping - apps - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v14    # "i$":I
    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .local v23, "packageName":Ljava/lang/String;
    if-nez v28, :cond_3

    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    const/16 v32, 0x0

    :try_start_2
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v27

    .local v27, "uid":I
    if-eqz v11, :cond_4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    const/16 v16, 0x1

    :goto_3
    if-nez v16, :cond_2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .end local v27    # "uid":I
    :catch_0
    move-exception v32

    goto :goto_2

    .restart local v27    # "uid":I
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v27    # "uid":I
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .local v6, "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v32, "EnterpriseBillingEngine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " - getUidApnTypeMapping - containers - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .local v15, "id":I
    const/16 v32, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1, v15}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v24

    .local v24, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v24, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    .local v21, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v28, :cond_8

    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .restart local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_7

    if-eqz v11, :cond_9

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_9

    const/16 v16, 0x1

    :goto_5
    if-nez v16, :cond_7

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_7

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .end local v4    # "applications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v9    # "eapnType":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "id":I
    .end local v17    # "isProfileActive":Z
    .end local v21    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v24    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v25    # "profileName":Ljava/lang/String;
    .end local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v32

    move-object/from16 v19, v20

    .end local v3    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "exceptionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "isContains":Z
    .end local v18    # "len$":I
    .end local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v22    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v26    # "profiles":[Ljava/lang/String;
    .restart local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :goto_6
    monitor-exit p0

    throw v32

    .end local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v3    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v4    # "applications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v6    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .restart local v9    # "eapnType":Ljava/lang/String;
    .restart local v11    # "exceptionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v15    # "id":I
    .restart local v16    # "isContains":Z
    .restart local v17    # "isProfileActive":Z
    .restart local v18    # "len$":I
    .restart local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v21    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v22    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v24    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v25    # "profileName":Ljava/lang/String;
    .restart local v26    # "profiles":[Ljava/lang/String;
    .restart local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9
    const/16 v16, 0x0

    goto :goto_5

    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "id":I
    .end local v21    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v24    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getVpnEngineDetailsForBillingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v30

    .local v30, "vpnEngines":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    if-eqz v30, :cond_d

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    move-object/from16 v29, v28

    .end local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v29, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .local v10, "engine":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    :try_start_5
    iget-object v0, v10, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->enginePackageName:Ljava/lang/String;

    move-object/from16 v32, v0

    iget v0, v10, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->containerId:I

    move/from16 v33, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v31

    .local v31, "vpnUid":I
    if-nez v29, :cond_11

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v29    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_8
    :try_start_6
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_b

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v31    # "vpnUid":I
    :cond_b
    :goto_9
    move-object/from16 v29, v28

    .end local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_7

    :catch_1
    move-exception v7

    move-object/from16 v28, v29

    .end local v29    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_a
    :try_start_7
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_9

    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "engine":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    .end local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c
    move-object/from16 v28, v29

    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v29    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    if-nez v20, :cond_10

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :goto_b
    :try_start_8
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .end local v3    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .end local v4    # "applications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v9    # "eapnType":Ljava/lang/String;
    .end local v11    # "exceptionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "isContains":Z
    .end local v17    # "isProfileActive":Z
    .end local v18    # "len$":I
    .end local v22    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v25    # "profileName":Ljava/lang/String;
    .end local v26    # "profiles":[Ljava/lang/String;
    .end local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "vpnEngines":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    :catchall_1
    move-exception v32

    goto :goto_6

    .end local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v3    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v11    # "exceptionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "i$":I
    .restart local v16    # "isContains":Z
    .restart local v18    # "len$":I
    .restart local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v22    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v26    # "profiles":[Ljava/lang/String;
    :cond_e
    move-object/from16 v19, v20

    .end local v3    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v16    # "isContains":Z
    .end local v18    # "len$":I
    .end local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v22    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_f
    const-string v32, "EnterpriseBillingEngine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " - getUidApnTypeMapping - end - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-object v19

    .end local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v3    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v4    # "applications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v6    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .restart local v9    # "eapnType":Ljava/lang/String;
    .restart local v10    # "engine":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "isContains":Z
    .restart local v17    # "isProfileActive":Z
    .restart local v18    # "len$":I
    .restart local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v22    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v25    # "profileName":Ljava/lang/String;
    .restart local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v30    # "vpnEngines":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    .restart local v31    # "vpnUid":I
    :catch_2
    move-exception v7

    goto :goto_a

    .end local v10    # "engine":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v31    # "vpnUid":I
    :cond_10
    move-object/from16 v19, v20

    .end local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    goto :goto_b

    .end local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "engine":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v29    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v31    # "vpnUid":I
    :cond_11
    move-object/from16 v28, v29

    .end local v29    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_8

    .end local v4    # "applications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v9    # "eapnType":Ljava/lang/String;
    .end local v10    # "engine":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v28    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "vpnEngines":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    .end local v31    # "vpnUid":I
    .restart local v14    # "i$":I
    :cond_12
    move-object/from16 v19, v20

    .end local v20    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    goto/16 :goto_1
.end method

.method public getVpnProfilesForEnterpriseApn(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "eapnTye"    # Ljava/lang/String;
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
    const/4 v1, 0x0

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVpnProfilesForEnterpriseApn - start - eapntype - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "billingProfileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVpnProfilesForEnterpriseApn - billingProfileName - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getVpnProfilesforBillingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .end local v0    # "billingProfileName":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVpnProfilesForEnterpriseApn - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVpnProfilesForEnterpriseApn Error invalid parameter- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleProfile(Ljava/lang/String;)V
    .locals 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - start - individual profile - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAvailable(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - start - for profile - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getActiveApnForProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    move-result-object v0

    .local v0, "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getDefaultApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "oldDefaultApnType":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v7, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getDefaultType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p1, v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->setDefaultApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .local v5, "isSetDefaulType":Z
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - default apn type set for profile - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "isSetDefaulType":Z
    :cond_0
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - current active apn for profile - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", and current default type - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getCurrentActiveApns(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .local v1, "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - current telephony active apns - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_1
    const-string v9, "EnterpriseBillingEngine"

    const-string v10, "handle - apn should be changed"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "eapnType":Ljava/lang/String;
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - Eapntype of current profile from service storage - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p1, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getMatchingApn(Ljava/lang/String;Ljava/util/List;)Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    move-result-object v2

    .local v2, "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - matching apn from policy storage for active telephony apns - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    if-eqz v7, :cond_2

    const-string v9, "EnterpriseBillingEngine"

    const-string v10, "handle - changed current apn to its defaulttype in telephony db"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v9, v0, v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->deleteActiveProfileApn(Ljava/lang/String;)Z

    :cond_2
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getDefaultType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;)Ljava/lang/String;

    move-result-object v6

    .local v6, "newDefaultApnType":Ljava/lang/String;
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - default apn type of new eapn - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addActiveApnToProfile(Ljava/lang/String;Lcom/sec/enterprise/knox/billing/EnterpriseApn;)Z

    move-result v4

    .local v4, "isAddedActiveApn":Z
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - added active apn for profile - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p1, v6}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->setDefaultApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .restart local v5    # "isSetDefaulType":Z
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - default apn type set for profile - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v9, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;Ljava/lang/String;)I

    move-result v8

    .local v8, "update":I
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - update eapn type of new eapn in telephony db - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v9, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v3    # "eapnType":Ljava/lang/String;
    .end local v4    # "isAddedActiveApn":Z
    .end local v5    # "isSetDefaulType":Z
    .end local v6    # "newDefaultApnType":Ljava/lang/String;
    .end local v8    # "update":I
    :cond_3
    :goto_0
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle - end - for profile - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v1    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .end local v7    # "oldDefaultApnType":Ljava/lang/String;
    :goto_1
    const-string v9, "EnterpriseBillingEngine"

    const-string v10, "handle - end - "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .restart local v0    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .restart local v1    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v2    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .restart local v3    # "eapnType":Ljava/lang/String;
    .restart local v7    # "oldDefaultApnType":Ljava/lang/String;
    :cond_4
    const-string v9, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v9, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v3    # "eapnType":Ljava/lang/String;
    :cond_5
    const-string v9, "EnterpriseBillingEngine"

    const-string v10, "handle - current apn is sufficient"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v9, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v1    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .end local v7    # "oldDefaultApnType":Ljava/lang/String;
    :cond_6
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Either profile name is invalid or This profile no longer exists in the entries, but still mapping is kept - error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected informMappingChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "informMappingChanged - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "informMappingChanged - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "informMappingChanged - Invalid parameter - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEnterpriseAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .prologue
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnterpriseAPN - Start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "returnValue":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isEnterpriseAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnterpriseAPN - End: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnterpriseAPN - failed -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isRoamingAllowed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "eapnType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "returnValue":Z
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRoamingAllowed - start - eapn - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRoamingAllowed - profile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isRoamingAllowed(Ljava/lang/String;)Z

    move-result v1

    .end local v0    # "profileName":Ljava/lang/String;
    :goto_0
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isRoamingAllowed - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .restart local v0    # "profileName":Ljava/lang/String;
    :cond_0
    const-string v2, "EnterpriseBillingEngine"

    const-string v3, "isRoamingAllowed - Error no profile matching eapnType"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "profileName":Ljava/lang/String;
    :cond_1
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isRoamingAllowed - Invalid eapnType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSplitBillingEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "eapnType"    # Ljava/lang/String;

    .prologue
    const-string v2, "EnterpriseBillingEngine"

    const-string v3, " - isSplitBillingEnabled - start - "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "returnValue":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "profileName":Ljava/lang/String;
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - profileName - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v1

    .end local v0    # "profileName":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isSplitBillingEnabled - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isSplitBillingEnabled - Invalid eapnType - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isTurnedOn(Ljava/lang/String;)Z
    .locals 5
    .param p1, "eapnType"    # Ljava/lang/String;

    .prologue
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isTurnedOn - start - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "returnValue":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isTurnedOn - profile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileTurnedOn(Ljava/lang/String;)Z

    move-result v1

    .end local v0    # "profileName":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isTurnedOn - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isTurnedOn - Error Invalid eapnType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isWifiFallbackAllowed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "eapnType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "returnValue":Z
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiFallbackAllowed - start - eapn - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiFallbackAllowed - profile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isWifiFallbackAllowed(Ljava/lang/String;)Z

    move-result v1

    .end local v0    # "profileName":Ljava/lang/String;
    :goto_0
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isWifiFallbackAllowed - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .restart local v0    # "profileName":Ljava/lang/String;
    :cond_0
    const-string v2, "EnterpriseBillingEngine"

    const-string v3, "isWifiFallbackAllowed - Error no profile matching eapnType"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "profileName":Ljava/lang/String;
    :cond_1
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiFallbackAllowed - Error Invalid eapnType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected profileActivationStatusChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const-string v0, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeAllUidByTAG(Ljava/lang/String;)Z
    .locals 8
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const-string v3, "EnterpriseBillingEngine"

    const-string v6, "removeAllUidByTAG - Start"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "EnterpriseBillingEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAllUidByTAG - TAG Name - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "returnValue":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    if-nez p1, :cond_0

    :try_start_0
    const-string v3, "EnterpriseBillingEngine"

    const-string v6, "removeAllUidByTAG - TAG Name is NULL"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .end local v1    # "returnValue":Z
    .local v2, "returnValue":I
    :goto_0
    return v2

    .end local v2    # "returnValue":I
    .restart local v1    # "returnValue":Z
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeUidByTAG(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    const-string v3, "EnterpriseBillingEngine"

    const-string v6, "removeAllUidByTAG - End"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .restart local v2    # "returnValue":I
    goto :goto_0

    .end local v2    # "returnValue":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "EnterpriseBillingEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAllUidByTAG - failed -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeContainerFromExceptionList(Ljava/lang/String;I)I
    .locals 13
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    const/4 v6, 0x0

    .local v6, "returnVal":I
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeContainerFromExceptionList called by VPN inside enterpriseBillingService for container- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getApplicationsInfoOfContainer(I)Ljava/util/Map;

    move-result-object v5

    .local v5, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, "uid":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, p1, v11, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeFromUIDExceptionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v10, -0x1

    if-ne v6, v10, :cond_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfileFromActiveProfileList()Ljava/lang/String;

    move-result-object v0

    .local v0, "activeProfileName":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v10, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v10, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "activeProfileName":Ljava/lang/String;
    .end local v5    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeContainerFromExceptionList inside EnterpriseBillingService exits with returnVal = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendEventToRIL - failed -"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_3
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeContainerFromExceptionList Error invalid parameter callerId"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeUIDListFromExceptionList(Ljava/lang/String;Ljava/util/Map;)I
    .locals 12
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v9, "EnterpriseBillingEngine"

    const-string v10, "removeUIDListFromExceptionList called by VPN inside enterpriseBillingService for packages"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .local v5, "returnVal":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "uid":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p1, v10, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeFromUIDExceptionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v8    # "uid":I
    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfileFromActiveProfileList()Ljava/lang/String;

    move-result-object v0

    .local v0, "activeProfileName":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v9, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v9, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "activeProfileName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_0
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeUIDListFromExceptionList inside EnterpriseBillingService exits with returnVal = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v9, "EnterpriseBillingEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendEventToRIL - failed -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_3
    const-string v9, "EnterpriseBillingEngine"

    const-string v10, "removeUIDListFromExceptionList Error Invalid input parameter"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendNotification(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mobileNetworkType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendNotification - start - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "ent1"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ent2"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "profileName":Ljava/lang/String;
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendNotification - profileName - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .local v1, "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendNotification - containers - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "containerId":I
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendNotification - Broadcast sent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "containerId":I
    .end local v1    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileName":Ljava/lang/String;
    :cond_3
    const-string v4, "EnterpriseBillingEngine"

    const-string v5, "sendNotification - personal user"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4
    const-string v4, "EnterpriseBillingEngine"

    const-string v5, "sendNotification - end"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected turnOn(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOn - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "com.android.server.enterprise.billing.profile_turn_on_status_modified"

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "turnOn - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOn - Invalid Profile Name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
