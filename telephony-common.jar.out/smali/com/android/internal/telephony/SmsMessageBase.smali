.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;,
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    }
.end annotation


# static fields
.field private static final DELIMITER_ETX:I = 0x3

.field private static final DELIMITER_GS:I = 0x1d

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field private static final connectText:[C

.field private static final dataText:[C

.field private static final lguText:[C

.field private static final pagingText:[C

.field private static final thirdPartyText:[C

.field private static final voiceMailText:[C

.field private static final webText:[C


# instance fields
.field protected bearerData:[B

.field protected callbackNumber:Ljava/lang/String;

.field protected destinationAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected linkUrl:Ljava/lang/String;

.field protected mBodyOffset:I

.field protected mEmailBody:Ljava/lang/String;

.field protected mEmailFrom:Ljava/lang/String;

.field protected mIndexOnIcc:I

.field protected mIsEmail:Z

.field protected mIsMwi:Z

.field protected mIsfourBytesUnicode:Z

.field protected mMessageBody:Ljava/lang/String;

.field public mMessageRef:I

.field protected mMti:I

.field protected mMwiDontStore:Z

.field protected mMwiSense:Z

.field protected mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected mPdu:[B

.field protected mPseudoSubject:Ljava/lang/String;

.field protected mScAddress:Ljava/lang/String;

.field protected mScTimeMillis:J

.field protected mSharedAppID:Ljava/lang/String;

.field protected mSharedCmd:Ljava/lang/String;

.field protected mSharedPayLoad:Ljava/lang/String;

.field protected mStatusOnIcc:I

.field protected mTeleserviceId:I

.field protected mUserData:[B

.field protected mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field protected mlastByte:[B

.field protected recipientAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected replyAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected sessionId:I

.field protected sessionSeq:I

.field protected sessionSeqEos:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    const/16 v0, 0x22

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->voiceMailText:[C

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->pagingText:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->thirdPartyText:[C

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->webText:[C

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->dataText:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->lguText:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->connectText:[C

    return-void

    nop

    :array_0
    .array-data 2
        -0x3f38s
        -0x47a4s
        -0x394cs
        0x20s
        -0x38b4s
        -0x3ecfs
        -0x45acs
        -0x3884s
        -0x388cs
        0x20s
        -0x4c3cs
        -0x33d7s
        -0x2a78s
        -0x3d4bs
        -0x4d38s
        -0x4d1cs
        0x2es
        -0x2e4bs
        -0x29acs
        -0x2f5cs
        -0x4684s
        0x20s
        -0x4dfcs
        -0x468cs
        -0x458cs
        0x20s
        -0x3870s
        -0x4c27s
        -0x3a10s
        -0x5350s
        -0x4bd7s
        -0x4d38s
        -0x4d1cs
        0x2es
    .end array-data

    :array_1
    .array-data 2
        0x5bs
        -0x29c8s
        -0x3264s
        -0x45acs
        -0x3d24s
        -0x3640s
        0x5ds
    .end array-data

    nop

    :array_2
    .array-data 2
        0x5bs
        -0x3988s
        -0x4280s
        -0x3f54s
        -0x3a3bs
        -0x3870s
        0x20s
        -0x3a10s
        -0x5350s
        0x5ds
    .end array-data

    :array_3
    .array-data 2
        0x5bs
        -0x3907s
        -0x3ee4s
        -0x2aafs
        0x20s
        -0x3a10s
        -0x5350s
        0x5ds
    .end array-data

    :array_4
    .array-data 2
        0x5bs
        0x4cs
        0x47s
        0x20s
        0x55s
        0x2bs
        0x20s
        -0x44ccs
        -0x3ee0s
        -0x3888s
        -0x2ed0s
        -0x4ec9s
        0x5ds
    .end array-data

    nop

    :array_5
    .array-data 2
        0x5bs
        0x4cs
        0x47s
        0x20s
        0x55s
        0x2bs
        0x20s
        -0x3ab8s
        -0x4f4cs
        0x5ds
    .end array-data

    :array_6
    .array-data 2
        -0x3a10s
        -0x5350s
        0x20s
        -0x2aa8s
        -0x3d24s
        -0x5360s
        -0x3d4bs
        -0x4d38s
        -0x51b4s
        0x3fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->linkUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedAppID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->bearerData:[B

    return-void
.end method

.method private parseLGTSharingNoti()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-string v0, ""

    .local v0, "destBody":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const/16 v6, 0x1d

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .local v3, "token":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v0, v3

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedAppID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedCmd:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-ne v1, v7, :cond_0

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "index":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    goto :goto_1

    .end local v2    # "index":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_4
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    return-void
.end method

.method private parseLGTWebNWapNoti(I)V
    .locals 6
    .param p1, "tid"    # I

    .prologue
    const/4 v5, -0x1

    const-string v0, ""

    .local v0, "destBody":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, "gs":I
    if-eq v2, v5, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "etx":I
    if-ne v1, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    if-eq v1, v5, :cond_1

    if-gt v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->linkUrl:Ljava/lang/String;

    .end local v1    # "etx":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    return-void

    .restart local v1    # "etx":I
    :cond_1
    const-string v3, "SMS"

    const-string v4, "parseLGTWapUrlNoti parsing error...  DELIMITER_ETX"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "etx":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const-string v3, "SMS"

    const-string v4, "parseLGTWapUrlNoti parsing error...  DELIMITER_GS"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->thirdPartyText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->connectText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->dataText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->lguText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->webText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SmsMessageBase;->connectText:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc00e -> :sswitch_0
        0xc00f -> :sswitch_1
        0xc010 -> :sswitch_2
        0xc263 -> :sswitch_0
        0xc265 -> :sswitch_3
        0xc267 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 12

    .prologue
    const/16 v11, 0x40

    const/16 v10, 0x2e

    const/4 v9, 0x2

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const-string v7, "( /)|( )"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .local v5, "parts":[Ljava/lang/String;
    array-length v6, v5

    if-ge v6, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "len":I
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "firstAt":I
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, "lastAt":I
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .local v1, "firstDot":I
    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .local v3, "lastDot":I
    if-lez v0, :cond_0

    if-ne v0, v2, :cond_0

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v1, :cond_0

    if-gt v1, v3, :cond_0

    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_0

    aget-object v6, v5, v8

    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    goto :goto_0
.end method

.method public getBearerData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->bearerData:[B

    return-object v0
.end method

.method public getBodyOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mBodyOffset:I

    return v0
.end method

.method public getCDMAMessageType()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->callbackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    return v0
.end method

.method public getIsFourBytesUnicode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsfourBytesUnicode:Z

    return v0
.end method

.method public getLastByte()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mlastByte:[B

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
.end method

.method public abstract getMessageIdentifier()I
.end method

.method public abstract getMessagePriority()I
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMti:I

    return v0
.end method

.method public getOriginalOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReplyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->sessionId:I

    return v0
.end method

.method public getSessionSeq()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->sessionSeq:I

    return v0
.end method

.method public getSessionSeqEos()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->sessionSeqEos:I

    return v0
.end method

.method public getSharedAppId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedAppID:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedCmd()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedPayLoad()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mSharedPayLoad:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    return v0
.end method

.method public getTeleserviceId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mTeleserviceId:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public getlinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method protected parseMessageBody()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    :cond_0
    return-void
.end method

.method protected parseSpecificTid(I)V
    .locals 2
    .param p1, "tid"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsMessageBase;->pagingText:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/SmsMessageBase;->pagingText:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/SmsMessageBase;->voiceMailText:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->parseLGTWebNWapNoti(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;->parseLGTSharingNoti()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_1
        0xc00a -> :sswitch_3
        0xc00e -> :sswitch_2
        0xc00f -> :sswitch_2
        0xc010 -> :sswitch_2
        0xc263 -> :sswitch_2
        0xc265 -> :sswitch_2
        0xc267 -> :sswitch_2
        0x40000 -> :sswitch_1
    .end sparse-switch
.end method

.method public replaceMessageBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "messasgeBody"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    return-void
.end method
