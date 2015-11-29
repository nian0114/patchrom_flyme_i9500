.class public Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.super Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy$Stub;
.source "EnterpriseCertEnrollPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$1;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KNOX_CERTENROL_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

.field private static final PACKAGENAME:Ljava/lang/String; = "com.samsung.android.certenrolservice"

.field private static TAG:Ljava/lang/String;

.field private static mScepServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private CEP_BIND_ACTION:Ljava/lang/String;

.field final interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;",
            ">;"
        }
    .end annotation
.end field

.field final interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    const-string v0, "EnterpriseSCEPPolicy"

    sput-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "com.samsung.android.CEP_BIND"

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->CEP_BIND_ACTION:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    sget-boolean v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseSCEPPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->registerEnterpriseSCEPpolicyReciever()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToCEPAgent(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/util/HashMap;ILjava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->bindServiceAndCallPending(Ljava/util/HashMap;ILjava/lang/String;IZ)V

    return-void
.end method

.method private bindSCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    const/16 v17, -0x259

    .local v17, "ret":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->CEP_BIND_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, "bindInent":Landroid/content/Intent;
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindSCEPService - CEPBINDAction -- "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->CEP_BIND_ACTION:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v8, "adminId":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v9, "containerId":I
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caller AdminUid is : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caller mContainerId is : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caller mContainerId after correction: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "callID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .local v20, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v21

    .local v21, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    .local v22, "userlistSize":I
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device Userlist size : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v15, v11, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v19

    .local v19, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v13, 0x0

    .local v13, "flag":Z
    const/4 v12, 0x0

    .local v12, "compName":Landroid/content/ComponentName;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .local v16, "resInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .local v18, "servcInfo":Landroid/content/pm/ServiceInfo;
    new-instance v12, Landroid/content/ComponentName;

    .end local v12    # "compName":Landroid/content/ComponentName;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v12    # "compName":Landroid/content/ComponentName;
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindSCEPService - Package  Name -- "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindSCEPService - Service  Name -- "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v12, :cond_3

    const/4 v13, 0x1

    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_5
    if-nez v13, :cond_6

    const/16 v2, -0x259

    :goto_0
    return v2

    :cond_6
    new-instance v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v9, v1, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILjava/lang/String;Z)V

    .local v4, "cSCEPConnect":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "action":Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->bindToService(Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;JIIZ)I

    move-result v2

    goto :goto_0
.end method

.method private bindServiceAndCallPending(Ljava/util/HashMap;ILjava/lang/String;IZ)V
    .locals 14
    .param p2, "userId"    # I
    .param p3, "certProfileType"    # Ljava/lang/String;
    .param p4, "adminUid"    # I
    .param p5, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;",
            ">;I",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    if-eqz p1, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding for performKeyStoreUnlockedOperations/performPreAdminRemovalOperations for userId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] and protocol["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    .local v13, "service":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    if-nez p5, :cond_3

    invoke-interface {v13}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->performKeyStoreUnlockedOperations()V

    .end local v13    # "service":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End of performKeyStoreUnlockedOperations/performPreAdminRemovalOperations for userId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] and protocol["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    .restart local v13    # "service":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    :cond_3
    move/from16 v0, p4

    invoke-interface {v13, v0}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->performPreAdminRemovalOperations(I)V

    goto :goto_0

    .end local v13    # "service":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getServiceComponent(ILjava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .local v11, "compName":Landroid/content/ComponentName;
    if-eqz v11, :cond_1

    new-instance v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;

    const/4 v2, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILjava/lang/String;Z)V

    .local v4, "cSCEPConnect":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "action":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "callID":J
    const/4 v10, 0x1

    move-object v2, p0

    move-object/from16 v5, p3

    move/from16 v8, p4

    move/from16 v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->bindToService(Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;JIIZ)I

    move-result v12

    .local v12, "res":I
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding status for performKeyStoreUnlockedOperations/performPreAdminRemovalOperations for userId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] and protocol["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] status["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v2, -0x258

    if-ne v12, v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find the service for userId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    .restart local v13    # "service":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    if-nez p5, :cond_8

    invoke-interface {v13}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->performKeyStoreUnlockedOperations()V

    goto/16 :goto_0

    :cond_8
    move/from16 v0, p4

    invoke-interface {v13, v0}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->performPreAdminRemovalOperations(I)V

    goto/16 :goto_0
.end method

.method private bindToService(Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;JIIZ)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "cSCEPConnect"    # Landroid/content/ServiceConnection;
    .param p3, "mCepProtocol"    # Ljava/lang/String;
    .param p4, "callID"    # J
    .param p6, "adminId"    # I
    .param p7, "containerId"    # I
    .param p8, "withThread"    # Z

    .prologue
    const/4 v3, 0x1

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p7}, Landroid/os/UserHandle;-><init>(I)V

    .local v1, "uHandle":Landroid/os/UserHandle;
    if-eqz p8, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :goto_0
    if-eqz p8, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->ensureNotOnMainThread(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, v3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .local v0, "status":Z
    if-eqz v0, :cond_3

    if-eqz p8, :cond_2

    invoke-direct {p0, p7, p3, v3}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->takeInterfaceOnBlockingQueue(ILjava/lang/String;Z)V

    :goto_1
    invoke-direct {p0, p6, p7, p3}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->insertOrUpdateDB(IILjava/lang/String;)V

    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v2, -0x258

    :goto_2
    return v2

    .end local v0    # "status":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    goto :goto_0

    .restart local v0    # "status":Z
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p7, p3, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->takeInterfaceOnBlockingQueue(ILjava/lang/String;Z)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BindToServiceFailed AppId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | Container= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | protocol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v2, -0x259

    goto :goto_2
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)V
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .local v0, "containerId":I
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    :goto_0
    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCEPService null mAdminUid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mContainerUid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and packageName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageInfoOfAdmin(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, "callerPkgName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    :cond_0
    return-object v0
.end method

.method private getServiceComponent(ILjava/lang/String;)Landroid/content/ComponentName;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "certProfileType"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/Intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->CEP_BIND_ACTION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "bindInent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .local v6, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "compName":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .local v4, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .local v5, "servcInfo":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "compName":Landroid/content/ComponentName;
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "compName":Landroid/content/ComponentName;
    sget-boolean v7, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getServiceComponent - Package  Name -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getServiceComponent - Service  Name -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_0

    move-object v7, v1

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :goto_0
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private insertOrUpdateDB(IILjava/lang/String;)V
    .locals 7
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "cepProtocol"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .local v3, "ret":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    if-eq p1, v6, :cond_0

    :try_start_0
    const-string v4, "cepAgentUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-eq p2, v6, :cond_1

    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string v4, "protocol"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    if-eq p1, v6, :cond_3

    const-string v4, "cepAgentUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    if-eq p2, v6, :cond_4

    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    if-eqz p3, :cond_5

    const-string v4, "protocol"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EnterpriseCertEnrollPolicy"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_6

    sget-boolean v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v5, "insertOrUpdateDB - DB operation failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerEnterpriseSCEPpolicyReciever()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v1, "registerEnterpriseSCEPpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.action.CEP_CERT_ENROLL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL_INTERNAL"

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "certHash"    # Ljava/lang/String;
    .param p2, "txId"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "refNumber"    # Ljava/lang/String;
    .param p6, "callerid"    # I

    .prologue
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.action.knox.certenroll.CEP_CERT_ENROLL_STATUS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intentCaller":Landroid/content/Intent;
    invoke-direct {p0, p6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getPackageInfoOfAdmin(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.samsung.extra.knox.certenroll.CERT_HASH"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.samsung.extra.knox.certenroll.TRANSACTION_ID"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.samsung.extra.knox.certenroll.STATUS"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.samsung.extra.knox.certenroll.ALIAS"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.samsung.extra.knox.certenroll.REFERENCE_NUMBER"

    invoke-virtual {v2, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "id":J
    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .local v3, "userHandleId":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v5, " SendBroadcastToMDMAgent ----- "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SCEP Intent Calling UserId / UID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendBroadcastToCEPAgent(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "mAdminId"    # I
    .param p3, "mContainerId"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "statusIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getPackageInfoOfAdmin(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.samsung.extra.knox.certenroll.SERVICE_USERID"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.samsung.extra.knox.certenroll.SERVICE_PROTOCOL"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "id":J
    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-boolean v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sendBroadcastToSCEP ------- SCEP Intent Calling UserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Service UserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Service pkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private takeInterfaceOnBlockingQueue(ILjava/lang/String;Z)V
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "withThread"    # Z

    .prologue
    sget-boolean v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>> takeInterfaceOnBlockingQueue, containerId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :thread:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    .local v3, "interfaceSCEP":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    if-eqz p3, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-object v3, v0

    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v7, "take interface using queue"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-nez v3, :cond_4

    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v7, "takeInterfaceOnBlockingQueue bind service is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v8, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_4
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takeInterfaceOnBlockingQueue service was present overwrite mAdminUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] pkgName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    :cond_6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, "newEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    invoke-virtual {v5, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takeInterfaceOnBlockingQueue service was not present overwrite mAdminUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] pkgName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method public activateEnrollCertService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Framework activateEnrollCertService - calling....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->bindSCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/16 v0, -0x259

    goto :goto_0
.end method

.method public deleteUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "certificateHash"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v1

    .local v1, "mScepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    if-eqz v1, :cond_0

    :try_start_0
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-interface {v1, p3, v2}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->deleteUserCertificate(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public enrollUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "enrollmentProfile"    # Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;
    .param p5, "hashCACert"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p4, "allowedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v12

    .local v12, "mScepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    const/4 v11, 0x0

    .local v11, "exception":Z
    if-eqz v12, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-interface {v12, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->enrollUserCertificate(Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;Ljava/util/List;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Exception in handlePreAdminRemoval:"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v11, 0x1

    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v13, Ljava/security/SecureRandom;

    invoke-direct {v13}, Ljava/security/SecureRandom;-><init>()V

    .local v13, "secureRandomg":Ljava/security/SecureRandom;
    invoke-virtual {v13}, Ljava/security/SecureRandom;->nextInt()I

    move-result v14

    .local v14, "uniqueId":I
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_1
    const-string v7, ""

    .local v7, "alias":Ljava/lang/String;
    :goto_1
    if-eqz v11, :cond_3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, -0x3

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_2
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v7    # "alias":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    goto :goto_1

    .restart local v7    # "alias":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    const-string v5, ""

    const/16 v6, -0x259

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public getCertEnrollmentStatus(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v1

    .local v1, "mScepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    if-eqz v1, :cond_0

    :try_start_0
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-interface {v1, p3, v2}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->getCertEnrollmentStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public isEnrollCertServiceActivated(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .local v0, "containerId":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->insertOrUpdateDB(IILjava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Start of unlock of keystore happened."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$1;)V

    new-array v1, v2, [[Ljava/lang/Integer;

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v1, "End of unlock of keystore happened."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPreAdminRemoval started with thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v4, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$1;)V

    new-array v1, v3, [[Ljava/lang/Integer;

    new-array v2, v3, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPreAdminRemoval End with thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public renewUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "certificateHash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p4, "allowedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v11

    .local v11, "mScepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    const/4 v10, 0x0

    .local v10, "exception":Z
    if-eqz v11, :cond_0

    :try_start_0
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v11, v0, v1, v2}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->renewUserCertificate(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Exception in handlePreAdminRemoval:"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x1

    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    .local v12, "secureRandomg":Ljava/security/SecureRandom;
    invoke-virtual {v12}, Ljava/security/SecureRandom;->nextInt()I

    move-result v13

    .local v13, "uniqueId":I
    if-eqz v10, :cond_1

    const-string v3, ""

    const-string v4, ""

    const/4 v5, -0x3

    const-string v6, ""

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v3, ""

    const-string v4, ""

    const/16 v5, -0x259

    const-string v6, ""

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
