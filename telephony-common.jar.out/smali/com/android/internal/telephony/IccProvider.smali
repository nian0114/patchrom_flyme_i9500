.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final ADN:I = 0x1

.field protected static final ADN_ALL:I = 0x7

.field private static final ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final ADN_EMAILS:I = 0x10

.field protected static final ADN_EMAILS_SUB:I = 0x11

.field protected static final ADN_EXPANSION:I = 0x14

.field protected static final ADN_EXPANSION_SUB:I = 0x15

.field protected static final ADN_FROM_CONTACTS:I = 0xa

.field protected static final ADN_FROM_CONTACTS_SUB:I = 0xb

.field protected static final ADN_INIT:I = 0x16

.field protected static final ADN_INIT_SUB:I = 0x17

.field private static final ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final ADN_SUB:I = 0x2

.field private static final DBG:Z

.field private static final EMAIL_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final FDN:I = 0x3

.field protected static final FDN_FROM_CONTACTS:I = 0xc

.field protected static final FDN_FROM_CONTACTS_SUB:I = 0xd

.field protected static final FDN_SUB:I = 0x4

.field protected static final ICC_CAPA_INFO:I = 0x12

.field protected static final ICC_CAPA_INFO_SUB:I = 0x13

.field protected static final MSISDN:I = 0x8

.field protected static final MSISDN_FROM_CONTACTS:I = 0xe

.field protected static final MSISDN_FROM_CONTACTS_SUB:I = 0xf

.field protected static final MSISDN_SUB:I = 0x9

.field protected static final SDN:I = 0x5

.field protected static final SDN_SUB:I = 0x6

.field protected static final STR_ANRA_NUMBER:Ljava/lang/String; = "anrA_number"

.field protected static final STR_ANRB_NUMBER:Ljava/lang/String; = "anrB_number"

.field protected static final STR_ANRC_NUMBER:Ljava/lang/String; = "anrC_number"

.field protected static final STR_ANR_NUMBER:Ljava/lang/String; = "anr_number"

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final STR_INDEX:Ljava/lang/String; = "adn_index"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v0, v2

    const-string v3, "number"

    aput-object v3, v0, v1

    const-string v3, "anr_number"

    aput-object v3, v0, v5

    const-string v3, "anrA_number"

    aput-object v3, v0, v6

    const-string v3, "anrB_number"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "anrC_number"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "emails"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "adn_index"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "_id"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "emails"

    aput-object v3, v0, v2

    const-string v3, "adn_index"

    aput-object v3, v0, v1

    const-string v3, "_id"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "name_MaxCount"

    aput-object v3, v0, v2

    const-string v3, "name_UsedCount"

    aput-object v3, v0, v1

    const-string v3, "name_MaxLength"

    aput-object v3, v0, v5

    const-string v3, "number_MaxCount"

    aput-object v3, v0, v6

    const-string v3, "number_UsedCount"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "number_MaxLength"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "email_MaxCount"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "email_UsedCount"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "email_MaxLength"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "maxCount"

    aput-object v3, v0, v2

    const-string v2, "usedCount"

    aput-object v2, v0, v1

    const-string v2, "firstIndex"

    aput-object v2, v0, v5

    const-string v2, "name_MaxLength"

    aput-object v2, v0, v6

    const-string v2, "number_MaxLength"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "icc"

    const-string v3, "adn"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/subId/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/subId/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn/subId/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "msisdn"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "msisdn/subId/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/from_contacts"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/from_contacts/subId/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/from_contacts"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/from_contacts/subId/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "msisdn/from_contacts"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "msisdn/from_contacts/subId/#"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/emails"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/emails/subId/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "capacity"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "capacity/subId/#"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/expansion"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/expansion/subId/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/init"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/init/subId/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addExpansionIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 10
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "anrNumber"    # Ljava/lang/String;
    .param p5, "anrANumber"    # Ljava/lang/String;
    .param p6, "anrBNumber"    # Ljava/lang/String;
    .param p7, "anrCNumber"    # Ljava/lang/String;
    .param p8, "email"    # Ljava/lang/String;
    .param p9, "pin2"    # Ljava/lang/String;
    .param p10, "subId"    # J

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addExpansionIccRecordToEfByIndex: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", anrNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", anrANumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", anrBNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", anrCNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", email="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p10

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    const v8, 0xffff

    .local v8, "index":I
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v7, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v7, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iput-object p2, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object p3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iput-object p4, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnr:Ljava/lang/String;

    iput-object p5, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrA:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrB:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrC:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p8, v4, v5

    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_1

    move-wide/from16 v4, p10

    move v6, p1

    move-object/from16 v9, p9

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingARnSubId(JILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addExpansionIccRecordToEfByIndex: index =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    return v8

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 14
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # J

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addIccRecordToEf: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", emails="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v12, 0x0

    .local v12, "success":Z
    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_1

    const-string v7, ""

    const-string v8, ""

    move-wide/from16 v4, p6

    move v6, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addIccRecordToEf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    return v12

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 12
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # J

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addIccRecordToEfByIndex: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", email="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    const v10, 0xffff

    .local v10, "index":I
    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_1

    move-wide/from16 v4, p6

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingSubId(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addIccRecordToEfByIndex: index =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    return v10

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 14
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # J

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteIccRecordFromEf: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", emails="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pin2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v12, 0x0

    .local v12, "success":Z
    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_1

    const-string v9, ""

    const-string v10, ""

    move-wide/from16 v4, p6

    move v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v11, p5

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteIccRecordFromEf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    return v12

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;J)I
    .locals 10
    .param p1, "efType"    # I
    .param p2, "index"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "subId"    # J

    .prologue
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-wide v2, p4

    move v4, p1

    move v8, p2

    move-object v9, p3

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingSubId(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEfByIndex: index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    return p2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private getAdnLikesInfo(I)Landroid/database/MatrixCursor;
    .locals 11
    .param p1, "efType"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x5

    new-array v7, v9, [I

    .local v7, "recordInfo":[I
    :try_start_0
    const-string v9, "simphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .local v2, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    aget v4, v7, v9

    .local v4, "maxCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v8, v7, v10

    .local v8, "usedCount":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    aget v1, v7, v9

    .local v1, "firstIndex":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x3

    aget v5, v7, v9

    .local v5, "nameMax":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x4

    aget v6, v7, v9

    .local v6, "numberMax":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .end local v1    # "firstIndex":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "maxCount":I
    .end local v5    # "nameMax":I
    .end local v6    # "numberMax":I
    .end local v8    # "usedCount":I
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_0

    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private getAdnLikesInfoForSubscriber(JI)Landroid/database/MatrixCursor;
    .locals 11
    .param p1, "subId"    # J
    .param p3, "efType"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x5

    new-array v7, v9, [I

    .local v7, "recordInfo":[I
    :try_start_0
    const-string v9, "simphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .local v2, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfoForSubscriber(JI)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    aget v4, v7, v9

    .local v4, "maxCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v8, v7, v10

    .local v8, "usedCount":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    aget v1, v7, v9

    .local v1, "firstIndex":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x3

    aget v5, v7, v9

    .local v5, "nameMax":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x4

    aget v6, v7, v9

    .local v6, "numberMax":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .end local v1    # "firstIndex":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "maxCount":I
    .end local v5    # "nameMax":I
    .end local v6    # "numberMax":I
    .end local v8    # "usedCount":I
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_0

    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private getRequestSubId(Landroid/net/Uri;)J
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestSubId url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getUSIMPBCapa()Landroid/database/MatrixCursor;
    .locals 17

    .prologue
    sget-boolean v15, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v15, :cond_0

    const-string v15, "getUSIMPBCapa"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v14, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v14}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .local v14, "usimPhonebookCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_start_0
    const-string v15, "simphonebook"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v6

    .local v6, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .end local v6    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v9

    .local v9, "nameMaxCount":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v10

    .local v10, "nameUsedCount":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    .local v8, "nameLength":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x2

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v12

    .local v12, "numberMaxCount":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x2

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v13

    .local v13, "numberUsedCount":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x2

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v11

    .local v11, "numberLength":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x4

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .local v3, "emailMaxCount":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x4

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .local v4, "emailUsedCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x4

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    .local v2, "emailLength":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v15, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v1, v15, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v1, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v1, v7}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v2    # "emailLength":I
    .end local v3    # "emailMaxCount":I
    .end local v4    # "emailUsedCount":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "nameLength":I
    .end local v9    # "nameMaxCount":I
    .end local v10    # "nameUsedCount":I
    .end local v11    # "numberLength":I
    .end local v12    # "numberMaxCount":I
    .end local v13    # "numberUsedCount":I
    :goto_1
    return-object v1

    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/lang/SecurityException;
    sget-boolean v15, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v15, :cond_1

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "ex":Ljava/lang/SecurityException;
    :cond_2
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v15, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v15

    goto/16 :goto_0
.end method

.method private getUsimPBCapaInfoForSubscriber(J)Landroid/database/MatrixCursor;
    .locals 19
    .param p1, "subId"    # J

    .prologue
    sget-boolean v16, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v16, :cond_0

    const-string v16, "getUSIMPBCapa"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v15, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v15}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .local v15, "usimPhonebookCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_start_0
    const-string v16, "simphonebook"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v7

    .local v7, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v7, :cond_1

    move-wide/from16 v0, p1

    invoke-interface {v7, v0, v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfoForSubscriber(J)Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .end local v7    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v15, :cond_2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v10

    .local v10, "nameMaxCount":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x1

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v11

    .local v11, "nameUsedCount":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x1

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v9

    .local v9, "nameLength":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x2

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v13

    .local v13, "numberMaxCount":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x2

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v14

    .local v14, "numberUsedCount":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x2

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v12

    .local v12, "numberLength":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x4

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .local v4, "emailMaxCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x4

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    .local v5, "emailUsedCount":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x4

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .local v3, "emailLength":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v16, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v2, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v2, v8}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "emailLength":I
    .end local v4    # "emailMaxCount":I
    .end local v5    # "emailUsedCount":I
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "nameLength":I
    .end local v10    # "nameMaxCount":I
    .end local v11    # "nameUsedCount":I
    .end local v12    # "numberLength":I
    .end local v13    # "numberMaxCount":I
    .end local v14    # "numberUsedCount":I
    :goto_1
    return-object v2

    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/SecurityException;
    sget-boolean v16, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v16, :cond_1

    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "ex":Ljava/lang/SecurityException;
    :cond_2
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v16, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v16

    goto/16 :goto_0
.end method

.method private loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 10
    .param p1, "efType"    # I

    .prologue
    const/4 v9, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v5

    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    new-array v1, v9, [Landroid/database/Cursor;

    .local v1, "result":[Landroid/database/Cursor;
    :cond_1
    new-instance v6, Landroid/database/MergeCursor;

    invoke-direct {v6, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v6

    .end local v1    # "result":[Landroid/database/Cursor;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "subIdCount":I
    new-array v1, v4, [Landroid/database/Cursor;

    .restart local v1    # "result":[Landroid/database/Cursor;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubInfoRecord;

    iget-wide v2, v6, Landroid/telephony/SubInfoRecord;->subId:J

    .local v2, "subId":J
    invoke-direct {p0, p1, v9, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v6

    aput-object v6, v1, v0

    const-string v6, "IccProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADN Records loaded for Subscription ::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadEmailRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 10
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x3

    new-array v2, v8, [Ljava/lang/Object;

    .local v2, "contact":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    .local v4, "emails":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v0

    .local v0, "adnIndex":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "index":Ljava/lang/String;
    if-eqz v4, :cond_1

    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v1, v5

    .local v3, "email":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    aput-object v3, v2, v8

    const/4 v8, 0x1

    aput-object v6, v2, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "adnIndex":I
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "contact":[Ljava/lang/Object;
    .end local v3    # "email":Ljava/lang/String;
    .end local v4    # "emails":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "index":Ljava/lang/String;
    .end local v7    # "len$":I
    :cond_1
    return-void
.end method

.method private loadFromEf(IZJ)Landroid/database/MatrixCursor;
    .locals 9
    .param p1, "efType"    # I
    .param p2, "isEmailOnly"    # Z
    .param p3, "subId"    # J

    .prologue
    sget-boolean v6, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subscription="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .local v5, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_1

    invoke-interface {v5, p3, p4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfForSubscriber(JI)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v5    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    sget-boolean v6, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    if-nez p2, :cond_3

    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v2, "cursor":Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/SecurityException;
    sget-boolean v6, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "ex":Ljava/lang/SecurityException;
    .restart local v0    # "N":I
    :cond_3
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .restart local v2    # "cursor":Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v0, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/internal/telephony/IccProvider;->loadEmailRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i":I
    :cond_4
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_5
    return-object v2

    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private loadFromEfInit(IJ)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "efType"    # I
    .param p2, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    sget-boolean v5, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromEfInit: efType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .local v4, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_1

    invoke-interface {v4, p2, p3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfInitForSubscriber(JI)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v4    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .local v2, "cursor":Landroid/database/MatrixCursor;
    sget-boolean v5, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adnRecords.size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    :cond_3
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_4
    return-object v2

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 19
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_a

    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/Object;

    .local v9, "contact":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    .local v7, "alphaTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v16

    .local v16, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    .local v5, "ANRNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object v2

    .local v2, "ANRANumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object v3

    .local v3, "ANRBNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object v4

    .local v4, "ANRCNumber":Ljava/lang/String;
    sget-boolean v17, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v17, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "loadRecord: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x0

    aput-object v7, v9, v17

    :goto_0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    const/16 v17, 0x1

    aput-object v16, v9, v17

    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    const/16 v17, 0x2

    aput-object v5, v9, v17

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    const/16 v17, 0x3

    aput-object v2, v9, v17

    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x4

    aput-object v3, v9, v17

    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v17, 0x5

    aput-object v4, v9, v17

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v12

    .local v12, "emails":[Ljava/lang/String;
    if-eqz v12, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .local v11, "emailString":Ljava/lang/StringBuilder;
    move-object v8, v12

    .local v8, "arr$":[Ljava/lang/String;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_6
    if-ge v13, v15, :cond_8

    aget-object v10, v8, v13

    .local v10, "email":Ljava/lang/String;
    sget-boolean v17, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v17, :cond_1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Adding email:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "email":Ljava/lang/String;
    .end local v11    # "emailString":Ljava/lang/StringBuilder;
    .end local v12    # "emails":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_0

    :cond_3
    const/16 v17, 0x1

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_1

    :cond_4
    const/16 v17, 0x2

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_2

    :cond_5
    const/16 v17, 0x3

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_3

    :cond_6
    const/16 v17, 0x4

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_4

    :cond_7
    const/16 v17, 0x5

    const/16 v18, 0x0

    aput-object v18, v9, v17

    goto :goto_5

    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v11    # "emailString":Ljava/lang/StringBuilder;
    .restart local v12    # "emails":[Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v15    # "len$":I
    :cond_8
    const/16 v17, 0x6

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v11    # "emailString":Ljava/lang/StringBuilder;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v6

    .local v6, "adnIndex":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "index":Ljava/lang/String;
    const/16 v17, 0x7

    aput-object v14, v9, v17

    const/16 v17, 0x8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v9, v17

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v2    # "ANRANumber":Ljava/lang/String;
    .end local v3    # "ANRBNumber":Ljava/lang/String;
    .end local v4    # "ANRCNumber":Ljava/lang/String;
    .end local v5    # "ANRNumber":Ljava/lang/String;
    .end local v6    # "adnIndex":I
    .end local v7    # "alphaTag":Ljava/lang/String;
    .end local v9    # "contact":[Ljava/lang/Object;
    .end local v12    # "emails":[Ljava/lang/String;
    .end local v14    # "index":Ljava/lang/String;
    .end local v16    # "number":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "len":I
    if-nez v0, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "len of input String is 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .end local p1    # "inVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "inVal":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object p1, v1

    goto :goto_0
.end method

.method private updateExpansionIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newNumber"    # Ljava/lang/String;
    .param p4, "newAnrNumber"    # Ljava/lang/String;
    .param p5, "newAnrANumber"    # Ljava/lang/String;
    .param p6, "newAnrBNumber"    # Ljava/lang/String;
    .param p7, "newAnrCNumber"    # Ljava/lang/String;
    .param p8, "newEmail"    # Ljava/lang/String;
    .param p9, "index"    # I
    .param p10, "pin2"    # Ljava/lang/String;
    .param p11, "subId"    # J

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateExpansionIccRecordInEfByIndex: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newnumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newanrnumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newanrAnumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newanrBnumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newanrCnumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v7, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v7, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iput-object p2, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object p3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iput-object p4, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnr:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v0, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrA:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrB:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrC:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p8, v4, v5

    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-wide/from16 v4, p11

    move v6, p1

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingARnSubId(JILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p9

    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateExpansionIccRecordInEfByIndex: index =\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    return p9

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 13
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # J

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccRecordInEf: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldnumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newnumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v12, 0x0

    .local v12, "success":Z
    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_1

    move-wide/from16 v4, p7

    move v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccRecordInEf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    return v12

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)I
    .locals 13
    .param p1, "efType"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newNumber"    # Ljava/lang/String;
    .param p4, "newEmail"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # J

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newnumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_1

    move-wide/from16 v4, p7

    move v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingSubId(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p5

    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccRecordInEfByIndex: index =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    return p5

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .local v12, "index":I
    const/16 v16, 0x0

    .local v16, "isFromContacts":Z
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .local v18, "match":I
    packed-switch v18, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    const/16 v3, 0x6f3a

    .local v3, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v8

    .local v8, "subId":J
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    .local v4, "tag":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "number":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "emails":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "pin2":Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .local v23, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v19, v0

    .local v19, "n":I
    :cond_1
    :goto_1
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_b

    aget-object v21, v23, v19

    .local v21, "param":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parsing \'"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "\'"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_2
    const-string v2, "="

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .local v20, "pair":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v20, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .local v17, "key":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v20, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .local v24, "val":Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v2, v0

    const/4 v10, 0x2

    if-eq v2, v10, :cond_3

    const-string v2, "tag"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "="

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    :cond_3
    const-string v2, "tag"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "Change null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_4
    const-string v4, ""

    goto/16 :goto_1

    .end local v3    # "efType":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "emails":[Ljava/lang/String;
    .end local v7    # "pin2":Ljava/lang/String;
    .end local v8    # "subId":J
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "n":I
    .end local v20    # "pair":[Ljava/lang/String;
    .end local v21    # "param":Ljava/lang/String;
    .end local v23    # "tokens":[Ljava/lang/String;
    .end local v24    # "val":Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3a

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v8

    .restart local v8    # "subId":J
    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v8    # "subId":J
    :pswitch_3
    const/16 v3, 0x6f3b

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v8

    .restart local v8    # "subId":J
    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v8    # "subId":J
    :pswitch_4
    const/16 v3, 0x6f3b

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v8

    .restart local v8    # "subId":J
    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v8    # "subId":J
    :pswitch_5
    const/16 v3, 0x6f40

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v8

    .restart local v8    # "subId":J
    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v8    # "subId":J
    :pswitch_6
    const/16 v3, 0x6f40

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v8

    .restart local v8    # "subId":J
    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v8    # "subId":J
    :pswitch_7
    const/16 v3, 0x6f3a

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v8

    .restart local v8    # "subId":J
    const/16 v16, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v8    # "subId":J
    :pswitch_8
    const/16 v3, 0x6f3a

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v8

    .restart local v8    # "subId":J
    const/16 v16, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v8    # "subId":J
    :pswitch_9
    const/16 v3, 0x6f3b

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v8

    .restart local v8    # "subId":J
    const/16 v16, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v8    # "subId":J
    :pswitch_a
    const/16 v3, 0x6f3b

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v8

    .restart local v8    # "subId":J
    const/16 v16, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v8    # "subId":J
    :pswitch_b
    const/16 v3, 0x6f40

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v8

    .restart local v8    # "subId":J
    const/16 v16, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v8    # "subId":J
    :pswitch_c
    const/16 v3, 0x6f40

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v8

    .restart local v8    # "subId":J
    const/16 v16, 0x1

    goto/16 :goto_0

    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "emails":[Ljava/lang/String;
    .restart local v7    # "pin2":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v19    # "n":I
    .restart local v20    # "pair":[Ljava/lang/String;
    .restart local v21    # "param":Ljava/lang/String;
    .restart local v23    # "tokens":[Ljava/lang/String;
    .restart local v24    # "val":Ljava/lang/String;
    :cond_5
    const-string v2, "IccProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolve: bad whereClause parameter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string v2, "number"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "null"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "Change null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_7
    const-string v5, ""

    goto/16 :goto_1

    :cond_8
    const-string v2, "emails"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_9
    const-string v2, "pin2"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_a
    const-string v2, "adn_index"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v12, v10

    goto/16 :goto_1

    .end local v17    # "key":Ljava/lang/String;
    .end local v20    # "pair":[Ljava/lang/String;
    .end local v21    # "param":Ljava/lang/String;
    .end local v24    # "val":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x3

    if-ne v3, v2, :cond_c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    :goto_2
    return v2

    :cond_c
    if-gez v12, :cond_10

    if-nez v4, :cond_d

    const-string v4, ""

    :cond_d
    if-nez v5, :cond_e

    const-string v5, ""

    :cond_e
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v22

    .local v22, "success":Z
    if-nez v22, :cond_f

    const/4 v2, 0x0

    goto :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 v2, 0x1

    goto :goto_2

    .end local v22    # "success":Z
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v10, p0

    move v11, v3

    move-object v13, v7

    move-wide v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;J)I

    move-result v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 30
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v11, 0x0

    .local v11, "pin2":Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, "isFromContacts":Z
    const/16 v22, 0x0

    .local v22, "AdnExpansion":Z
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "insert"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v27

    .local v27, "match":I
    packed-switch v27, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot insert into URL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    const/16 v3, 0x6f3a

    .local v3, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v12

    .local v12, "subId":J
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "number":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "AnrNumber":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "AnrANumber":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "AnrBNumber":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "AnrCNumber":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "email":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    .local v24, "emails":[Ljava/lang/String;
    const-string v2, "AnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v2, "AnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    const-string v2, "AnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    const-string v2, "AnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "AnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_4
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    const-string v14, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v24, v2

    const/4 v2, 0x0

    aget-object v2, v24, v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    const-string v14, ""

    aput-object v14, v24, v2

    :cond_5
    if-nez v4, :cond_6

    const-string v4, ""

    :cond_6
    if-nez v5, :cond_7

    const-string v5, ""

    :cond_7
    if-nez v10, :cond_8

    const-string v10, ""

    :cond_8
    if-nez v6, :cond_9

    const-string v6, ""

    :cond_9
    if-nez v7, :cond_a

    const-string v7, ""

    :cond_a
    if-nez v8, :cond_b

    const-string v8, ""

    :cond_b
    if-nez v9, :cond_c

    const-string v9, ""

    :cond_c
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insert name : "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_d
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v23, "buf":Ljava/lang/StringBuilder;
    if-eqz v26, :cond_f

    if-eqz v22, :cond_e

    const-string v2, "Insert AdnExpansion"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/internal/telephony/IccProvider;->addExpansionIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v25

    .local v25, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "After InsertExpansion, index : "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :goto_1
    packed-switch v27, :pswitch_data_1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " insert ["

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "]"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v25    # "index":I
    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .local v28, "resultUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .end local v28    # "resultUri":Landroid/net/Uri;
    :goto_4
    return-object v28

    .end local v3    # "efType":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "AnrNumber":Ljava/lang/String;
    .end local v7    # "AnrANumber":Ljava/lang/String;
    .end local v8    # "AnrBNumber":Ljava/lang/String;
    .end local v9    # "AnrCNumber":Ljava/lang/String;
    .end local v10    # "email":Ljava/lang/String;
    .end local v12    # "subId":J
    .end local v23    # "buf":Ljava/lang/StringBuilder;
    .end local v24    # "emails":[Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3a

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v12

    .restart local v12    # "subId":J
    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_3
    const/16 v3, 0x6f3b

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v12

    .restart local v12    # "subId":J
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_4
    const/16 v3, 0x6f3b

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v12

    .restart local v12    # "subId":J
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_5
    const/16 v3, 0x6f40

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v12

    .restart local v12    # "subId":J
    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_6
    const/16 v3, 0x6f40

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v12

    .restart local v12    # "subId":J
    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_7
    const/16 v3, 0x6f3a

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v12

    .restart local v12    # "subId":J
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_8
    const/16 v3, 0x6f3a

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v12

    .restart local v12    # "subId":J
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_9
    const/16 v3, 0x6f3b

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v12

    .restart local v12    # "subId":J
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_a
    const/16 v3, 0x6f3b

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v12

    .restart local v12    # "subId":J
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_b
    const/16 v3, 0x6f40

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v12

    .restart local v12    # "subId":J
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_c
    const/16 v3, 0x6f40

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v12

    .restart local v12    # "subId":J
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_d
    const/16 v3, 0x6f3a

    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v12

    .restart local v12    # "subId":J
    const/16 v26, 0x1

    const/16 v22, 0x1

    goto/16 :goto_0

    .end local v3    # "efType":I
    .end local v12    # "subId":J
    :pswitch_e
    const/16 v3, 0x6f3a

    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v12

    .restart local v12    # "subId":J
    const/16 v26, 0x1

    const/16 v22, 0x1

    goto/16 :goto_0

    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "AnrNumber":Ljava/lang/String;
    .restart local v7    # "AnrANumber":Ljava/lang/String;
    .restart local v8    # "AnrBNumber":Ljava/lang/String;
    .restart local v9    # "AnrCNumber":Ljava/lang/String;
    .restart local v10    # "email":Ljava/lang/String;
    .restart local v23    # "buf":Ljava/lang/StringBuilder;
    .restart local v24    # "emails":[Ljava/lang/String;
    :cond_e
    const-string v2, "Insert Adn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v14, p0

    move v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-wide/from16 v20, v12

    invoke-direct/range {v14 .. v21}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v25

    .restart local v25    # "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "After InsertAdn, index : "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_f
    const-string v2, "insert :ADN_FROM_CONTACTS"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const-string v2, "adn/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .end local v25    # "index":I
    :cond_f
    const/16 v18, 0x0

    move-object/from16 v14, p0

    move v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v12

    invoke-direct/range {v14 .. v21}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v29

    .local v29, "success":Z
    if-nez v29, :cond_10

    const/16 v28, 0x0

    goto/16 :goto_4

    :cond_10
    packed-switch v27, :pswitch_data_2

    :goto_5
    :pswitch_10
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :pswitch_11
    const-string v2, "adn/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :pswitch_12
    const-string v2, "adn/subId/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :pswitch_13
    const-string v2, "fdn/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :pswitch_14
    const-string v2, "fdn/subId/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :pswitch_15
    const-string v2, "msisdn/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :pswitch_16
    const-string v2, "msisdn/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    sget-boolean v12, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v12, :cond_0

    const-string v12, "query"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v12, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_1
    :pswitch_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :pswitch_1
    const/16 v12, 0x6f3a

    const/4 v13, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v12

    :goto_0
    return-object v12

    :pswitch_2
    const/16 v12, 0x6f3a

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto :goto_0

    :pswitch_3
    const/16 v12, 0x6f3b

    const/4 v13, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto :goto_0

    :pswitch_4
    const/16 v12, 0x6f3b

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto :goto_0

    :pswitch_5
    const/16 v12, 0x6f49

    const/4 v13, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto :goto_0

    :pswitch_6
    const/16 v12, 0x6f49

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto :goto_0

    :pswitch_7
    const/16 v12, 0x6f3a

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/IccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_0

    :pswitch_8
    const/16 v12, 0x6f3a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEfInit(IJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto :goto_0

    :pswitch_9
    const/16 v12, 0x6f3a

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEfInit(IJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto :goto_0

    :pswitch_a
    const/16 v12, 0x6f40

    const/4 v13, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto :goto_0

    :pswitch_b
    const/16 v12, 0x6f40

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    :pswitch_c
    const/16 v12, 0x6f3a

    const/4 v13, 0x1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    :pswitch_d
    const/16 v12, 0x6f3a

    const/4 v13, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZJ)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    :pswitch_e
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_2
    const-string v12, "="

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "pair":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .local v6, "key":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .local v9, "value":Ljava/lang/String;
    const-string v12, "EF_TYPE"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "efType":I
    sparse-switch v5, :sswitch_data_0

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :sswitch_0
    const-string v4, "1"

    .local v4, "TWOG":Ljava/lang/String;
    const-string v3, "2"

    .local v3, "THREEG":Ljava/lang/String;
    const-string v12, "ril.ICC_TYPE"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "ADNTYPE":Ljava/lang/String;
    const-string v12, "1"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x6f3a

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    :cond_3
    const-string v12, "2"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getUSIMPBCapa()Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    .end local v2    # "ADNTYPE":Ljava/lang/String;
    .end local v3    # "THREEG":Ljava/lang/String;
    .end local v4    # "TWOG":Ljava/lang/String;
    :sswitch_1
    const/16 v12, 0x6f3b

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    :sswitch_2
    const/16 v12, 0x6f49

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    :sswitch_3
    const/16 v12, 0x6f40

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    .end local v5    # "efType":I
    :cond_4
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "pair":[Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_5
    :pswitch_f
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_6
    const-string v12, "="

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "pair":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "key":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "value":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v10

    .local v10, "subId":J
    const-string v12, "EF_TYPE"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "efType":I
    sparse-switch v5, :sswitch_data_1

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :sswitch_4
    const-string v4, "1"

    .restart local v4    # "TWOG":Ljava/lang/String;
    const-string v3, "2"

    .restart local v3    # "THREEG":Ljava/lang/String;
    invoke-static {v10, v11}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v8

    .local v8, "slotId":I
    const-string v12, "ril.ICC_TYPE"

    invoke-static {v12, v8}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "ADNTYPE":Ljava/lang/String;
    const-string v12, "1"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x6f3a

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(JI)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    :cond_7
    const-string v12, "2"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/telephony/IccProvider;->getUsimPBCapaInfoForSubscriber(J)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    .end local v2    # "ADNTYPE":Ljava/lang/String;
    .end local v3    # "THREEG":Ljava/lang/String;
    .end local v4    # "TWOG":Ljava/lang/String;
    .end local v8    # "slotId":I
    :sswitch_5
    const/16 v12, 0x6f3b

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(JI)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    :sswitch_6
    const/16 v12, 0x6f49

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(JI)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    :sswitch_7
    const/16 v12, 0x6f40

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(JI)Landroid/database/MatrixCursor;

    move-result-object v12

    goto/16 :goto_0

    .end local v5    # "efType":I
    :cond_8
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_1
        0x6f40 -> :sswitch_3
        0x6f49 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x6f3a -> :sswitch_4
        0x6f3b -> :sswitch_5
        0x6f40 -> :sswitch_7
        0x6f49 -> :sswitch_6
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 30
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .local v13, "pin2":Ljava/lang/String;
    const/4 v12, -0x1

    .local v12, "index":I
    const/16 v26, 0x0

    .local v26, "isFromContacts":Z
    const/4 v2, 0x0

    .local v2, "AdnExpansion":Z
    sget-boolean v3, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "update"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v27

    .local v27, "match":I
    packed-switch v27, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cannot insert into URL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    const/16 v4, 0x6f3a

    .local v4, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    .local v14, "subId":J
    :goto_0
    const-string v3, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "tag":Ljava/lang/String;
    const-string v3, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "number":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "emails":[Ljava/lang/String;
    const-string v3, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "newTag":Ljava/lang/String;
    const-string v3, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "newNumber":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "newAnrNumber":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "newAnrANumber":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "newAnrBNumber":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "newAnrCNumber":Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, "newEmails":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "email":Ljava/lang/String;
    const-string v3, "newAnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "newAnrNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1
    const-string v3, "newAnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "newAnrANumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    const-string v3, "newAnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "newAnrBNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_3
    const-string v3, "newAnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "newAnrCNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    const-string v3, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_5
    if-nez v11, :cond_6

    const-string v11, ""

    :cond_6
    if-nez v19, :cond_7

    const-string v19, ""

    :cond_7
    if-nez v20, :cond_8

    const-string v20, ""

    :cond_8
    if-nez v5, :cond_9

    const-string v5, ""

    :cond_9
    if-nez v6, :cond_a

    const-string v6, ""

    :cond_a
    if-nez v7, :cond_b

    const-string v7, ""

    :cond_b
    if-nez v8, :cond_c

    const-string v8, ""

    :cond_c
    if-nez v9, :cond_d

    const-string v9, ""

    :cond_d
    if-nez v10, :cond_e

    const-string v10, ""

    :cond_e
    const-string v3, "adn_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "adn_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_f
    if-eqz v26, :cond_11

    const-string v3, "isFromContacts"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_10

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/android/internal/telephony/IccProvider;->updateExpansionIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)I

    move-result v12

    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "number":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v3, v12

    :goto_2
    return v3

    .end local v4    # "efType":I
    .end local v5    # "newTag":Ljava/lang/String;
    .end local v6    # "newNumber":Ljava/lang/String;
    .end local v7    # "newAnrNumber":Ljava/lang/String;
    .end local v8    # "newAnrANumber":Ljava/lang/String;
    .end local v9    # "newAnrBNumber":Ljava/lang/String;
    .end local v10    # "newAnrCNumber":Ljava/lang/String;
    .end local v11    # "email":Ljava/lang/String;
    .end local v14    # "subId":J
    .end local v16    # "emails":[Ljava/lang/String;
    .end local v28    # "newEmails":[Ljava/lang/String;
    :pswitch_2
    const/16 v4, 0x6f3a

    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    .restart local v14    # "subId":J
    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_3
    const/16 v4, 0x6f3b

    .restart local v4    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    .restart local v14    # "subId":J
    const-string v3, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_4
    const/16 v4, 0x6f3b

    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    .restart local v14    # "subId":J
    const-string v3, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_5
    const/16 v4, 0x6f40

    .restart local v4    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    .restart local v14    # "subId":J
    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_6
    const/16 v4, 0x6f40

    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    .restart local v14    # "subId":J
    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_7
    const/16 v4, 0x6f3a

    .restart local v4    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    .restart local v14    # "subId":J
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_8
    const/16 v4, 0x6f3a

    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    .restart local v14    # "subId":J
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_9
    const-string v3, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v4, 0x6f3b

    .restart local v4    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    .restart local v14    # "subId":J
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_a
    const-string v3, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v4, 0x6f3b

    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    .restart local v14    # "subId":J
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_b
    const/16 v4, 0x6f40

    .restart local v4    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    .restart local v14    # "subId":J
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_c
    const/16 v4, 0x6f40

    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    .restart local v14    # "subId":J
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_d
    const/16 v4, 0x6f3a

    .restart local v4    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v14

    .restart local v14    # "subId":J
    const/16 v26, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "efType":I
    .end local v14    # "subId":J
    :pswitch_e
    const/16 v4, 0x6f3a

    .restart local v4    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)J

    move-result-wide v14

    .restart local v14    # "subId":J
    const/16 v26, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    .restart local v5    # "newTag":Ljava/lang/String;
    .restart local v6    # "newNumber":Ljava/lang/String;
    .restart local v7    # "newAnrNumber":Ljava/lang/String;
    .restart local v8    # "newAnrANumber":Ljava/lang/String;
    .restart local v9    # "newAnrBNumber":Ljava/lang/String;
    .restart local v10    # "newAnrCNumber":Ljava/lang/String;
    .restart local v11    # "email":Ljava/lang/String;
    .restart local v16    # "emails":[Ljava/lang/String;
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v20    # "number":Ljava/lang/String;
    .restart local v28    # "newEmails":[Ljava/lang/String;
    :cond_10
    move-object/from16 v17, p0

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v11

    move/from16 v22, v12

    move-object/from16 v23, v13

    move-wide/from16 v24, v14

    invoke-direct/range {v17 .. v25}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)I

    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "number":Ljava/lang/String;
    move-result v12

    goto/16 :goto_1

    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v20    # "number":Ljava/lang/String;
    :cond_11
    const-string v3, "Update Adn"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v17, p0

    move/from16 v18, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v13

    move-wide/from16 v24, v14

    invoke-direct/range {v17 .. v25}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v29

    .local v29, "success":Z
    if-nez v29, :cond_12

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 v3, 0x1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
