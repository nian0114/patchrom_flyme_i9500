.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final ACTION_MDM_BROWSERPROVIDER_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed"

.field private static final ADVANCEDRESTRICTION:I = 0x1

.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATIONPERMISSIONCONTROL:I = 0x17

.field private static final AUDIT:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final BLUETOOTH:I = 0x3

.field private static final BLUETOOTHUTILS:I = 0x4

.field private static final BROWSER:I = 0x5

.field private static final CERTIFICATE:I = 0x6

.field private static final CONTAINERAPPLICATION:I = 0x7

.field private static final DATETIME:I = 0x18

.field private static final DEVICESETTIGNS:I = 0x8

.field private static final ENTERPRISEKNOXMANAGER:I = 0x9

.field public static final EXTRA_API_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed.api"

.field private static final FIREWALL:I = 0xa

.field private static final KNOXCONFIGURATIONTYPE:I = 0xb

.field private static final LOCATION:I = 0xc

.field private static final PASSWORD1:I = 0xd

.field private static final PASSWORD2:I = 0xe

.field public static final PROVIDER_ADMINREMOVED:Ljava/lang/String; = "ADMIN_REMOVED"

.field public static final PROVIDER_AUDITLOGPOLICY_AUDITLOGENABLED:Ljava/lang/String; = "AuditLog/isAuditLogEnabled"

.field public static final PROVIDER_AUDITLOGPOLICY_AUTOCOMPLETE:Ljava/lang/String; = "AuditLog/AUTO_COMPLETING_DATA"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENPOPUP:Ljava/lang/String; = "AuditLog/OPEN_POPUP_URL"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENURL:Ljava/lang/String; = "AuditLog/OPEN_URL"

.field public static final PROVIDER_BROWSERPOLICY_AUTOFILL:Ljava/lang/String; = "BrowserPolicy/getAutoFillSetting"

.field public static final PROVIDER_BROWSERPOLICY_COOKIES:Ljava/lang/String; = "BrowserPolicy/getCookiesSetting"

.field public static final PROVIDER_BROWSERPOLICY_HTTPPROXY:Ljava/lang/String; = "BrowserPolicy/getHttpProxy"

.field public static final PROVIDER_BROWSERPOLICY_JAVASCRIPT:Ljava/lang/String; = "BrowserPolicy/getJavaScriptSetting"

.field public static final PROVIDER_BROWSERPOLICY_POPUPS:Ljava/lang/String; = "BrowserPolicy/getPopupsSetting"

.field public static final PROVIDER_CERTIFICATEPOLICY_CERTIFICATE_REMOVED:Ljava/lang/String; = "CertificatePolicy/certificateRemoved"

.field public static final PROVIDER_CERTIFICATEPOLICY_NOTIFY:Ljava/lang/String; = "CertificatePolicy/notifyCertificateFailure"

.field public static final PROVIDER_FIREWALLPOLICY_SAVEURLBLOCKEDREPORT:Ljava/lang/String; = "FirewallPolicy/saveURLBlockedReport"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterEnabled"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERLIST:Ljava/lang/String; = "FirewallPolicy/getURLFilterList"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERREPORTENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterReportEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_AUTHENTICATION:Ljava/lang/String; = "SmartCardBrowserPolicy/isAuthenticationEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE:Ljava/lang/String; = "SmartCardBrowserPolicy/getClientCertificateAlias"

.field private static final RESTRICTION1:I = 0xf

.field private static final RESTRICTION2:I = 0x10

.field private static final RESTRICTION3:I = 0x11

.field private static final RESTRICTION4:I = 0x12

.field private static final ROAMING:I = 0x13

.field private static final SECURITY:I = 0x14

.field private static final SMARTCARDBROWSER:I = 0x16

.field private static final SMARTCARDEMAIL:I = 0x15

.field public static final TAG:Ljava/lang/String; = "SecContentProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mEdmFirewallPolicy:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AdvancedRestrictionPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AuditLog"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothUtils"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BrowserPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "CertificatePolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ContainerApplicationPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DeviceSettingsPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "FirewallPolicy"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "KnoxConfigurationType"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "LocationPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy1"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy2"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy1"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy2"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy3"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy4"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RoamingPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SecurityPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardEmailPolicy"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardBrowserPolicy"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ApplicationPermissionControlPolicy"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DateTimePolicy"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.sec.knox.provider/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "content_uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .local v10, "callingUid":I
    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    const/4 v2, 0x0

    return-object v2

    :sswitch_1
    const-string v2, "firewall_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .local v13, "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    if-eqz v13, :cond_0

    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "api":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v2, "saveURLBlockedReport"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string v3, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto :goto_0

    .end local v9    # "api":Ljava/lang/String;
    .end local v13    # "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    :sswitch_2
    const-string v2, "certificate_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v12, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v12, :cond_0

    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "api":Ljava/lang/String;
    const-string v2, "fail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .local v11, "fail":Ljava/lang/Integer;
    if-eqz v9, :cond_0

    const-string v2, "notifyCertificateFailure"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v11, :cond_0

    const-string v2, "module"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v9    # "api":Ljava/lang/String;
    .end local v11    # "fail":Ljava/lang/Integer;
    .end local v12    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    :sswitch_3
    const-string v2, "auditlog"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .local v1, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v1, :cond_0

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const-string v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .end local v1    # "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    :sswitch_4
    const-string v2, "password_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/security/PasswordPolicy;

    .local v14, "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v14, :cond_0

    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "api":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v2, "setPwdChangeRequested"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string v3, "flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v14, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Landroid/app/enterprise/ContextInfo;I)Z

    goto/16 :goto_0

    .end local v9    # "api":Ljava/lang/String;
    .end local v14    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :sswitch_5
    const-string v2, "security_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/security/SecurityPolicy;

    .local v15, "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    if-eqz v15, :cond_0

    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "api":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v2, "setDodBannerVisibleStatus"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string v3, "isVisible"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v15, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Landroid/app/enterprise/ContextInfo;Z)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0xe -> :sswitch_4
        0x14 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 61
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .local v19, "callingUid":I
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v55

    .local v55, "userId":I
    const/16 v43, 0x0

    .local v43, "mCursor":Landroid/database/MatrixCursor;
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "uri = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    sget-object v59, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " selection = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v57, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v57

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v57

    packed-switch v57, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/16 v57, 0x0

    :goto_0
    return-object v57

    :pswitch_1
    const-string v57, "restriction_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v35, "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v35, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v57, :pswitch_data_1

    const/16 v57, 0x0

    goto :goto_0

    :sswitch_0
    const-string v58, "checkPackageSource"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x0

    goto :goto_1

    :sswitch_1
    const-string v58, "isActivationLockAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x1

    goto :goto_1

    :sswitch_2
    const-string v58, "isAirplaneModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x2

    goto :goto_1

    :sswitch_3
    const-string v58, "isAndroidBeamAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x3

    goto :goto_1

    :sswitch_4
    const-string v58, "isAudioRecordAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x4

    goto :goto_1

    :sswitch_5
    const-string v58, "isBackgroundDataEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x5

    goto :goto_1

    :sswitch_6
    const-string v58, "isBackgroundProcessLimitEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x6

    goto :goto_1

    :sswitch_7
    const-string v58, "isBackupAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x7

    goto :goto_1

    :sswitch_8
    const-string v58, "isBluetoothTetheringEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v58, "isCameraEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v58, "isCellularDataAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v58, "isClipboardAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v58, "isClipboardAllowedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v58, "isClipboardShareAllowedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v58, "isClipboardShareAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v58, "isDeveloperModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v58, "isFactoryResetAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v58, "isFastEncryptionAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1

    const/16 v57, 0x11

    goto/16 :goto_1

    :pswitch_2
    if-eqz p4, :cond_2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_3

    :cond_2
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v57, 0x0

    aget-object v57, p4, v57

    move-object/from16 v0, v35

    move/from16 v1, v55

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v48

    .local v48, "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "checkPackageSource"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v48    # "result":Z
    :pswitch_3
    if-eqz p4, :cond_4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_5

    :cond_4
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isActivationLockAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .end local v48    # "result":Z
    :pswitch_4
    const/4 v6, 0x0

    .local v6, "arg":Z
    if-eqz p4, :cond_6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_6

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_6
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isAirplaneModeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_5
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_7

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_7
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isAndroidBeamAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_6
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_8

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_8
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isAudioRecordAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_7
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBackgroundDataEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :pswitch_8
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBackgroundProcessLimitEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :pswitch_9
    if-eqz p4, :cond_9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_a

    :cond_9
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBackupAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :pswitch_a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBluetoothTetheringEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :pswitch_b
    if-eqz p4, :cond_b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_c

    :cond_b
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isCameraEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :pswitch_c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isCellularDataAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :pswitch_d
    if-eqz p4, :cond_d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_e

    :cond_d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    :goto_3
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isClipboardAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :cond_e
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_3

    .end local v48    # "result":Z
    :pswitch_e
    if-eqz p4, :cond_f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_10

    :cond_f
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_10
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v35

    move/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isClipboardAllowedAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :pswitch_f
    if-eqz p4, :cond_11

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_12

    :cond_11
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_12
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    move-object/from16 v0, v35

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isClipboardShareAllowedAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :pswitch_10
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isClipboardShareAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :pswitch_11
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_13

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_13

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_13
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isDeveloperModeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_12
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isFactoryResetAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v48    # "result":Z
    :pswitch_13
    if-eqz p4, :cond_14

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_14

    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_14
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isFastEncryptionAllowed return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isFastEncryptionAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v48    # "result":Z
    :pswitch_14
    const-string v57, "restriction_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .restart local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v35, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_1

    :cond_15
    :goto_4
    packed-switch v57, :pswitch_data_2

    const-string v57, "SecContentProvider"

    const-string v58, "return null"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v57, 0x0

    goto/16 :goto_0

    :sswitch_12
    const-string v58, "isFirmwareAutoUpdateAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x0

    goto :goto_4

    :sswitch_13
    const-string v58, "isFirmwareRecoveryAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x1

    goto :goto_4

    :sswitch_14
    const-string v58, "isGoogleAccountsAutoSyncAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x2

    goto :goto_4

    :sswitch_15
    const-string v58, "isGoogleCrashReportedAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x3

    goto :goto_4

    :sswitch_16
    const-string v58, "isHeadPhoneEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x4

    goto :goto_4

    :sswitch_17
    const-string v58, "isHomeKeyEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x5

    goto :goto_4

    :sswitch_18
    const-string v58, "isKillingActivitiesOnLeaveAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x6

    goto :goto_4

    :sswitch_19
    const-string v58, "isLockScreenEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x7

    goto/16 :goto_4

    :sswitch_1a
    const-string v58, "isLockScreenViewAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x8

    goto/16 :goto_4

    :sswitch_1b
    const-string v58, "isMicrophoneEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x9

    goto/16 :goto_4

    :sswitch_1c
    const-string v58, "isMicrophoneEnabledAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0xa

    goto/16 :goto_4

    :sswitch_1d
    const-string v58, "isMockLocationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0xb

    goto/16 :goto_4

    :sswitch_1e
    const-string v58, "isNewAdminInstallationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0xc

    goto/16 :goto_4

    :sswitch_1f
    const-string v58, "isNFCEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0xd

    goto/16 :goto_4

    :sswitch_20
    const-string v58, "isNFCEnabledWithMsg"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0xe

    goto/16 :goto_4

    :sswitch_21
    const-string v58, "isNonMarketAppAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0xf

    goto/16 :goto_4

    :sswitch_22
    const-string v58, "isNonTrustedAppInstallBlocked"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_15

    const/16 v57, 0x10

    goto/16 :goto_4

    :pswitch_15
    if-eqz p4, :cond_16

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_17

    :cond_16
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_17
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isFirmwareAutoUpdateAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_5
    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v48    # "result":Z
    :pswitch_16
    if-eqz p4, :cond_18

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_19

    :cond_18
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_19
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isFirmwareRecoveryAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5

    .end local v48    # "result":Z
    :pswitch_17
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isGoogleAccountsAutoSyncAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :pswitch_18
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isGoogleCrashReportedAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :pswitch_19
    if-eqz p4, :cond_1a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_1b

    :cond_1a
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_1b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isHeadPhoneEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :pswitch_1a
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_1c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_1c

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_1c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isHomeKeyEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_1b
    if-nez p4, :cond_1d

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " callingUid : "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isKillingActivitiesOnLeaveAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :cond_1d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " userid : "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v48    # "result":Z
    :pswitch_1c
    if-eqz p4, :cond_1e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_1f

    :cond_1e
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_1f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isLockScreenEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :pswitch_1d
    if-eqz p4, :cond_20

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_21

    :cond_20
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_21
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_22

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v48

    .restart local v48    # "result":Z
    :goto_7
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isLockScreenViewAllowed return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isLockScreenViewAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :cond_22
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_7

    .end local v48    # "result":Z
    :pswitch_1e
    if-eqz p4, :cond_23

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_24

    :cond_23
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_24
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_25

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    :goto_8
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isMicrophoneEnabled return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isMicrophoneEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :cond_25
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_8

    .end local v48    # "result":Z
    :pswitch_1f
    if-eqz p4, :cond_26

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_27

    :cond_26
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_27
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v35

    move/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isMicrophoneEnabledAsUser return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isMicrophoneEnabledAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :pswitch_20
    if-nez p4, :cond_28

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "callingUid = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isMockLocationEnabled return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isMockLocationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :cond_28
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "callingUid = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v48    # "result":Z
    :pswitch_21
    if-eqz p4, :cond_29

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_2a

    :cond_29
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_2a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isNewAdminInstallationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :pswitch_22
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isNFCEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :pswitch_23
    const/16 v50, 0x0

    .local v50, "showMsg":Z
    if-eqz p4, :cond_2b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_2c

    :cond_2b
    const/16 v50, 0x0

    :goto_a
    move-object/from16 v0, v35

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isNFCEnabledWithMsg"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :cond_2c
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v50

    goto :goto_a

    .end local v50    # "showMsg":Z
    :pswitch_24
    if-eqz p4, :cond_2d

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    :goto_b
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isNonMarketAppAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v48    # "result":Z
    :cond_2d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_b

    .end local v48    # "result":Z
    :pswitch_25
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isNonTrustedAppInstallBlocked"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v48    # "result":Z
    :pswitch_26
    const-string v57, "restriction_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .restart local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v35, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_2

    :cond_2e
    :goto_c
    packed-switch v57, :pswitch_data_3

    const/16 v57, 0x0

    goto/16 :goto_0

    :sswitch_23
    const-string v58, "isSettingsChangesAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0x0

    goto :goto_c

    :sswitch_24
    const-string v58, "isOdeTrustedBootVerificationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0x1

    goto :goto_c

    :sswitch_25
    const-string v58, "isOTAUpgradeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0x2

    goto :goto_c

    :sswitch_26
    const-string v58, "isPowerOffAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0x3

    goto :goto_c

    :sswitch_27
    const-string v58, "isSafeModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0x4

    goto :goto_c

    :sswitch_28
    const-string v58, "isSBeamAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0x5

    goto :goto_c

    :sswitch_29
    const-string v58, "isScreenCaptureEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0x6

    goto :goto_c

    :sswitch_2a
    const-string v58, "isSdCardEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0x7

    goto :goto_c

    :sswitch_2b
    const-string v58, "isSDCardMoveAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0x8

    goto/16 :goto_c

    :sswitch_2c
    const-string v58, "isSmartClipModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0x9

    goto/16 :goto_c

    :sswitch_2d
    const-string v58, "isStatusBarExpansionallowedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0xa

    goto/16 :goto_c

    :sswitch_2e
    const-string v58, "isStopSystemAppAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0xb

    goto/16 :goto_c

    :sswitch_2f
    const-string v58, "isSVoiceAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0xc

    goto/16 :goto_c

    :sswitch_30
    const-string v58, "isUsbDebuggingEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2e

    const/16 v57, 0xd

    goto/16 :goto_c

    :pswitch_27
    if-eqz p4, :cond_2f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_30

    :cond_2f
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_30
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_31

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    :goto_d
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSettingsChangesAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_e
    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v48    # "result":Z
    :cond_31
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_d

    .end local v48    # "result":Z
    :pswitch_28
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isOdeTrustedBootVerificationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_e

    .end local v48    # "result":Z
    :pswitch_29
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isOTAUpgradeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v48    # "result":Z
    :pswitch_2a
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_32

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_32

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_32
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPowerOffAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_2b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSafeModeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v48    # "result":Z
    :pswitch_2c
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_33

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_33

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_33
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSBeamAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_2d
    if-eqz p4, :cond_34

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_35

    :cond_34
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_35
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isScreenCaptureEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v48    # "result":Z
    :pswitch_2e
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSdCardEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v48    # "result":Z
    :pswitch_2f
    if-eqz p4, :cond_36

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_37

    :cond_36
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_37
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSDCardMoveAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v48    # "result":Z
    :pswitch_30
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_38

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_38

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_38
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSmartClipModeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_31
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_39

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_39

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_39
    move-object/from16 v0, v35

    move/from16 v1, v55

    invoke-virtual {v0, v6, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isStatusBarExpansionallowedAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_32
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isStopSystemAppAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v48    # "result":Z
    :pswitch_33
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    move/from16 v53, v19

    .local v53, "uid":I
    if-eqz p4, :cond_3b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_3b

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_3a
    :goto_f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isSVoiceAllowed result = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " uid = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSVoiceAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v48    # "result":Z
    :cond_3b
    if-eqz p4, :cond_3a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_3a

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/16 v57, 0x1

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v53

    goto/16 :goto_f

    .end local v6    # "arg":Z
    .end local v53    # "uid":I
    :pswitch_34
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUsbDebuggingEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v48    # "result":Z
    :pswitch_35
    const-string v57, "restriction_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .restart local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v35, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_3

    :cond_3c
    :goto_10
    packed-switch v57, :pswitch_data_4

    const/16 v57, 0x0

    goto/16 :goto_0

    :sswitch_31
    const-string v58, "isUsbHostStorageAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0x0

    goto :goto_10

    :sswitch_32
    const-string v58, "isUsbMassStorageEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0x1

    goto :goto_10

    :sswitch_33
    const-string v58, "isUsbMediaPlayerAvailable"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0x2

    goto :goto_10

    :sswitch_34
    const-string v58, "isUsbTetheringEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0x3

    goto :goto_10

    :sswitch_35
    const-string v58, "isUserMobileDataLimitAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0x4

    goto :goto_10

    :sswitch_36
    const-string v58, "isUseSecureKeypadEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0x5

    goto :goto_10

    :sswitch_37
    const-string v58, "isVideoRecordAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0x6

    goto :goto_10

    :sswitch_38
    const-string v58, "isVpnAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0x7

    goto :goto_10

    :sswitch_39
    const-string v58, "isWallpaperChangeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0x8

    goto/16 :goto_10

    :sswitch_3a
    const-string v58, "isWifiDirectAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0x9

    goto/16 :goto_10

    :sswitch_3b
    const-string v58, "isWifiTetheringEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0xa

    goto/16 :goto_10

    :sswitch_3c
    const-string v58, "isSDCardWriteAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0xb

    goto/16 :goto_10

    :sswitch_3d
    const-string v58, "isWifiEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3c

    const/16 v57, 0xc

    goto/16 :goto_10

    :pswitch_36
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_3d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_3d

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_3d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUsbHostStorageAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v6    # "arg":Z
    :goto_11
    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v48    # "result":Z
    :pswitch_37
    if-eqz p4, :cond_3e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_3f

    :cond_3e
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_3f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUsbMassStorageEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_11

    .end local v48    # "result":Z
    :pswitch_38
    if-eqz p4, :cond_40

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_41

    :cond_40
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_41
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUsbMediaPlayerAvailable"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v48    # "result":Z
    :pswitch_39
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUsbTetheringEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v48    # "result":Z
    :pswitch_3a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUserMobileDataLimitAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v48    # "result":Z
    :pswitch_3b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUseSecureKeypadEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v48    # "result":Z
    :pswitch_3c
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_42

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_42

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_42
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isVideoRecordAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_3d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isVpnAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v48    # "result":Z
    :pswitch_3e
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_43

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_43

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_43
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isWallpaperChangeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_3f
    const/4 v6, 0x0

    .restart local v6    # "arg":Z
    if-eqz p4, :cond_44

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_44

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_44
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isWifiDirectAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_40
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isWifiTetheringEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v48    # "result":Z
    :pswitch_41
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSDCardWriteAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v48    # "result":Z
    :pswitch_42
    const-string v57, "wifi_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v39, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-eqz v39, :cond_45

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v39

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isWifiEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v48    # "result":Z
    :cond_45
    const/16 v57, 0x0

    goto/16 :goto_0

    .end local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v39    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    :pswitch_43
    const-string v57, "certificate_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v30, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v30, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_4

    :cond_46
    :goto_12
    packed-switch v57, :pswitch_data_5

    :cond_47
    :goto_13
    move-object/from16 v57, v43

    goto/16 :goto_0

    :sswitch_3e
    const-string v58, "isCaCertificateTrusted"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0x0

    goto :goto_12

    :sswitch_3f
    const-string v58, "isCaCertificateDisabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0x1

    goto :goto_12

    :sswitch_40
    const-string v58, "isUserRemoveCertificatesAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0x2

    goto :goto_12

    :sswitch_41
    const-string v58, "isSignatureIdentityInformationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0x3

    goto :goto_12

    :sswitch_42
    const-string v58, "getIdentitiesFromSignatures"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0x4

    goto :goto_12

    :sswitch_43
    const-string v58, "notifyCertificateFailure"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0x5

    goto :goto_12

    :sswitch_44
    const-string v58, "isRevocationCheckEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0x6

    goto :goto_12

    :sswitch_45
    const-string v58, "isOcspCheckEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0x7

    goto :goto_12

    :sswitch_46
    const-string v58, "isCertificateValidationAtInstallEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0x8

    goto/16 :goto_12

    :sswitch_47
    const-string v58, "validateCertificateAtInstall"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0x9

    goto/16 :goto_12

    :sswitch_48
    const-string v58, "validateChainAtInstall"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0xa

    goto/16 :goto_12

    :sswitch_49
    const-string v58, "isPrivateKeyApplicationPermitted"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_46

    const/16 v57, 0xb

    goto/16 :goto_12

    :pswitch_44
    if-eqz p4, :cond_48

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_49

    :cond_48
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_49
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/app/enterprise/CertificateInfo;

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    move-object/from16 v2, v57

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrusted(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isCaCertificateTrusted"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .end local v48    # "result":Z
    :pswitch_45
    if-eqz p4, :cond_4a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_4b

    :cond_4a
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_4b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isCaCertificateDisabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .end local v48    # "result":Z
    :pswitch_46
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUserRemoveCertificatesAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .end local v48    # "result":Z
    :pswitch_47
    if-eqz p4, :cond_4c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_4d

    :cond_4c
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_4d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSignatureIdentityInformationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .end local v48    # "result":Z
    :pswitch_48
    if-eqz p4, :cond_4e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_4f

    :cond_4e
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_4f
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, [Landroid/content/pm/Signature;

    check-cast v57, [Landroid/content/pm/Signature;

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v42

    .local v42, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getIdentitiesFromSignatures"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v42, :cond_47

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->isEmpty()Z

    move-result v57

    if-nez v57, :cond_47

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_50
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_47

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, [Ljava/lang/String;

    .local v56, "value":[Ljava/lang/String;
    move-object/from16 v7, v56

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v40, v0

    .local v40, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_14
    move/from16 v0, v24

    move/from16 v1, v40

    if-ge v0, v1, :cond_50

    aget-object v25, v7, v24

    .local v25, "internalValue":Ljava/lang/String;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v25, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_14

    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v24    # "i$":I
    .end local v25    # "internalValue":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v42    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v56    # "value":[Ljava/lang/String;
    :pswitch_49
    if-eqz p4, :cond_51

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_52

    :cond_51
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_52
    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    const/16 v59, 0x2

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v43, 0x0

    goto/16 :goto_13

    :pswitch_4a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isRevocationCheckEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .end local v48    # "result":Z
    :pswitch_4b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isOcspCheckEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .end local v48    # "result":Z
    :pswitch_4c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isCertificateValidationAtInstallEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .end local v48    # "result":Z
    :pswitch_4d
    if-eqz p4, :cond_53

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_54

    :cond_53
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_54
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/app/enterprise/CertificateInfo;

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I

    move-result v47

    .local v47, "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "validateCertificateAtInstall"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .end local v47    # "res":I
    :pswitch_4e
    if-eqz p4, :cond_55

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_56

    :cond_55
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_56
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/util/List;

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v47

    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "validateChainAtInstall"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .end local v47    # "res":I
    :pswitch_4f
    if-eqz p4, :cond_57

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_58

    :cond_57
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_58
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    const/16 v60, 0x2

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move-object/from16 v3, v59

    move/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isPrivateKeyApplicationPermitted(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v52

    .local v52, "stringResult":Ljava/lang/String;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPrivateKeyApplicationPermitted"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v52, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .end local v30    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .end local v52    # "stringResult":Ljava/lang/String;
    :pswitch_50
    const-string v57, "password_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/security/PasswordPolicy;

    .local v34, "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v34, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_5

    :cond_59
    :goto_15
    packed-switch v57, :pswitch_data_6

    const/16 v57, 0x0

    goto/16 :goto_0

    :sswitch_4a
    const-string v58, "getForbiddenStrings"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0x0

    goto :goto_15

    :sswitch_4b
    const-string v58, "getMaximumCharacterOccurences"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0x1

    goto :goto_15

    :sswitch_4c
    const-string v58, "getMaximumCharacterSequenceLength"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0x2

    goto :goto_15

    :sswitch_4d
    const-string v58, "getMaximumNumericSequenceLength"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0x3

    goto :goto_15

    :sswitch_4e
    const-string v58, "getMinimumCharacterChangeLength"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0x4

    goto :goto_15

    :sswitch_4f
    const-string v58, "getPasswordChangeTimeout"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0x5

    goto :goto_15

    :sswitch_50
    const-string v58, "getRequiredPwdPatternRestrictions"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0x6

    goto :goto_15

    :sswitch_51
    const-string v58, "hasForbiddenCharacterSequence"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0x7

    goto :goto_15

    :sswitch_52
    const-string v58, "hasForbiddenData"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0x8

    goto/16 :goto_15

    :sswitch_53
    const-string v58, "hasForbiddenNumericSequence"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0x9

    goto/16 :goto_15

    :sswitch_54
    const-string v58, "hasForbiddenStringDistance"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0xa

    goto/16 :goto_15

    :sswitch_55
    const-string v58, "hasMaxRepeatedCharacters"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_59

    const/16 v57, 0xb

    goto/16 :goto_15

    :pswitch_51
    if-eqz p4, :cond_5a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_5b

    :cond_5a
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_5b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v41

    .local v41, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getForbiddenStrings"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v41, :cond_5c

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->isEmpty()Z

    move-result v57

    if-nez v57, :cond_5c

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_5c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/String;

    .local v56, "value":Ljava/lang/String;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v56, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_16

    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v41    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v56    # "value":Ljava/lang/String;
    :pswitch_52
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMaximumCharacterOccurences"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v47    # "res":I
    :cond_5c
    :goto_17
    move-object/from16 v57, v43

    goto/16 :goto_0

    :pswitch_53
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMaximumCharacterSequenceLength"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_17

    .end local v47    # "res":I
    :pswitch_54
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMaximumNumericSequenceLength"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17

    .end local v47    # "res":I
    :pswitch_55
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMinimumCharacterChangeLength"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17

    .end local v47    # "res":I
    :pswitch_56
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getPasswordChangeTimeout"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17

    .end local v47    # "res":I
    :pswitch_57
    if-eqz p4, :cond_5d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_5e

    :cond_5d
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_5e
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v51

    .local v51, "str":Ljava/lang/String;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getRequiredPwdPatternRestrictions"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v51, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17

    .end local v51    # "str":Ljava/lang/String;
    :pswitch_58
    if-eqz p4, :cond_5f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_60

    :cond_5f
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_60
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "hasForbiddenCharacterSequence"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17

    .end local v48    # "result":Z
    :pswitch_59
    if-eqz p4, :cond_61

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_62

    :cond_61
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_62
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "hasForbiddenData"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17

    .end local v48    # "result":Z
    :pswitch_5a
    if-eqz p4, :cond_63

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_64

    :cond_63
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_64
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "hasForbiddenNumericSequence"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17

    .end local v48    # "result":Z
    :pswitch_5b
    if-eqz p4, :cond_65

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_66

    :cond_65
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_66
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move-object/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "hasForbiddenStringDistance"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17

    .end local v48    # "result":Z
    :pswitch_5c
    if-eqz p4, :cond_67

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_68

    :cond_67
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_68
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "hasMaxRepeatedCharacters"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17

    .end local v34    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    .end local v48    # "result":Z
    :pswitch_5d
    const-string v57, "password_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/security/PasswordPolicy;

    .restart local v34    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v34, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_6

    :cond_69
    :goto_18
    packed-switch v57, :pswitch_data_7

    const/16 v57, 0x0

    goto/16 :goto_0

    :sswitch_56
    const-string v58, "isBiometricAuthenticationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_69

    const/16 v57, 0x0

    goto :goto_18

    :sswitch_57
    const-string v58, "isChangeRequested"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_69

    const/16 v57, 0x1

    goto :goto_18

    :sswitch_58
    const-string v58, "isExternalStorageForFailedPasswordsWipeExcluded"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_69

    const/16 v57, 0x2

    goto :goto_18

    :sswitch_59
    const-string v58, "isPasswordPatternMatched"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_69

    const/16 v57, 0x3

    goto :goto_18

    :sswitch_5a
    const-string v58, "isPasswordVisibilityEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_69

    const/16 v57, 0x4

    goto :goto_18

    :sswitch_5b
    const-string v58, "isPasswordVisibilityEnabledAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_69

    const/16 v57, 0x5

    goto :goto_18

    :sswitch_5c
    const-string v58, "getPasswordLockDelay"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_69

    const/16 v57, 0x6

    goto :goto_18

    :sswitch_5d
    const-string v58, "getMaximumFailedPasswordsForDisable"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_69

    const/16 v57, 0x7

    goto :goto_18

    :sswitch_5e
    const-string v58, "getMaximumFailedPasswordsForWipe"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_69

    const/16 v57, 0x8

    goto/16 :goto_18

    :pswitch_5e
    if-eqz p4, :cond_6a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_6b

    :cond_6a
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_6b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBiometricAuthenticationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v48    # "result":Z
    :goto_19
    move-object/from16 v57, v43

    goto/16 :goto_0

    :pswitch_5f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isChangeRequested"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_19

    .end local v47    # "res":I
    :pswitch_60
    if-eqz p4, :cond_6c

    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    :goto_1a
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isExternalStorageForFailedPasswordsWipeExcluded"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19

    .end local v48    # "result":Z
    :cond_6c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_1a

    .end local v48    # "result":Z
    :pswitch_61
    if-eqz p4, :cond_6d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_6e

    :cond_6d
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_6e
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPasswordPatternMatched"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19

    .end local v48    # "result":Z
    :pswitch_62
    if-nez p4, :cond_6f

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isPasswordVisibilityEnabled return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPasswordVisibilityEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19

    .end local v48    # "result":Z
    :cond_6f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .end local v48    # "result":Z
    :pswitch_63
    if-eqz p4, :cond_70

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_71

    :cond_70
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_71
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    move-object/from16 v0, v34

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isPasswordVisibilityEnabledAsUser return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPasswordVisibilityEnabledAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19

    .end local v48    # "result":Z
    :pswitch_64
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getPasswordLockDelay"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19

    .end local v47    # "res":I
    :pswitch_65
    if-eqz p4, :cond_72

    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .restart local v47    # "res":I
    :goto_1c
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMaximumFailedPasswordsForDisable"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19

    .end local v47    # "res":I
    :cond_72
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .restart local v47    # "res":I
    goto :goto_1c

    .end local v47    # "res":I
    :pswitch_66
    if-eqz p4, :cond_73

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_74

    :cond_73
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_74
    const/16 v57, 0x0

    aget-object v57, p4, v57

    if-nez v57, :cond_75

    const/16 v20, 0x0

    .local v20, "cn":Landroid/content/ComponentName;
    :goto_1d
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_76

    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v47

    .restart local v47    # "res":I
    :goto_1e
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMaximumFailedPasswordsForWipe"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19

    .end local v20    # "cn":Landroid/content/ComponentName;
    .end local v47    # "res":I
    :cond_75
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v20

    .restart local v20    # "cn":Landroid/content/ComponentName;
    goto/16 :goto_1d

    :cond_76
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v47

    .restart local v47    # "res":I
    goto :goto_1e

    .end local v20    # "cn":Landroid/content/ComponentName;
    .end local v34    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    .end local v47    # "res":I
    :pswitch_67
    const-string v57, "browser_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .local v29, "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-eqz v29, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_7

    :cond_77
    :goto_1f
    packed-switch v57, :pswitch_data_8

    const/16 v57, 0x0

    goto/16 :goto_0

    :sswitch_5f
    const-string v58, "getHttpProxy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_77

    const/16 v57, 0x0

    goto :goto_1f

    :sswitch_60
    const-string v58, "getAutoFillSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_77

    const/16 v57, 0x1

    goto :goto_1f

    :sswitch_61
    const-string v58, "getCookiesSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_77

    const/16 v57, 0x2

    goto :goto_1f

    :sswitch_62
    const-string v58, "getJavaScriptSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_77

    const/16 v57, 0x3

    goto :goto_1f

    :sswitch_63
    const-string v58, "getPopupsSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_77

    const/16 v57, 0x4

    goto :goto_1f

    :sswitch_64
    const-string v58, "getForceFraudWarningSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_77

    const/16 v57, 0x5

    goto :goto_1f

    :pswitch_68
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v46

    .local v46, "proxy":Ljava/lang/String;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getHttpProxy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v46, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v46    # "proxy":Ljava/lang/String;
    :goto_20
    move-object/from16 v57, v43

    goto/16 :goto_0

    :pswitch_69
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x4

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v8

    .local v8, "bAutoFill":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getAutoFillSetting"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_20

    .end local v8    # "bAutoFill":Z
    :pswitch_6a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x2

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v9

    .local v9, "bCookiesSettings":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getCookiesSetting"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    .end local v9    # "bCookiesSettings":Z
    :pswitch_6b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x10

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v15

    .local v15, "bJavaScriptSetting":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getJavaScriptSetting"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    .end local v15    # "bJavaScriptSetting":Z
    :pswitch_6c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v16

    .local v16, "bPopupSettings":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getPopupsSetting"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    .end local v16    # "bPopupSettings":Z
    :pswitch_6d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x8

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v10

    .local v10, "bForceWarning":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getForceFraudWarningSetting"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    .end local v10    # "bForceWarning":Z
    .end local v29    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    :pswitch_6e
    const-string v57, "bluetooth_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v28, "lBluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-eqz v28, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_8

    :cond_78
    :goto_21
    packed-switch v57, :pswitch_data_9

    const/16 v57, 0x0

    goto/16 :goto_0

    :sswitch_65
    const-string v58, "isBluetoothEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_78

    const/16 v57, 0x0

    goto :goto_21

    :sswitch_66
    const-string v58, "isBluetoothEnabledWithMsg"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_78

    const/16 v57, 0x1

    goto :goto_21

    :sswitch_67
    const-string v58, "isOutgoingCallsAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_78

    const/16 v57, 0x2

    goto :goto_21

    :sswitch_68
    const-string v58, "isLimitedDiscoverableEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_78

    const/16 v57, 0x3

    goto :goto_21

    :sswitch_69
    const-string v58, "isDiscoverableEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_78

    const/16 v57, 0x4

    goto :goto_21

    :sswitch_6a
    const-string v58, "isDesktopConnectivityEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_78

    const/16 v57, 0x5

    goto :goto_21

    :sswitch_6b
    const-string v58, "bluetoothLog"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_78

    const/16 v57, 0x6

    goto :goto_21

    :sswitch_6c
    const-string v58, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_78

    const/16 v57, 0x7

    goto :goto_21

    :pswitch_6f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isBluetoothEnabled = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBluetoothEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_22
    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v48    # "result":Z
    :pswitch_70
    if-eqz p4, :cond_79

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_7a

    :cond_79
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_7a
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    move-object/from16 v0, v28

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isBluetoothEnabled = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBluetoothEnabledWithMsg"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_22

    .end local v48    # "result":Z
    :pswitch_71
    if-eqz p4, :cond_7b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_7c

    :cond_7b
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_7c
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    move-object/from16 v0, v28

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isOutgoingCallsAllowed = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isOutgoingCallsAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_22

    .end local v48    # "result":Z
    :pswitch_72
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isLimitedDiscoverableEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_22

    .end local v48    # "result":Z
    :pswitch_73
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isDiscoverableEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_22

    .end local v48    # "result":Z
    :pswitch_74
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isDesktopConnectivityEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_22

    .end local v48    # "result":Z
    :pswitch_75
    if-eqz p4, :cond_7d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_7e

    :cond_7d
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_7e
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move-object/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "bluetoothLog"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_22

    .end local v48    # "result":Z
    :pswitch_76
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBluetoothLogEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_22

    .end local v28    # "lBluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    .end local v48    # "result":Z
    :pswitch_77
    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_9

    :cond_7f
    :goto_23
    packed-switch v57, :pswitch_data_a

    :goto_24
    move-object/from16 v57, v43

    goto/16 :goto_0

    :sswitch_6d
    const-string v58, "isProfileAuthorizedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7f

    const/16 v57, 0x0

    goto :goto_23

    :sswitch_6e
    const-string v58, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7f

    const/16 v57, 0x1

    goto :goto_23

    :sswitch_6f
    const-string v58, "isPairingAllowedbySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7f

    const/16 v57, 0x2

    goto :goto_23

    :sswitch_70
    const-string v58, "isHeadsetAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7f

    const/16 v57, 0x3

    goto :goto_23

    :sswitch_71
    const-string v58, "isSocketAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7f

    const/16 v57, 0x4

    goto :goto_23

    :sswitch_72
    const-string v58, "bluetoothSocketLog"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7f

    const/16 v57, 0x5

    goto :goto_23

    :sswitch_73
    const-string v58, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7f

    const/16 v57, 0x6

    goto :goto_23

    :sswitch_74
    const-string v58, "bluetoothLog"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7f

    const/16 v57, 0x7

    goto :goto_23

    :sswitch_75
    const-string v58, "bluetoothLogForRemote"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7f

    const/16 v57, 0x8

    goto/16 :goto_23

    :sswitch_76
    const-string v58, "bluetoothLogForDevice"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_7f

    const/16 v57, 0x9

    goto/16 :goto_23

    :pswitch_78
    if-eqz p4, :cond_80

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_81

    :cond_80
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_81
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isProfileAuthorizedBySecurityPolicy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_24

    .end local v48    # "result":Z
    :pswitch_79
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBluetoothLogEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_24

    .end local v48    # "result":Z
    :pswitch_7a
    if-eqz p4, :cond_82

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_83

    :cond_82
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_83
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v48

    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PAIRINGALLOWEDBYSECURITY = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPairingAllowedbySecurityPolicy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_24

    .end local v48    # "result":Z
    :pswitch_7b
    if-eqz p4, :cond_84

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_85

    :cond_84
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_85
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v57

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-virtual/range {v57 .. v58}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isHeadsetAllowedBySecurityPolicy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_24

    .end local v48    # "result":Z
    :pswitch_7c
    if-eqz p4, :cond_86

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x3

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_87

    :cond_86
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_87
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v57

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-virtual/range {v57 .. v58}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    const/16 v59, 0x2

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    const/16 v60, 0x3

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v60

    invoke-static/range {v57 .. v60}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSocketAllowedBySecurityPolicy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_24

    .end local v48    # "result":Z
    :pswitch_7d
    if-eqz p4, :cond_88

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x3

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_89

    :cond_88
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_89
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-virtual/range {v58 .. v59}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v58

    const/16 v59, 0x2

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    const/16 v60, 0x3

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    invoke-static/range {v57 .. v60}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_24

    :pswitch_7e
    if-eqz p4, :cond_8a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_8b

    :cond_8a
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_8b
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    invoke-static/range {v57 .. v57}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_24

    .end local v48    # "result":Z
    :pswitch_7f
    if-eqz p4, :cond_8c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-lt v0, v1, :cond_8c

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v57

    if-nez v57, :cond_8d

    :cond_8c
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_8d
    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v57 .. v58}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    :pswitch_80
    if-eqz p4, :cond_8e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x3

    move/from16 v0, v57

    move/from16 v1, v58

    if-lt v0, v1, :cond_8e

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v57

    if-nez v57, :cond_8f

    :cond_8e
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_8f
    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    const/16 v59, 0x2

    aget-object v59, p4, v59

    invoke-static/range {v57 .. v59}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    :pswitch_81
    if-eqz p4, :cond_90

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x3

    move/from16 v0, v57

    move/from16 v1, v58

    if-lt v0, v1, :cond_90

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v57

    if-nez v57, :cond_91

    :cond_90
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_91
    const/16 v57, 0x2

    aget-object v57, p4, v57

    if-nez v57, :cond_92

    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    const/16 v59, 0x0

    invoke-static/range {v57 .. v59}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_24

    :cond_92
    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v59

    const/16 v60, 0x2

    aget-object v60, p4, v60

    invoke-virtual/range {v59 .. v60}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v59

    invoke-static/range {v57 .. v59}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_24

    :pswitch_82
    const-string v57, "roaming_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .local v36, "lRoamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-eqz v36, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_a

    :cond_93
    :goto_25
    packed-switch v57, :pswitch_data_b

    const/16 v57, 0x0

    goto/16 :goto_0

    :sswitch_77
    const-string v58, "isRoamingSyncEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_93

    const/16 v57, 0x0

    goto :goto_25

    :sswitch_78
    const-string v58, "isRoamingPushEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_93

    const/16 v57, 0x1

    goto :goto_25

    :sswitch_79
    const-string v58, "isRoamingDataEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_93

    const/16 v57, 0x2

    goto :goto_25

    :sswitch_7a
    const-string v58, "isRoamingVoiceCallsEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_93

    const/16 v57, 0x3

    goto :goto_25

    :pswitch_83
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isRoamingSyncEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_26
    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v48    # "result":Z
    :pswitch_84
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isRoamingPushEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_26

    .end local v48    # "result":Z
    :pswitch_85
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isRoamingDataEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    .end local v48    # "result":Z
    :pswitch_86
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isRoamingVoiceCallsEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    .end local v36    # "lRoamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    .end local v48    # "result":Z
    :pswitch_87
    const-string v57, "location_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/enterprise/location/LocationPolicy;

    .local v33, "lLocationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    if-eqz v33, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_b

    :cond_94
    :goto_27
    packed-switch v57, :pswitch_data_c

    const/16 v57, 0x0

    goto/16 :goto_0

    :sswitch_7b
    const-string v58, "isLocationProviderBlocked"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_94

    const/16 v57, 0x0

    goto :goto_27

    :sswitch_7c
    const-string v58, "isLocationProviderBlockedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_94

    const/16 v57, 0x1

    goto :goto_27

    :sswitch_7d
    const-string v58, "isGPSStateChangeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_94

    const/16 v57, 0x2

    goto :goto_27

    :pswitch_88
    if-eqz p4, :cond_95

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_96

    :cond_95
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_96
    const/16 v57, 0x0

    aget-object v57, p4, v57

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isLocationProviderBlocked"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_28
    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v48    # "result":Z
    :pswitch_89
    if-eqz p4, :cond_97

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_98

    :cond_97
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_98
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_99

    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v48

    .restart local v48    # "result":Z
    :goto_29
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isLocationProviderBlockedAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_28

    .end local v48    # "result":Z
    :cond_99
    const/16 v57, 0x0

    aget-object v57, p4, v57

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_29

    .end local v48    # "result":Z
    :pswitch_8a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isGPSStateChangeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .end local v33    # "lLocationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    .end local v48    # "result":Z
    :pswitch_8b
    const-string v57, "auditlog"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .local v27, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v27, :cond_0

    if-eqz p3, :cond_0

    const-string v57, "isAuditLogEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v13

    .local v13, "bIsAuditLogEnabled":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isAuditLogEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v13    # "bIsAuditLogEnabled":Z
    .end local v27    # "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    :pswitch_8c
    const-string v57, "smartcard_browser_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    .local v38, "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    if-eqz v38, :cond_0

    if-eqz p3, :cond_9a

    const-string v57, "isAuthenticationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_9a

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v14

    .local v14, "bIsAuthenticationEnabled":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isAuthenticationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v14    # "bIsAuthenticationEnabled":Z
    :cond_9a
    if-eqz p3, :cond_0

    const-string v57, "getClientCertificateAlias"

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_0

    if-eqz p4, :cond_9b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_9c

    :cond_9b
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_9c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    move-object/from16 v0, v38

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v49

    .local v49, "sGetClientCertificateAlias":Ljava/lang/String;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getClientCertificateAlias"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v49, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v38    # "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v49    # "sGetClientCertificateAlias":Ljava/lang/String;
    :pswitch_8d
    const-string v57, "security_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/security/SecurityPolicy;

    .local v37, "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    if-eqz v37, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    packed-switch v58, :pswitch_data_d

    :cond_9d
    :goto_2a
    packed-switch v57, :pswitch_data_e

    const/16 v57, 0x0

    goto/16 :goto_0

    :pswitch_8e
    const-string v58, "isDodBannerVisible"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_9d

    const/16 v57, 0x0

    goto :goto_2a

    :pswitch_8f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Landroid/app/enterprise/ContextInfo;)Z

    move-result v21

    .local v21, "dodbanner":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isDodBannerVisible"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v21    # "dodbanner":Z
    .end local v37    # "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    :pswitch_90
    const-string v57, "firewall_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .local v32, "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    if-eqz v32, :cond_0

    if-eqz p3, :cond_0

    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_c

    :cond_9e
    :goto_2b
    packed-switch v57, :pswitch_data_f

    const/16 v57, 0x0

    goto/16 :goto_0

    :sswitch_7e
    const-string v58, "getURLFilterEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_9e

    const/16 v57, 0x0

    goto :goto_2b

    :sswitch_7f
    const-string v58, "getURLFilterList"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_9e

    const/16 v57, 0x1

    goto :goto_2b

    :sswitch_80
    const-string v58, "getURLFilterReportEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_9e

    const/16 v57, 0x2

    goto :goto_2b

    :sswitch_81
    const-string v58, "isUrlBlocked"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_9e

    const/16 v57, 0x3

    goto :goto_2b

    :sswitch_82
    const-string v58, "isGlobalProxyAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_9e

    const/16 v57, 0x4

    goto :goto_2b

    :pswitch_91
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    const/16 v59, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v11

    .local v11, "bGetURLFilterEnabled":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getURLFilterEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v11    # "bGetURLFilterEnabled":Z
    :cond_9f
    :goto_2c
    move-object/from16 v57, v43

    goto/16 :goto_0

    :pswitch_92
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    const/16 v59, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterList(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v54

    .local v54, "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getURLFilterList"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v54, :cond_9f

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->isEmpty()Z

    move-result v57

    if-nez v57, :cond_9f

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_9f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .local v22, "filterList":Ljava/lang/String;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v22, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d

    .end local v22    # "filterList":Ljava/lang/String;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v54    # "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_93
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    const/16 v59, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .local v18, "bUrlFilterReportEnable":Ljava/lang/Boolean;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getURLFilterReportEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v18, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c

    .end local v18    # "bUrlFilterReportEnable":Ljava/lang/Boolean;
    :pswitch_94
    if-eqz p4, :cond_a0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_a1

    :cond_a0
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_a1
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .local v17, "bUrlBlocked":Ljava/lang/Boolean;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUrlBlocked"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v17, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c

    .end local v17    # "bUrlBlocked":Ljava/lang/Boolean;
    :pswitch_95
    if-eqz p4, :cond_a2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_a3

    :cond_a2
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_a3
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isGlobalProxyAllowed()Z

    move-result v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .local v12, "bGlobalProxy":Ljava/lang/Boolean;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isGlobalProxyAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v12, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c

    .end local v12    # "bGlobalProxy":Ljava/lang/Boolean;
    .end local v32    # "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    :pswitch_96
    const-string v57, "apppermission_control_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .local v26, "lAppPermissionControlPol":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    if-eqz v26, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_a4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_a5

    :cond_a4
    const/16 v57, 0x0

    goto/16 :goto_0

    :cond_a5
    const-string v57, "getPermissionBlockedList"

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v57, 0x1

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v5, Ljava/util/List;

    .restart local v5    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v26

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionBlockedList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v45

    .local v45, "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getPermissionBlockedList"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v45, :cond_a6

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v57

    if-nez v57, :cond_a6

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_a6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .local v44, "perm":Ljava/lang/String;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v44, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2e

    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v44    # "perm":Ljava/lang/String;
    :cond_a6
    move-object/from16 v57, v43

    goto/16 :goto_0

    .end local v5    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "lAppPermissionControlPol":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    .end local v45    # "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_97
    const-string v57, "date_time_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .local v31, "lDateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    if-eqz v31, :cond_0

    if-eqz p3, :cond_0

    const-string v57, "isDateTimeChangeEnalbed"

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_0

    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v31

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isDateTimeChangeEnalbed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_8b
        :pswitch_6e
        :pswitch_77
        :pswitch_67
        :pswitch_43
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_90
        :pswitch_0
        :pswitch_87
        :pswitch_50
        :pswitch_5d
        :pswitch_1
        :pswitch_14
        :pswitch_26
        :pswitch_35
        :pswitch_82
        :pswitch_8d
        :pswitch_0
        :pswitch_8c
        :pswitch_96
        :pswitch_97
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x5d9fe8ab -> :sswitch_8
        -0x5c7edb84 -> :sswitch_b
        -0x4bfd3947 -> :sswitch_c
        -0x38cefab6 -> :sswitch_a
        -0x36978d55 -> :sswitch_4
        -0x34742384 -> :sswitch_7
        -0x2d47f4e1 -> :sswitch_5
        -0x2b582cae -> :sswitch_9
        0x3e05fd -> :sswitch_6
        0x7ed85f2 -> :sswitch_d
        0x2ea4b8a5 -> :sswitch_f
        0x3593cbd4 -> :sswitch_3
        0x3d337bfd -> :sswitch_1
        0x4ef9c1f9 -> :sswitch_10
        0x64034c9f -> :sswitch_11
        0x71560275 -> :sswitch_e
        0x77163a49 -> :sswitch_2
        0x7e3d73d9 -> :sswitch_0
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
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x74a4d725 -> :sswitch_20
        -0x71206782 -> :sswitch_22
        -0x6c0db8af -> :sswitch_15
        -0x694bd3d6 -> :sswitch_1c
        -0x553c4d53 -> :sswitch_1b
        -0x4d525a40 -> :sswitch_19
        -0x4406e5f2 -> :sswitch_1e
        -0x39e13355 -> :sswitch_12
        -0x2de531be -> :sswitch_1a
        -0x1ab59b72 -> :sswitch_13
        -0xa2586fa -> :sswitch_21
        0x5ad79eb -> :sswitch_17
        0x5be9d3d -> :sswitch_16
        0x26581d58 -> :sswitch_1d
        0x36e6d3e0 -> :sswitch_1f
        0x4bd14915 -> :sswitch_14
        0x6c3b6517 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
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
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x5eef4930 -> :sswitch_28
        -0x55af2a6c -> :sswitch_26
        -0x42b9a7be -> :sswitch_2e
        -0x3d0295e2 -> :sswitch_25
        -0x331a660a -> :sswitch_2a
        -0x1ad99baa -> :sswitch_2c
        -0x10b8615d -> :sswitch_24
        -0x53b1dd2 -> :sswitch_27
        0x3e90c48d -> :sswitch_30
        0x405a90ec -> :sswitch_2b
        0x53ef861d -> :sswitch_2d
        0x5bb25232 -> :sswitch_23
        0x6bef28f1 -> :sswitch_29
        0x7c45f31f -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x562f9482 -> :sswitch_33
        -0x4e3d6d40 -> :sswitch_39
        -0x460411da -> :sswitch_37
        -0x39b5211e -> :sswitch_3d
        -0x37226d22 -> :sswitch_38
        -0x3581de92 -> :sswitch_35
        -0x30c133a0 -> :sswitch_3a
        -0x28516cec -> :sswitch_3c
        -0x4e1daa7 -> :sswitch_36
        0x12bbc810 -> :sswitch_3b
        0x5f1771f4 -> :sswitch_32
        0x730fdeab -> :sswitch_34
        0x75020c0f -> :sswitch_31
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x7f682541 -> :sswitch_46
        -0x6f783fb9 -> :sswitch_47
        -0x51cc33cc -> :sswitch_45
        -0x4d8cc16d -> :sswitch_40
        -0x3c6ca389 -> :sswitch_42
        -0x3bc628df -> :sswitch_41
        -0x3a9ab315 -> :sswitch_3f
        -0x374aace4 -> :sswitch_43
        -0x1c091992 -> :sswitch_49
        0x19ef78a8 -> :sswitch_3e
        0x6305badd -> :sswitch_48
        0x692685a1 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x7f91d479 -> :sswitch_4e
        -0x7c284bba -> :sswitch_4c
        -0x6f335556 -> :sswitch_4d
        -0x4cb7d87b -> :sswitch_54
        -0x2d0cb7a5 -> :sswitch_4b
        0xdc5fecf -> :sswitch_50
        0x33b94bbf -> :sswitch_4a
        0x367ce700 -> :sswitch_4f
        0x465482c9 -> :sswitch_52
        0x552e154b -> :sswitch_51
        0x69712d6f -> :sswitch_53
        0x6ab4c78e -> :sswitch_55
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_51
        :pswitch_52
        :pswitch_53
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

    :sswitch_data_6
    .sparse-switch
        -0x4e857510 -> :sswitch_5d
        -0x1c894ef7 -> :sswitch_58
        -0xe2e3396 -> :sswitch_5a
        -0x9b47ac1 -> :sswitch_5e
        0x17f43207 -> :sswitch_5c
        0x48803b14 -> :sswitch_57
        0x60a98cb9 -> :sswitch_59
        0x65054427 -> :sswitch_5b
        0x75f9239b -> :sswitch_56
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x74ddc0dd -> :sswitch_64
        -0x67f870ad -> :sswitch_63
        -0x499a7018 -> :sswitch_60
        -0x364e80b3 -> :sswitch_62
        0x9515810 -> :sswitch_5f
        0x78a801b7 -> :sswitch_61
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x625ba203 -> :sswitch_65
        -0x534f8be2 -> :sswitch_66
        -0x5319be4a -> :sswitch_6b
        -0x4ebf90df -> :sswitch_6c
        -0x11927f68 -> :sswitch_6a
        0x52d2774 -> :sswitch_69
        0x3962d1ce -> :sswitch_68
        0x6422cbe9 -> :sswitch_67
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        -0x74fa9afd -> :sswitch_6d
        -0x5319be4a -> :sswitch_74
        -0x4ebf90df -> :sswitch_6e
        -0x3ce44687 -> :sswitch_70
        -0x3a6a65ad -> :sswitch_6f
        -0x103e8c3d -> :sswitch_72
        0x292f3f94 -> :sswitch_73
        0x2eef3494 -> :sswitch_71
        0x65788769 -> :sswitch_76
        0x7d586159 -> :sswitch_75
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        -0x3edf31d1 -> :sswitch_7a
        -0x15a386e9 -> :sswitch_77
        -0xc145ad8 -> :sswitch_79
        0x4744a7b8 -> :sswitch_78
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        -0x66608807 -> :sswitch_7c
        -0x40efadf9 -> :sswitch_7d
        0x63cbc5bc -> :sswitch_7b
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_88
        :pswitch_89
        :pswitch_8a
    .end packed-switch

    :pswitch_data_d
    .packed-switch -0x6e1bb3c9
        :pswitch_8e
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_8f
    .end packed-switch

    :sswitch_data_c
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_7f
        -0x3ecb9a99 -> :sswitch_82
        0x3ba3e2f0 -> :sswitch_7e
        0x62658647 -> :sswitch_81
        0x6f38e3dc -> :sswitch_80
    .end sparse-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
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
