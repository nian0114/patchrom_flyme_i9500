.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATION:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider2"

.field private static final CLIENTCERTIFICATEMANAGER:I = 0x2

.field private static final DATETIME:I = 0x4

.field private static final DEVICEACCOUNT:I = 0x3

.field private static final DUALSIM:I = 0x5

.field private static final EMAIL:I = 0x6

.field private static final EMAILACCOUNT:I = 0x7

.field private static final ENTERPRISECERTENROLL:I = 0x8

.field private static final ENTERPRISECONTAINER:I = 0x9

.field private static final ENTERPRISECONTAINERSERVICE:I = 0xa

.field private static final ENTERPRISEDEVICEMANAGER:I = 0xb

.field private static final EXCHANGEACCOUNT:I = 0xc

.field private static final KIOSKMODESEC:I = 0xd

.field private static final KNOXCUSTOMMANAGERSERVICE1:I = 0xe

.field private static final KNOXCUSTOMMANAGERSERVICE2:I = 0xf

.field private static final MISC:I = 0x10

.field private static final MULTIUSERMANAGER:I = 0x11

.field private static final PHONERESTRICTION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SecContentProvider2"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VPN:I = 0x13

.field private static final WIFI:I = 0x14


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ApplicationPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ClientCertificateManager"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DeviceAccountPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DualSimPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailPolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailAccountPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerService"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseDeviceManager"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ExchangeAccountPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KioskMode"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService1"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService2"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MiscPolicy"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MultiUserManager"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "PhoneRestrictionPolicy"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "vpnPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "WifiPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    sget-object v3, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v5

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :pswitch_2
    const-string v3, "eas_account_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .local v2, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v2, :cond_0

    const-string v3, "API"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "api":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "setAccountEmailPassword"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string v4, "password"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    goto :goto_0

    .end local v0    # "api":Ljava/lang/String;
    .end local v2    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string v3, "SecContentProvider2"

    const-string v4, "do notifyChange() for knoxCustomManagerService1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string v3, "SecContentProvider2"

    const-string v4, "do notifyChange() for knoxCustomManagerService2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 63
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .local v14, "callingUid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v61

    .local v61, "userId":I
    const/16 v26, 0x0

    .local v26, "knoxCustomService":Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;
    const/16 v41, 0x0

    .local v41, "mCursor":Landroid/database/MatrixCursor;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCursor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    :pswitch_1
    const-string v5, "phone_restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v37, "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-eqz v37, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v5, :pswitch_data_1

    const-string v5, "SecContentProvider2"

    const-string v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_0
    const-string v6, "isCopyContactToSimAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string v6, "isBlockSmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    const-string v6, "checkEnableUseOfPacketData"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    const-string v6, "isBlockMmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_4
    const-string v6, "canIncomingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_5
    const-string v6, "isLimitNumberOfSmsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_6
    const-string v6, "isOutgoingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_7
    const-string v6, "canOutgoingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_8
    const-string v6, "isIncomingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_9
    const-string v6, "isIncomingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string v6, "isOutgoingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string v6, "isCallerIDDisplayAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string v6, "isWapPushAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string v6, "canIncomingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string v6, "canOutgoingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string v6, "isSimLockedByAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xf

    goto/16 :goto_2

    :pswitch_2
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .local v54, "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCopyContactToSimAllowed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isCopyContactToSimAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3
    move-object/from16 v5, v41

    goto/16 :goto_1

    .end local v54    # "result":Z
    :pswitch_3
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isBlockSmsWithStorageEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .end local v54    # "result":Z
    :pswitch_4
    const/4 v12, 0x0

    .local v12, "arg":Z
    if-eqz p4, :cond_2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    :cond_2
    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "checkEnableUseOfPacketData"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .end local v12    # "arg":Z
    .end local v54    # "result":Z
    :pswitch_5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isBlockMmsWithStorageEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_6
    if-eqz p4, :cond_3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_4

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "canIncomingSms"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_7
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isLimitNumberOfSmsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isOutgoingSmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_9
    if-eqz p4, :cond_5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isIncomingMmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isIncomingSmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isOutgoingMmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isCallerIDDisplayAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isWapPushAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_f
    if-eqz p4, :cond_7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_8

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "canIncomingCall"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_10
    if-eqz p4, :cond_9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    goto/16 :goto_3

    .end local v54    # "result":Z
    :pswitch_11
    if-eqz p4, :cond_b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_c

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isSimLockedByAdmin"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v37    # "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .end local v54    # "result":Z
    :pswitch_12
    const-string v5, "knoxcustom"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    move-result-object v26

    if-eqz v26, :cond_1a

    if-eqz p3, :cond_1a

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :cond_d
    :goto_4
    packed-switch v5, :pswitch_data_2

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_10
    const-string v6, "setSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x0

    goto :goto_4

    :sswitch_11
    const-string v6, "getSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x1

    goto :goto_4

    :sswitch_12
    const-string v6, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x2

    goto :goto_4

    :sswitch_13
    const-string v6, "getSealedModeString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x3

    goto :goto_4

    :sswitch_14
    const-string v6, "getSealedExitUI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x4

    goto :goto_4

    :sswitch_15
    const-string v6, "getSealedHomeActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x5

    goto :goto_4

    :sswitch_16
    const-string v6, "getSealedStatusBarMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x6

    goto :goto_4

    :sswitch_17
    const-string v6, "getSealedStatusBarClockState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x7

    goto :goto_4

    :sswitch_18
    const-string v6, "getSealedStatusBarIconsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x8

    goto :goto_4

    :sswitch_19
    const-string v6, "getSealedUsbMassStorageState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x9

    goto :goto_4

    :sswitch_1a
    const-string v6, "getSealedUsbNetState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xa

    goto/16 :goto_4

    :sswitch_1b
    const-string v6, "getSealedUsbNetAddress"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xb

    goto/16 :goto_4

    :pswitch_13
    if-eqz p4, :cond_e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_10

    :cond_e
    if-eqz p4, :cond_f

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v49

    .local v49, "paramState":Z
    const/4 v5, 0x1

    aget-object v47, p4, v5

    .local v47, "paramPasscode":Ljava/lang/String;
    const/16 v58, -0x1

    .local v58, "returnState":I
    :try_start_0
    move-object/from16 v0, v26

    move/from16 v1, v49

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->setSealedState(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v58

    :goto_5
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "setSealedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v47    # "paramPasscode":Ljava/lang/String;
    .end local v49    # "paramState":Z
    .end local v58    # "returnState":I
    :goto_6
    move-object/from16 v5, v41

    goto/16 :goto_1

    .restart local v47    # "paramPasscode":Ljava/lang/String;
    .restart local v49    # "paramState":Z
    .restart local v58    # "returnState":I
    :catch_0
    move-exception v20

    .local v20, "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v47    # "paramPasscode":Ljava/lang/String;
    .end local v49    # "paramState":Z
    .end local v58    # "returnState":I
    :pswitch_14
    const/16 v60, 0x0

    .local v60, "sealedState":Z
    :try_start_1
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedState()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v60

    :goto_7
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6

    :catch_1
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with knoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v60    # "sealedState":Z
    :pswitch_15
    const/16 v58, 0x2

    .restart local v58    # "returnState":I
    :try_start_2
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedPowerDialogOptionMode()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v58

    :goto_8
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedPowerDialogOptionMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6

    :catch_2
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :pswitch_16
    if-eqz p4, :cond_11

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13

    :cond_11
    if-eqz p4, :cond_12

    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_13
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    .local v50, "paramStringType":I
    const/16 v59, 0x0

    .local v59, "returnString":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, v26

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedModeString(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v59

    :goto_9
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedModeString"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v59, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_3
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v50    # "paramStringType":I
    .end local v59    # "returnString":Ljava/lang/String;
    :pswitch_17
    if-eqz p4, :cond_14

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_16

    :cond_14
    if-eqz p4, :cond_15

    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_16
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    .restart local v50    # "paramStringType":I
    const/16 v59, 0x0

    .restart local v59    # "returnString":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, v26

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedExitUI(I)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v59

    :goto_a
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedExitUI"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v59, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_4
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v50    # "paramStringType":I
    .end local v59    # "returnString":Ljava/lang/String;
    :pswitch_18
    const/16 v59, 0x0

    .restart local v59    # "returnString":Ljava/lang/String;
    :try_start_5
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedHomeActivity()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v59

    :goto_b
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedHomeActivity"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v59, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_5
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v59    # "returnString":Ljava/lang/String;
    :pswitch_19
    const/16 v58, 0x2

    .restart local v58    # "returnState":I
    :try_start_6
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedStatusBarMode()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v58

    :goto_c
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedStatusBarMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_6
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :pswitch_1a
    const/16 v58, 0x1

    .local v58, "returnState":Z
    :try_start_7
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedStatusBarClockState()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v58

    :goto_d
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedStatusBarClockState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_7
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_1b
    const/16 v58, 0x0

    .restart local v58    # "returnState":Z
    :try_start_8
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedStatusBarIconsState()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v58

    :goto_e
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedStatusBarIconsState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_8
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_1c
    const/16 v58, 0x1

    .restart local v58    # "returnState":Z
    :try_start_9
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedUsbMassStorageState()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v58

    :goto_f
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedUsbMassStorageState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_9
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_1d
    const/16 v58, 0x0

    .restart local v58    # "returnState":Z
    :try_start_a
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedUsbNetState()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    move-result v58

    :goto_10
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedUsbNetState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_a
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_1e
    if-eqz p4, :cond_17

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_19

    :cond_17
    if-eqz p4, :cond_18

    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_19
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .local v46, "paramAddressType":I
    const/16 v59, 0x0

    .restart local v59    # "returnString":Ljava/lang/String;
    :try_start_b
    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedUsbNetAddress(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v59

    :goto_11
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedUsbNetAddress"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v59, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_b
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v46    # "paramAddressType":I
    .end local v59    # "returnString":Ljava/lang/String;
    :cond_1a
    if-nez p3, :cond_0

    goto/16 :goto_0

    :pswitch_1f
    const-string v5, "knoxcustom"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    move-result-object v26

    if-eqz v26, :cond_21

    if-eqz p3, :cond_21

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2

    :cond_1b
    :goto_12
    packed-switch v5, :pswitch_data_3

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_1c
    const-string v6, "getSealedNotificationMessagesState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v5, 0x0

    goto :goto_12

    :sswitch_1d
    const-string v6, "getSealedMultiWindowFixedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v5, 0x1

    goto :goto_12

    :sswitch_1e
    const-string v6, "getSealedPowerDialogItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v5, 0x2

    goto :goto_12

    :sswitch_1f
    const-string v6, "getSealedPowerDialogCustomItemsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v5, 0x3

    goto :goto_12

    :sswitch_20
    const-string v6, "getSealedPowerDialogCustomItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v5, 0x4

    goto :goto_12

    :sswitch_21
    const-string v6, "getExtendedCallInfoState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v5, 0x5

    goto :goto_12

    :sswitch_22
    const-string v6, "getSettingsHiddenState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v5, 0x6

    goto :goto_12

    :sswitch_23
    const-string v6, "getSealedHideNotificationMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v5, 0x7

    goto :goto_12

    :sswitch_24
    const-string v6, "getCheckCoverPopupState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v5, 0x8

    goto :goto_12

    :sswitch_25
    const-string v6, "getRecentLongPressActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v5, 0x9

    goto :goto_12

    :sswitch_26
    const-string v6, "getRecentLongPressMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v5, 0xa

    goto/16 :goto_12

    :pswitch_20
    const/16 v58, 0x1

    .restart local v58    # "returnState":Z
    :try_start_c
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedNotificationMessagesState()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    move-result v58

    :goto_13
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedNotificationMessagesState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v58    # "returnState":Z
    :cond_1c
    :goto_14
    move-object/from16 v5, v41

    goto/16 :goto_1

    .restart local v58    # "returnState":Z
    :catch_c
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_21
    if-eqz p4, :cond_1d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1f

    :cond_1d
    if-eqz p4, :cond_1e

    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_1f
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .local v48, "paramReturnType":I
    const/16 v21, 0x0

    .local v21, "fixedState":I
    :try_start_d
    move-object/from16 v0, v26

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedMultiWindowFixedState(I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    move-result v21

    :goto_15
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedMultiWindowFixedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_14

    :catch_d
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with knoxCustomManager service: "

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v21    # "fixedState":I
    .end local v48    # "paramReturnType":I
    :pswitch_22
    const/16 v58, -0x1

    .local v58, "returnState":I
    :try_start_e
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedPowerDialogItems()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    move-result v58

    :goto_16
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedPowerDialogItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_14

    :catch_e
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :pswitch_23
    const/16 v58, 0x0

    .local v58, "returnState":Z
    :try_start_f
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedPowerDialogCustomItemsState()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    move-result v58

    :goto_17
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedPowerDialogCustomItemsState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :catch_f
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_24
    const/16 v57, 0x0

    .local v57, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_10
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedPowerDialogCustomItems()Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v57

    :goto_18
    if-eqz v57, :cond_20

    :cond_20
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedPowerDialogCustomItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v57, :cond_1c

    invoke-interface/range {v57 .. v57}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-interface/range {v57 .. v57}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .local v62, "value":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v62 .. v62}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_19

    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v62    # "value":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :catch_10
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v57    # "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :pswitch_25
    const/16 v58, 0x0

    .restart local v58    # "returnState":Z
    :try_start_11
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getExtendedCallInfoState()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    move-result v58

    :goto_1a
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getExtendedCallInfoState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :catch_11
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_26
    const/16 v58, 0x0

    .local v58, "returnState":I
    :try_start_12
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSettingsHiddenState()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    move-result v58

    :goto_1b
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSettingsHiddenState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :catch_12
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :pswitch_27
    const/16 v58, -0x1

    .restart local v58    # "returnState":I
    :try_start_13
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedHideNotificationMessages()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    move-result v58

    :goto_1c
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedHideNotificationMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :catch_13
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :pswitch_28
    const/16 v58, 0x1

    .local v58, "returnState":Z
    :try_start_14
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getCheckCoverPopupState()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    move-result v58

    :goto_1d
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getCheckCoverPopupState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :catch_14
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_29
    const/16 v59, 0x0

    .restart local v59    # "returnString":Ljava/lang/String;
    :try_start_15
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    move-result-object v59

    :goto_1e
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getRecentLongPressActivity"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v59, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :catch_15
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v59    # "returnString":Ljava/lang/String;
    :pswitch_2a
    const/16 v58, -0x1

    .local v58, "returnState":I
    :try_start_16
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getRecentLongPressMode()I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    move-result v58

    :goto_1f
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getRecentLongPressMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :catch_16
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :cond_21
    if-nez p3, :cond_0

    goto/16 :goto_0

    :pswitch_2b
    const-string v5, "application_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .local v4, "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3

    :cond_22
    :goto_20
    packed-switch v5, :pswitch_data_4

    const-string v5, "SecContentProvider2"

    const-string v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_27
    const-string v6, "getApplicationUninstallationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x0

    goto :goto_20

    :sswitch_28
    const-string v6, "isApplicationInstalled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x1

    goto :goto_20

    :sswitch_29
    const-string v6, "isIntentDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x2

    goto :goto_20

    :sswitch_2a
    const-string v6, "getApplicationNotificationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x3

    goto :goto_20

    :sswitch_2b
    const-string v6, "getAppInstallToSdCard"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x4

    goto :goto_20

    :sswitch_2c
    const-string v6, "isApplicationForceStopDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x5

    goto :goto_20

    :sswitch_2d
    const-string v6, "isApplicationClearDataDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x6

    goto :goto_20

    :sswitch_2e
    const-string v6, "isApplicationClearCacheDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x7

    goto :goto_20

    :sswitch_2f
    const-string v6, "getApplicationNameFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x8

    goto :goto_20

    :sswitch_30
    const-string v6, "isPackageUpdateAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x9

    goto/16 :goto_20

    :sswitch_31
    const-string v6, "getApplicationComponentState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0xa

    goto/16 :goto_20

    :sswitch_32
    const-string v6, "getApplicationStateEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0xb

    goto/16 :goto_20

    :sswitch_33
    const-string v6, "isUsbDevicePermittedForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0xc

    goto/16 :goto_20

    :sswitch_34
    const-string v6, "getApplicationIconFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0xd

    goto/16 :goto_20

    :pswitch_2c
    if-eqz p4, :cond_23

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_24

    :cond_23
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_24
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationUninstallationEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v54    # "result":Z
    :goto_21
    move-object/from16 v5, v41

    goto/16 :goto_1

    :pswitch_2d
    if-eqz p4, :cond_25

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_26

    :cond_25
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_26
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isApplicationInstalled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_21

    .end local v54    # "result":Z
    :pswitch_2e
    if-eqz p4, :cond_27

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_28

    :cond_27
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_28
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isIntentDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_21

    .end local v54    # "result":Z
    :pswitch_2f
    if-eqz p4, :cond_29

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2a

    :cond_29
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_2a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v53

    .local v53, "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationNotificationMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v53    # "res":I
    :pswitch_30
    const/16 v54, 0x1

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAppInstallToSdCard"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v54    # "result":Z
    :pswitch_31
    if-eqz p4, :cond_2b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_2c

    :cond_2b
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_2c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    const/4 v8, 0x3

    aget-object v8, p4, v8

    const/4 v9, 0x4

    aget-object v9, p4, v9

    const/4 v10, 0x5

    aget-object v10, p4, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isApplicationForceStopDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v54    # "result":Z
    :pswitch_32
    if-eqz p4, :cond_2d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_2e

    :cond_2d
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_2e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isApplicationClearDataDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v54    # "result":Z
    :pswitch_33
    if-eqz p4, :cond_2f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_30

    :cond_2f
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_30
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isApplicationClearCacheDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v54    # "result":Z
    :pswitch_34
    if-eqz p4, :cond_31

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_32

    :cond_31
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_32
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v56

    .local v56, "resultString":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationNameFromDb"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v56, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v56    # "resultString":Ljava/lang/String;
    :pswitch_35
    if-eqz p4, :cond_33

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_34

    :cond_33
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_34
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isPackageUpdateAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v54    # "result":Z
    :pswitch_36
    if-eqz p4, :cond_35

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_36

    :cond_35
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_36
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v6, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationComponentState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v54    # "result":Z
    :pswitch_37
    if-eqz p4, :cond_37

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_38

    :cond_37
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_38
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationStateEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v54    # "result":Z
    :pswitch_38
    if-eqz p4, :cond_39

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_3a

    :cond_39
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_3a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUsbDevicePermittedForPackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v54    # "result":Z
    :pswitch_39
    if-eqz p4, :cond_3b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3c

    :cond_3b
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_3c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[B

    move-result-object v52

    .local v52, "re":[B
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationIconFromDb"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v52, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    .end local v4    # "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v52    # "re":[B
    :pswitch_3a
    const-string v5, "eas_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .local v30, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v30, :cond_0

    if-eqz p3, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_4

    :cond_3d
    :goto_22
    packed-switch v5, :pswitch_data_5

    const-string v5, "SecContentProvider2"

    const-string v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_35
    const-string v6, "getRequiredSignedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v5, 0x0

    goto :goto_22

    :sswitch_36
    const-string v6, "getRequiredEncryptedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v5, 0x1

    goto :goto_22

    :sswitch_37
    const-string v6, "getForceSMIMECertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v5, 0x2

    goto :goto_22

    :sswitch_38
    const-string v6, "isIncomingAttachmentsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v5, 0x3

    goto :goto_22

    :sswitch_39
    const-string v6, "getIncomingAttachmentSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v5, 0x4

    goto :goto_22

    :sswitch_3a
    const-string v6, "getMaxCalendarAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v5, 0x5

    goto :goto_22

    :sswitch_3b
    const-string v6, "getMaxEmailBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v5, 0x6

    goto :goto_22

    :sswitch_3c
    const-string v6, "getMaxEmailHTMLBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v5, 0x7

    goto :goto_22

    :sswitch_3d
    const-string v6, "getForceSMIMECertificateForSigning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v5, 0x8

    goto :goto_22

    :sswitch_3e
    const-string v6, "getForceSMIMECertificateForEncryption"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v5, 0x9

    goto/16 :goto_22

    :sswitch_3f
    const-string v6, "getAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v5, 0xa

    goto/16 :goto_22

    :sswitch_40
    const-string v6, "getAccountCertificatePassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v5, 0xb

    goto/16 :goto_22

    :sswitch_41
    const-string v6, "getMaxEmailAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v5, 0xc

    goto/16 :goto_22

    :sswitch_42
    const-string v6, "setAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v5, 0xd

    goto/16 :goto_22

    :pswitch_3b
    if-eqz p4, :cond_3e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_3f

    :cond_3e
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_3f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getRequiredSignedMIMEMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v54    # "result":Z
    :goto_23
    move-object/from16 v5, v41

    goto/16 :goto_1

    :pswitch_3c
    if-eqz p4, :cond_40

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_41

    :cond_40
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_41
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getRequiredEncryptedMIMEMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_23

    .end local v54    # "result":Z
    :pswitch_3d
    if-eqz p4, :cond_42

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_43

    :cond_42
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_43
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getForceSMIMECertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_23

    .end local v54    # "result":Z
    :pswitch_3e
    if-eqz p4, :cond_44

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_45

    :cond_44
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_45
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isIncomingAttachmentsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v54    # "result":Z
    :pswitch_3f
    if-eqz p4, :cond_46

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_47

    :cond_46
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_47
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v53

    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getIncomingAttachmentSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v53    # "res":I
    :pswitch_40
    if-eqz p4, :cond_48

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_49

    :cond_48
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_49
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v53

    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getMaxCalendarAgeFilter"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v53    # "res":I
    :pswitch_41
    if-eqz p4, :cond_4a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_4b

    :cond_4a
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v53

    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getMaxEmailBodyTruncationSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v53    # "res":I
    :pswitch_42
    if-eqz p4, :cond_4c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_4d

    :cond_4c
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v53

    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getMaxEmailHTMLBodyTruncationSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v53    # "res":I
    :pswitch_43
    if-eqz p4, :cond_4e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_4f

    :cond_4e
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getForceSMIMECertificateForSigning"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v54    # "result":Z
    :pswitch_44
    if-eqz p4, :cond_50

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_51

    :cond_50
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_51
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getForceSMIMECertificateForEncryption"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v54    # "result":Z
    :pswitch_45
    if-eqz p4, :cond_52

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_53

    :cond_52
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_53
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v51

    .local v51, "passwd":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAccountEmailPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v51, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v51    # "passwd":Ljava/lang/String;
    :pswitch_46
    if-eqz p4, :cond_54

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_55

    :cond_54
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_55
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v16

    .local v16, "certPasswd":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAccountCertificatePassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v16    # "certPasswd":Ljava/lang/String;
    :pswitch_47
    if-eqz p4, :cond_56

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_57

    :cond_56
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_57
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v53

    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getMaxEmailAgeFilter"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v53    # "res":I
    :pswitch_48
    if-eqz p4, :cond_58

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_59

    :cond_58
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_59
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v42

    .local v42, "long_res":J
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "setAccountEmailPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    .end local v30    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .end local v42    # "long_res":J
    :pswitch_49
    const-string v5, "wifi_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v39, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-eqz v39, :cond_0

    if-eqz p3, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_5

    :cond_5a
    :goto_24
    packed-switch v5, :pswitch_data_6

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_43
    const-string v6, "getAllowUserPolicyChanges"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v5, 0x0

    goto :goto_24

    :sswitch_44
    const-string v6, "getAllowUserProfiles"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v5, 0x1

    goto :goto_24

    :sswitch_45
    const-string v6, "getAutomaticConnectionToWifi"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v5, 0x2

    goto :goto_24

    :sswitch_46
    const-string v6, "getPasswordHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v5, 0x3

    goto :goto_24

    :sswitch_47
    const-string v6, "getPromptCredentialsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v5, 0x4

    goto :goto_24

    :sswitch_48
    const-string v6, "isEnterpriseNetwork"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v5, 0x5

    goto :goto_24

    :sswitch_49
    const-string v6, "isWifiApSettingUserModificationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v5, 0x6

    goto :goto_24

    :sswitch_4a
    const-string v6, "isWifiStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v5, 0x7

    goto :goto_24

    :sswitch_4b
    const-string v6, "isOpenWifiApAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const/16 v5, 0x8

    goto :goto_24

    :pswitch_4a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAllowUserPolicyChanges"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_25
    move-object/from16 v5, v41

    goto/16 :goto_1

    .end local v54    # "result":Z
    :pswitch_4b
    if-eqz p4, :cond_5b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5c

    :cond_5b
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_5c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v39

    move/from16 v1, v61

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Landroid/app/enterprise/ContextInfo;ZI)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAllowUserProfiles"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_25

    .end local v54    # "result":Z
    :pswitch_4c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAutomaticConnectionToWifi"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_25

    .end local v54    # "result":Z
    :pswitch_4d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getPasswordHidden"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    .end local v54    # "result":Z
    :pswitch_4e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getPromptCredentialsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    .end local v54    # "result":Z
    :pswitch_4f
    if-eqz p4, :cond_5d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5e

    :cond_5d
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_5e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isEnterpriseNetwork"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    .end local v54    # "result":Z
    :pswitch_50
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isWifiApSettingUserModificationAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    .end local v54    # "result":Z
    :pswitch_51
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isWifiStateChangeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    .end local v54    # "result":Z
    :pswitch_52
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isOpenWifiApAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    .end local v39    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    .end local v54    # "result":Z
    :pswitch_53
    const-string v5, "kioskmode"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .local v34, "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-eqz v34, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_6

    :cond_5f
    :goto_26
    packed-switch v5, :pswitch_data_7

    :goto_27
    move-object/from16 v5, v41

    goto/16 :goto_1

    :sswitch_4c
    const-string v6, "isNavigationBarHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v5, 0x0

    goto :goto_26

    :sswitch_4d
    const-string v6, "isMultiWindowModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v5, 0x1

    goto :goto_26

    :sswitch_4e
    const-string v6, "isMultiWindowModeAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v5, 0x2

    goto :goto_26

    :sswitch_4f
    const-string v6, "isAirCommandModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v5, 0x3

    goto :goto_26

    :sswitch_50
    const-string v6, "isAirViewModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v5, 0x4

    goto :goto_26

    :sswitch_51
    const-string v6, "getBlockedHwKeysCache"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v5, 0x5

    goto :goto_26

    :sswitch_52
    const-string v6, "isTaskManagerAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v5, 0x6

    goto :goto_26

    :sswitch_53
    const-string v6, "isKioskModeEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v5, 0x7

    goto :goto_26

    :sswitch_54
    const-string v6, "getKioskHomePackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/16 v5, 0x8

    goto :goto_26

    :pswitch_54
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isNavigationBarHidden"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .end local v54    # "result":Z
    :pswitch_55
    if-eqz p4, :cond_60

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_61

    :cond_60
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_61
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isMultiWindowModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .end local v54    # "result":Z
    :pswitch_56
    if-eqz p4, :cond_62

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_63

    :cond_62
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_63
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v54

    .restart local v54    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isMultiWindowModeAllowedAsUser"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .end local v54    # "result":Z
    :pswitch_57
    if-nez p4, :cond_64

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    :goto_28
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirCommandModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAirCommandModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .end local v54    # "result":Z
    :cond_64
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirCommandModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .end local v54    # "result":Z
    :pswitch_58
    if-nez p4, :cond_65

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    :goto_29
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirViewModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAirViewModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .end local v54    # "result":Z
    :cond_65
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirViewModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .end local v54    # "result":Z
    :pswitch_59
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v55

    .local v55, "resultMap":Ljava/util/Map;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getBlockedHwKeysCache"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v55, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .end local v55    # "resultMap":Ljava/util/Map;
    :pswitch_5a
    if-eqz p4, :cond_66

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_67

    :cond_66
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_67
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isTaskManagerAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .end local v54    # "result":Z
    :pswitch_5b
    if-nez p4, :cond_68

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    :goto_2a
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKioskModeEnabled return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isKioskModeEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .end local v54    # "result":Z
    :cond_68
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKioskModeEnabled uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .end local v54    # "result":Z
    :pswitch_5c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v22

    .local v22, "homePkg":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getKioskHomePackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .end local v22    # "homePkg":Ljava/lang/String;
    .end local v34    # "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    :pswitch_5d
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v33

    .local v33, "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    if-eqz v33, :cond_0

    if-eqz p3, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_7

    :cond_69
    :goto_2b
    packed-switch v5, :pswitch_data_8

    :cond_6a
    :goto_2c
    :pswitch_5e
    move-object/from16 v5, v41

    goto/16 :goto_1

    :sswitch_55
    const-string v6, "getAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v5, 0x0

    goto :goto_2b

    :sswitch_56
    const-string v6, "getActiveAdmins"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v5, 0x1

    goto :goto_2b

    :sswitch_57
    const-string v6, "getRemoveWarning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v5, 0x2

    goto :goto_2b

    :sswitch_58
    const-string v6, "isAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v5, 0x3

    goto :goto_2b

    :sswitch_59
    const-string v6, "setActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v5, 0x4

    goto :goto_2b

    :sswitch_5a
    const-string v6, "removeActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v5, 0x5

    goto :goto_2b

    :sswitch_5b
    const-string v6, "setAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v5, 0x6

    goto :goto_2b

    :sswitch_5c
    const-string v6, "updateAdminPermissions"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v5, 0x7

    goto :goto_2b

    :sswitch_5d
    const-string v6, "getMyKnoxAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/16 v5, 0x8

    goto :goto_2b

    :pswitch_5f
    if-eqz p4, :cond_6b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6c

    :cond_6b
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_6c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c

    .end local v54    # "result":Z
    :pswitch_60
    if-eqz p4, :cond_6d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6e

    :cond_6d
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_6e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v40

    .local v40, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getActiveAdmins"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v40, :cond_6a

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/content/ComponentName;

    .local v62, "value":Landroid/content/ComponentName;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v62 .. v62}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d

    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v40    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v62    # "value":Landroid/content/ComponentName;
    :pswitch_61
    if-eqz p4, :cond_6f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_70

    :cond_6f
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_70
    const/4 v5, 0x0

    :try_start_17
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17

    goto/16 :goto_2c

    :catch_17
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2c

    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_62
    if-eqz p4, :cond_71

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_72

    :cond_71
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_72
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c

    .end local v54    # "result":Z
    :pswitch_63
    if-eqz p4, :cond_73

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_74

    :cond_73
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_74
    const/4 v5, 0x0

    :try_start_18
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    goto/16 :goto_2c

    :catch_18
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2c

    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_64
    if-eqz p4, :cond_75

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_76

    :cond_75
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_76
    const/4 v5, 0x0

    :try_start_19
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    goto/16 :goto_2c

    :catch_19
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2c

    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_65
    if-eqz p4, :cond_77

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_78

    :cond_77
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_78
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "setAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c

    .end local v54    # "result":Z
    :pswitch_66
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getMyKnoxAdmin(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v11

    .local v11, "admin":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getMyKnoxAdmin"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c

    .end local v11    # "admin":Ljava/lang/String;
    .end local v33    # "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :pswitch_67
    const-string v5, "email_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/enterprise/email/EmailPolicy;

    .local v32, "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    if-eqz v32, :cond_0

    if-eqz p3, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_8

    :cond_79
    :goto_2e
    packed-switch v5, :pswitch_data_9

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_5e
    const-string v6, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    const/4 v5, 0x0

    goto :goto_2e

    :sswitch_5f
    const-string v6, "getAllowEmailForwarding"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    const/4 v5, 0x1

    goto :goto_2e

    :sswitch_60
    const-string v6, "isEmailSettingsChangesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    const/4 v5, 0x2

    goto :goto_2e

    :sswitch_61
    const-string v6, "isEmailNotificationsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    const/4 v5, 0x3

    goto :goto_2e

    :sswitch_62
    const-string v6, "getAllowHtmlEmail"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    const/4 v5, 0x4

    goto :goto_2e

    :pswitch_68
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAccountAdditionAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2f
    move-object/from16 v5, v41

    goto/16 :goto_1

    .end local v54    # "result":Z
    :pswitch_69
    if-eqz p4, :cond_7a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_7b

    :cond_7a
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAllowEmailForwarding"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2f

    .end local v54    # "result":Z
    :pswitch_6a
    if-eqz p4, :cond_7c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_7d

    :cond_7c
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isEmailSettingsChangesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2f

    .end local v54    # "result":Z
    :pswitch_6b
    if-eqz p4, :cond_7e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_7f

    :cond_7e
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isEmailNotificationsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2f

    .end local v54    # "result":Z
    :pswitch_6c
    if-eqz p4, :cond_80

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_81

    :cond_80
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_81
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAllowHtmlEmail"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2f

    .end local v32    # "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    .end local v54    # "result":Z
    :pswitch_6d
    const-string v5, "vpn_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .local v38, "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    if-eqz v38, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_9

    :cond_82
    :goto_30
    packed-switch v5, :pswitch_data_a

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_63
    const-string v6, "checkRacoonSecurity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x0

    goto :goto_30

    :sswitch_64
    const-string v6, "isUserAddProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x1

    goto :goto_30

    :sswitch_65
    const-string v6, "isUserChangeProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x2

    goto :goto_30

    :sswitch_66
    const-string v6, "isUserSetAlwaysOnAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x3

    goto :goto_30

    :pswitch_6e
    if-eqz p4, :cond_83

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_84

    :cond_83
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_84
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "checkRacoonSecurity"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_31
    move-object/from16 v5, v41

    goto/16 :goto_1

    .end local v54    # "result":Z
    :pswitch_6f
    const/4 v12, 0x0

    .restart local v12    # "arg":Z
    if-eqz p4, :cond_85

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_85

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    :cond_85
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUserAddProfilesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_31

    .end local v12    # "arg":Z
    .end local v54    # "result":Z
    :pswitch_70
    const/4 v12, 0x0

    .restart local v12    # "arg":Z
    if-eqz p4, :cond_86

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_86

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    :cond_86
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUserChangeProfilesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_31

    .end local v12    # "arg":Z
    .end local v54    # "result":Z
    :pswitch_71
    const/4 v12, 0x0

    .restart local v12    # "arg":Z
    if-eqz p4, :cond_87

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_87

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    :cond_87
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUserSetAlwaysOnAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_31

    .end local v12    # "arg":Z
    .end local v38    # "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    .end local v54    # "result":Z
    :pswitch_72
    const-string v5, "knox_ccm_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .local v27, "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-eqz v27, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_a

    :cond_88
    :goto_32
    packed-switch v5, :pswitch_data_b

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_67
    const-string v6, "installCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    const/4 v5, 0x0

    goto :goto_32

    :sswitch_68
    const-string v6, "deleteCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    const/4 v5, 0x1

    goto :goto_32

    :sswitch_69
    const-string v6, "isCCMPolicyEnabledForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    const/4 v5, 0x2

    goto :goto_32

    :sswitch_6a
    const-string v6, "getCCMVersion"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    const/4 v5, 0x3

    goto :goto_32

    :pswitch_73
    if-eqz p4, :cond_89

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_8a

    :cond_89
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8a
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .local v13, "arrayLength":I
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .local v45, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct/range {v18 .. v18}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .local v18, "cp":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    const/4 v5, 0x1

    aget-object v5, p4, v5

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    const/4 v5, 0x3

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    const/16 v23, 0x4

    .local v23, "i":I
    :goto_33
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    move/from16 v0, v23

    if-ge v0, v5, :cond_8b

    aget-object v5, p4, v23

    move-object/from16 v0, v45

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v23, v23, 0x1

    goto :goto_33

    :cond_8b
    move-object/from16 v0, v45

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    add-int/lit8 v6, v13, -0x2

    aget-object v6, p4, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, v13, -0x1

    aget-object v7, p4, v7

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "installCertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v13    # "arrayLength":I
    .end local v18    # "cp":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .end local v23    # "i":I
    .end local v45    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v54    # "result":Z
    :goto_34
    move-object/from16 v5, v41

    goto/16 :goto_1

    :pswitch_74
    if-eqz p4, :cond_8c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_8d

    :cond_8c
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "deleteCertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_34

    .end local v54    # "result":Z
    :pswitch_75
    if-eqz p4, :cond_8e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_8f

    :cond_8e
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isCCMPolicyEnabledForPackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_34

    .end local v54    # "result":Z
    :pswitch_76
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v15

    .local v15, "ccmVersion":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getCCMVersion"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    .end local v15    # "ccmVersion":Ljava/lang/String;
    .end local v27    # "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    :pswitch_77
    const-string v5, "multi_user_manager_service"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .local v36, "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    if-eqz v36, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_b

    :cond_90
    :goto_35
    packed-switch v5, :pswitch_data_c

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_6b
    const-string v6, "multipleUsersAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    const/4 v5, 0x0

    goto :goto_35

    :sswitch_6c
    const-string v6, "isUserCreationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    const/4 v5, 0x1

    goto :goto_35

    :sswitch_6d
    const-string v6, "isUserRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    const/4 v5, 0x2

    goto :goto_35

    :pswitch_78
    const/4 v12, 0x0

    .restart local v12    # "arg":Z
    if-eqz p4, :cond_91

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_91

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    :cond_91
    :try_start_1a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    move-result v53

    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "multipleUsersAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v53    # "res":I
    :goto_36
    move-object/from16 v5, v41

    goto/16 :goto_1

    :catch_1a
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    goto/16 :goto_1

    .end local v12    # "arg":Z
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_79
    const/4 v12, 0x0

    .restart local v12    # "arg":Z
    if-eqz p4, :cond_92

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_92

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    :cond_92
    :try_start_1b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUserCreationAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_36

    .end local v54    # "result":Z
    :catch_1b
    move-exception v20

    .local v20, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto/16 :goto_1

    .end local v12    # "arg":Z
    .end local v20    # "e":Ljava/lang/Exception;
    :pswitch_7a
    const/4 v12, 0x0

    .restart local v12    # "arg":Z
    if-eqz p4, :cond_93

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_93

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    :cond_93
    :try_start_1c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_1c

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUserRemovalAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_36

    .end local v54    # "result":Z
    :catch_1c
    move-exception v20

    .local v20, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    goto/16 :goto_1

    .end local v12    # "arg":Z
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v36    # "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    :pswitch_7b
    const-string v5, "device_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .local v28, "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v28, :cond_0

    if-eqz p3, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_c

    :cond_94
    :goto_37
    packed-switch v5, :pswitch_data_d

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_6e
    const-string v6, "isAccountRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    const/4 v5, 0x0

    goto :goto_37

    :sswitch_6f
    const-string v6, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    const/4 v5, 0x1

    goto :goto_37

    :pswitch_7c
    if-eqz p4, :cond_95

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_96

    :cond_95
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_96
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAccountRemovalAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_38
    move-object/from16 v5, v41

    goto/16 :goto_1

    .end local v54    # "result":Z
    :pswitch_7d
    if-eqz p4, :cond_97

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_98

    :cond_97
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_98
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAccountAdditionAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_38

    .end local v28    # "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .end local v54    # "result":Z
    :pswitch_7e
    const-string v5, "misc_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/general/MiscPolicy;

    .local v35, "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-eqz v35, :cond_0

    if-eqz p3, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d

    :cond_99
    :goto_39
    packed-switch v5, :pswitch_data_e

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_70
    const-string v6, "getCurrentLockScreenString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_99

    const/4 v5, 0x0

    goto :goto_39

    :sswitch_71
    const-string v6, "isNFCStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_99

    const/4 v5, 0x1

    goto :goto_39

    :pswitch_7f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v19

    .local v19, "current":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getCurrentLockScreenString"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v19    # "current":Ljava/lang/String;
    :goto_3a
    move-object/from16 v5, v41

    goto/16 :goto_1

    :pswitch_80
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v54

    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isNFCStateChangeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3a

    .end local v35    # "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    .end local v54    # "result":Z
    :pswitch_81
    const-string v5, "email_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .local v31, "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    if-eqz v31, :cond_0

    if-eqz p3, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_e

    :cond_9a
    :goto_3b
    packed-switch v5, :pswitch_data_f

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_72
    const-string v6, "getSecurityIncomingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    const/4 v5, 0x0

    goto :goto_3b

    :sswitch_73
    const-string v6, "getSecurityOutgoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    const/4 v5, 0x1

    goto :goto_3b

    :sswitch_74
    const-string v6, "setSecurityInComingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    const/4 v5, 0x2

    goto :goto_3b

    :sswitch_75
    const-string v6, "setSecurityOutGoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    const/4 v5, 0x3

    goto :goto_3b

    :pswitch_82
    if-eqz p4, :cond_9b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_9c

    :cond_9b
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_9c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v25

    .local v25, "incServer":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSecurityIncomingServerPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v25, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v25    # "incServer":Ljava/lang/String;
    :goto_3c
    move-object/from16 v5, v41

    goto/16 :goto_1

    :pswitch_83
    if-eqz p4, :cond_9d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_9e

    :cond_9d
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_9e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v44

    .local v44, "outServer":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSecurityOutgoingServerPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v44, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3c

    .end local v44    # "outServer":Ljava/lang/String;
    :pswitch_84
    if-eqz p4, :cond_9f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_a0

    :cond_9f
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_a0
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v42

    .restart local v42    # "long_res":J
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3c

    .end local v42    # "long_res":J
    :pswitch_85
    if-eqz p4, :cond_a1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_a2

    :cond_a1
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_a2
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v42

    .restart local v42    # "long_res":J
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    .end local v31    # "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    .end local v42    # "long_res":J
    :pswitch_86
    const-string v5, "dualsim_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    .local v29, "lDualSimPolicyService":Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
    if-eqz v29, :cond_0

    if-eqz p3, :cond_0

    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_10

    :cond_a3
    :goto_3d
    packed-switch v5, :pswitch_data_11

    const/4 v5, 0x0

    goto/16 :goto_1

    :pswitch_87
    const-string v6, "checkPrivilegedNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a3

    const/4 v5, 0x0

    goto :goto_3d

    :pswitch_88
    if-eqz p4, :cond_a4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_a5

    :cond_a4
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_a5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->checkPrivilegedNumber(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I

    move-result v17

    .local v17, "check":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "checkPrivilegedNumber"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v41

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_72
        :pswitch_7b
        :pswitch_0
        :pswitch_86
        :pswitch_67
        :pswitch_81
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5d
        :pswitch_3a
        :pswitch_53
        :pswitch_12
        :pswitch_1f
        :pswitch_7e
        :pswitch_77
        :pswitch_1
        :pswitch_6d
        :pswitch_49
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7c20b2e4 -> :sswitch_3
        -0x75b6adce -> :sswitch_c
        -0x516c3a61 -> :sswitch_9
        -0x4b848555 -> :sswitch_a
        -0x3f23242a -> :sswitch_b
        -0x308af1de -> :sswitch_1
        -0xb24e11b -> :sswitch_8
        0x1134efad -> :sswitch_0
        0x1410b963 -> :sswitch_4
        0x14e927da -> :sswitch_e
        0x42bd705d -> :sswitch_7
        0x617af081 -> :sswitch_f
        0x6b27fd59 -> :sswitch_5
        0x6dfeff94 -> :sswitch_d
        0x6e342165 -> :sswitch_6
        0x7be8d885 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x5e8b707a -> :sswitch_13
        -0x535b24ed -> :sswitch_12
        -0x5344faa1 -> :sswitch_11
        -0x47062780 -> :sswitch_15
        -0x2d0232dc -> :sswitch_14
        0x27deb5dc -> :sswitch_19
        0x3e24f8e6 -> :sswitch_1a
        0x432078d3 -> :sswitch_10
        0x433f1786 -> :sswitch_18
        0x5b05ced2 -> :sswitch_16
        0x6c630712 -> :sswitch_17
        0x75760f09 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x757aa1fb -> :sswitch_25
        -0x6f61ea52 -> :sswitch_22
        -0x6cd5112c -> :sswitch_20
        -0x6b02fb56 -> :sswitch_24
        -0x3eeccaaa -> :sswitch_21
        -0x3b6d6c7b -> :sswitch_1e
        -0xf88924c -> :sswitch_1d
        0x12bb4d48 -> :sswitch_1c
        0x4a948f99 -> :sswitch_26
        0x67050a1d -> :sswitch_1f
        0x6c8af02b -> :sswitch_23
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x4de6cfb2 -> :sswitch_31
        -0x4378abac -> :sswitch_28
        -0x308e1a98 -> :sswitch_2a
        -0xf8e19f3 -> :sswitch_2d
        0x1e373fed -> :sswitch_2f
        0x21074337 -> :sswitch_2e
        0x22e592aa -> :sswitch_32
        0x2952fe03 -> :sswitch_2c
        0x2d2b575b -> :sswitch_34
        0x38dd3e65 -> :sswitch_33
        0x3c3b0102 -> :sswitch_29
        0x3d4c4243 -> :sswitch_30
        0x49cef874 -> :sswitch_27
        0x767a17ac -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_39
        -0x7a29af54 -> :sswitch_42
        -0x7672ed17 -> :sswitch_41
        -0x6a25634f -> :sswitch_35
        -0x437f6e25 -> :sswitch_40
        -0x1e01c219 -> :sswitch_3e
        -0x14b468b1 -> :sswitch_36
        0xb8321a0 -> :sswitch_3f
        0x26b3fb45 -> :sswitch_37
        0x2a7ba768 -> :sswitch_38
        0x37929121 -> :sswitch_3d
        0x6e37395a -> :sswitch_3b
        0x77ba6b2b -> :sswitch_3a
        0x7ec2cd45 -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x741f137a -> :sswitch_4a
        -0x5d7bb47d -> :sswitch_48
        -0x44588ee5 -> :sswitch_46
        -0x420e1f50 -> :sswitch_4b
        -0x208922d -> :sswitch_43
        0x1b40829f -> :sswitch_47
        0x2e222643 -> :sswitch_45
        0x5a7559bf -> :sswitch_49
        0x6406da08 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x678cfb16 -> :sswitch_52
        -0x495e7741 -> :sswitch_53
        -0x1abb5fa -> :sswitch_4d
        0xf077a09 -> :sswitch_51
        0x1fa36ac0 -> :sswitch_50
        0x2f421cc3 -> :sswitch_4e
        0x32574534 -> :sswitch_54
        0x34565e5f -> :sswitch_4c
        0x3ab3e61a -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x76e9095f -> :sswitch_5d
        -0x755ab0b2 -> :sswitch_5b
        -0x69b477e0 -> :sswitch_56
        -0x5fd37362 -> :sswitch_5c
        -0x3d5118be -> :sswitch_55
        0x2fe3c227 -> :sswitch_59
        0x3854fcc5 -> :sswitch_5a
        0x47a72ec2 -> :sswitch_57
        0x7ac2a216 -> :sswitch_58
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_5e
        :pswitch_66
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x793fada2 -> :sswitch_62
        -0x394ec066 -> :sswitch_60
        0x1733e8eb -> :sswitch_61
        0x4e985da6 -> :sswitch_5f
        0x4fb7d6e9 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        0x20839282 -> :sswitch_63
        0x20e4e472 -> :sswitch_64
        0x528665ad -> :sswitch_66
        0x75693779 -> :sswitch_65
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        -0x602f3b04 -> :sswitch_67
        -0x148747ff -> :sswitch_6a
        0x37b7b049 -> :sswitch_69
        0x7a36baec -> :sswitch_68
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        -0xa355b0c -> :sswitch_6c
        -0x7ddb46f -> :sswitch_6d
        0x9914b0 -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_78
        :pswitch_79
        :pswitch_7a
    .end packed-switch

    :sswitch_data_c
    .sparse-switch
        -0x7117b61 -> :sswitch_6e
        0x4fb7d6e9 -> :sswitch_6f
    .end sparse-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_7d
    .end packed-switch

    :sswitch_data_d
    .sparse-switch
        -0x7cedec35 -> :sswitch_70
        0x30468cc8 -> :sswitch_71
    .end sparse-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_80
    .end packed-switch

    :sswitch_data_e
    .sparse-switch
        -0x5ed62634 -> :sswitch_75
        0x655a3d46 -> :sswitch_74
        0x705941e0 -> :sswitch_73
        0x7378391a -> :sswitch_72
    .end sparse-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x208e5624
        :pswitch_87
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_88
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method
