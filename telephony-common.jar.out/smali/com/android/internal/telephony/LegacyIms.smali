.class public final Lcom/android/internal/telephony/LegacyIms;
.super Ljava/lang/Object;
.source "LegacyIms.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final IMS_PS_DOMAIN:Ljava/lang/String; = "persist.radio.domain.ps"

.field private static final IMS_TYPE_HIPRI:I = 0x3

.field private static final IMS_TYPE_MOBILE:I = 0x0

.field private static final IMS_TYPE_MOBILE_IMS:I = 0x1

.field private static final IMS_TYPE_WIFI:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "LegacyIms"

.field public static final NET_TYPE_BLUETOOTH:I = 0x3

.field public static final NET_TYPE_ETHERNET:I = 0x4

.field public static final NET_TYPE_MAX:I = 0x5

.field public static final NET_TYPE_MOBILE:I = 0x0

.field public static final NET_TYPE_WIFI:I = 0x1

.field public static final NET_TYPE_WIMAX:I = 0x2

.field private static final PROPERTY_SVLTE_SUPPORT:Ljava/lang/String; = "ro.ril.svlte1x"

.field public static final RIL_EPDG_STATUS_NOT_REGISTERED:I = 0x0

.field public static final RIL_EPDG_STATUS_REGISTERED:I = 0x1

.field public static final RIL_IMS_STATUS_LIMITED_MODE_REG:I = 0x2

.field public static final RIL_IMS_STATUS_NOT_REGISTERED:I = 0x0

.field public static final RIL_IMS_STATUS_NOT_REGISTERED_E911:I = 0x3

.field public static final RIL_IMS_STATUS_REGISTERED:I = 0x1

.field public static final RIL_IMS_STATUS_REGISTERED_E911:I = 0x4

.field public static final RIL_IMS_TYPE_PSVT:I = 0x8

.field public static final RIL_IMS_TYPE_RCS:I = 0x4

.field public static final RIL_IMS_TYPE_SMSIP:I = 0x2

.field public static final RIL_IMS_TYPE_VOLTE:I = 0x1

.field public static final mFormatUri:Landroid/net/Uri;


# instance fields
.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field private mECMPStatus:I

.field private mEpdgState:I

.field private mFeature:[I

.field private mNetworkType:I

.field protected mPhoneId:I

.field private mPrevVolteRegi:Z

.field private mRegState:[I

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "content://com.example.HiddenMenuContentProvider/IMSSETTINGSData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LegacyIms;->mFormatUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/LegacyIms;->mNetworkType:I

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/LegacyIms;->mPrevVolteRegi:Z

    .line 52
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mFeature:[I

    .line 53
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/LegacyIms;->mEpdgState:I

    .line 55
    iput v1, p0, Lcom/android/internal/telephony/LegacyIms;->mECMPStatus:I

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/LegacyIms;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/internal/telephony/LegacyIms;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 78
    iput p3, p0, Lcom/android/internal/telephony/LegacyIms;->mPhoneId:I

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mResolver:Landroid/content/ContentResolver;

    .line 80
    return-void
.end method

.method public static featureMaskToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "featureMask"    # I

    .prologue
    .line 337
    const-string v0, ""

    .line 339
    .local v0, "rtString":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VOLTE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_0
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SMSIP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RCS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_4
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 351
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PSVT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    :cond_6
    return-object v0
.end method

.method public static imsStatusToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "imsStatus"    # I

    .prologue
    .line 312
    packed-switch p0, :pswitch_data_0

    .line 329
    const-string v1, "LegacyIms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid ims status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v0, "Unexpected"

    .line 333
    .local v0, "rtString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 314
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "NOT_REGISTERED"

    .line 315
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 317
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGISTERED"

    .line 318
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 320
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "LIMITED_MODE_REG"

    .line 321
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 323
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "NOT_REGISTERED_E911"

    .line 324
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 326
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "REGISTERED_E911"

    .line 327
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static networkTypeToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "networkType"    # I

    .prologue
    .line 285
    packed-switch p0, :pswitch_data_0

    .line 302
    :pswitch_0
    const-string v1, "LegacyIms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, "Unexpected"

    .line 306
    .local v0, "rtString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 287
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "MOBILE"

    .line 288
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 290
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "WIFI"

    .line 291
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 293
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "WIMAX"

    .line 294
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 296
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "BLUETOOTH"

    .line 297
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 299
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5
    const-string v0, "ETHERNET"

    .line 300
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public clearVolteRegistered()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LegacyIms;->mPrevVolteRegi:Z

    .line 181
    return-void
.end method

.method public convertNetworkType(I)I
    .locals 4
    .param p1, "connectivityType"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "netType":I
    packed-switch p1, :pswitch_data_0

    .line 101
    :pswitch_0
    const-string v1, "LegacyIms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 86
    :pswitch_1
    const/4 v0, 0x0

    .line 87
    goto :goto_0

    .line 89
    :pswitch_2
    const/4 v0, 0x1

    .line 90
    goto :goto_0

    .line 92
    :pswitch_3
    const/4 v0, 0x2

    .line 93
    goto :goto_0

    .line 95
    :pswitch_4
    const/4 v0, 0x3

    .line 96
    goto :goto_0

    .line 98
    :pswitch_5
    const/4 v0, 0x4

    .line 99
    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public dcnAvailability()Z
    .locals 3

    .prologue
    .line 243
    const-string v0, "LegacyIms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dcnAvailability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/LegacyIms;->mPrevVolteRegi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public getDcnAddress()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 219
    const/4 v7, 0x0

    .line 221
    .local v7, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mDcnNumber"

    aput-object v0, v2, v1

    .line 224
    .local v2, "reqField":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/LegacyIms;->mFormatUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 226
    .local v8, "count":I
    if-lez v8, :cond_1

    .line 227
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 228
    const-string v0, "LegacyIms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Domain Change Address : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 238
    .local v6, "address":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "count":I
    :cond_0
    :goto_0
    return-object v6

    .line 232
    .restart local v8    # "count":I
    :cond_1
    :try_start_1
    const-string v0, "LegacyIms"

    const-string v1, "Cursor < 1"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v6, "4437501000"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 235
    .end local v8    # "count":I
    :catch_0
    move-exception v9

    .line 236
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "4437501000"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getEcmpStatus()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/telephony/LegacyIms;->mECMPStatus:I

    return v0
.end method

.method public getEpdgState()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/internal/telephony/LegacyIms;->mEpdgState:I

    return v0
.end method

.method public getFeatureMask(I)I
    .locals 1
    .param p1, "netType"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mFeature:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRegiState(I)I
    .locals 1
    .param p1, "netType"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRegisteredNetworkType()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/internal/telephony/LegacyIms;->mNetworkType:I

    return v0
.end method

.method public isHybridVolte()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 194
    const/4 v0, 0x1

    .line 195
    .local v0, "result":Z
    const-string v1, "ro.ril.svlte1x"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 196
    const-string v4, "LegacyIms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHybridVolte = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 196
    goto :goto_0

    :cond_1
    move v2, v3

    .line 198
    goto :goto_1
.end method

.method public isImsRegistered()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 165
    :goto_1
    return v1

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isVolteRegistered()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/internal/telephony/LegacyIms;->mFeature:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 172
    iput-boolean v1, p0, Lcom/android/internal/telephony/LegacyIms;->mPrevVolteRegi:Z

    .line 176
    :goto_1
    return v1

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isWfcRegistered()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v1, v1, v0

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestInitialImsRegistration()V
    .locals 5

    .prologue
    .line 202
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/internal/telephony/LegacyIms;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 205
    .local v1, "mInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-eqz v1, :cond_0

    .line 207
    :try_start_0
    const-string v2, "LegacyIms"

    const-string v3, "requestInitialImsRegistration"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->sendInitialRegister(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "LegacyIms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestInitialImsRegistration exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const-string v2, "LegacyIms"

    const-string v3, "mInterfaceForGeneral is not set"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEcmpStatus(II)V
    .locals 3
    .param p1, "ecmpStatus"    # I
    .param p2, "regIndex"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/android/internal/telephony/LegacyIms;->mECMPStatus:I

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ECMP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    const-string v1, "ECMP_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v1, "LGT"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKT"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    const-string v1, "REG_STATE"

    iget-object v2, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aget v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/LegacyIms;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public setEpdgState(I)V
    .locals 0
    .param p1, "epdgState"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/android/internal/telephony/LegacyIms;->mEpdgState:I

    .line 153
    return-void
.end method

.method public setFeatureMask(II)V
    .locals 1
    .param p1, "feature"    # I
    .param p2, "netType"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mFeature:[I

    aput p1, v0, p2

    .line 125
    return-void
.end method

.method public setLegacyImsRegistration([I)V
    .locals 5
    .param p1, "responseArray"    # [I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 252
    const/4 v0, -0x1

    .line 253
    .local v0, "networkType":I
    const/4 v1, 0x0

    .line 255
    .local v1, "regIndex":I
    const/4 v2, 0x2

    aget v0, p1, v2

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LegacyIms;->convertNetworkType(I)I

    move-result v1

    .line 257
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/LegacyIms;->setRegiState(II)V

    .line 258
    aget v2, p1, v3

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/LegacyIms;->setFeatureMask(II)V

    .line 259
    aget v2, p1, v4

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/LegacyIms;->setEcmpStatus(II)V

    .line 260
    const/4 v2, 0x4

    aget v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LegacyIms;->setEpdgState(I)V

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LegacyIms;->getRegiState(I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LegacyIms;->getRegiState(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/LegacyIms;->isImsRegistered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LegacyIms;->setRegisteredNetworkType(I)V

    .line 276
    :cond_1
    :goto_0
    const-string v2, "LegacyIms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/internal/telephony/LegacyIms;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RegIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RegiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LegacyIms;->getRegiState(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/LegacyIms;->imsStatusToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", FeatureMask: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LegacyIms;->getFeatureMask(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/LegacyIms;->featureMaskToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isIMSRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/LegacyIms;->isImsRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isVolteRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/LegacyIms;->isVolteRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", EpdgState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/LegacyIms;->getEpdgState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", EcmpStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/LegacyIms;->getEcmpStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 267
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LegacyIms;->getRegiState(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 268
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/LegacyIms;->isWfcRegistered()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    const-string v2, "LegacyIms"

    const-string v3, "WFC is already registered. Keep current NetworkType"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 272
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LegacyIms;->setRegisteredNetworkType(I)V

    goto/16 :goto_0
.end method

.method public setRegiState(II)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "netType"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/LegacyIms;->mRegState:[I

    aput p1, v0, p2

    .line 117
    return-void
.end method

.method public setRegisteredNetworkType(I)V
    .locals 0
    .param p1, "networkType"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/internal/telephony/LegacyIms;->mNetworkType:I

    .line 109
    return-void
.end method
