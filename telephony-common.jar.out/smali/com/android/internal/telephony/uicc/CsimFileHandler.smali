.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 5
    .param p1, "efid"    # I

    .prologue
    const/4 v4, 0x1

    .line 43
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_8

    .line 44
    const-string v2, "DCG"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGG"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGS"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGGS"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CG"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_8

    .line 50
    const-string v2, "ril.IsCSIM"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "isCsim":I
    const/16 v2, 0x6f3c

    if-ne p1, v2, :cond_4

    .line 52
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    const-string v1, "3F007F10"

    .line 97
    .end local v0    # "isCsim":I
    :cond_1
    :goto_0
    return-object v1

    .line 55
    .restart local v0    # "isCsim":I
    :cond_2
    if-ne v0, v4, :cond_3

    .line 56
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 58
    :cond_3
    const-string v1, "3F007F25"

    goto :goto_0

    .line 61
    :cond_4
    const/16 v2, 0x6f22

    if-ne p1, v2, :cond_6

    .line 62
    if-ne v0, v4, :cond_5

    .line 63
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 65
    :cond_5
    const-string v1, "3F007F25"

    goto :goto_0

    .line 67
    :cond_6
    const/16 v2, 0x4f20

    if-eq p1, v2, :cond_7

    const/16 v2, 0x4f21

    if-eq p1, v2, :cond_7

    const/16 v2, 0x4f22

    if-ne p1, v2, :cond_8

    .line 68
    :cond_7
    const-string v1, "3F007F105F3C"

    goto :goto_0

    .line 73
    .end local v0    # "isCsim":I
    :cond_8
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 95
    const-string v1, "3F007F105F3A"

    goto :goto_0

    .line 88
    .end local v1    # "path":Ljava/lang/String;
    :sswitch_0
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_0
        0x6f28 -> :sswitch_0
        0x6f31 -> :sswitch_0
        0x6f32 -> :sswitch_0
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f41 -> :sswitch_0
        0x6f44 -> :sswitch_0
        0x6f5a -> :sswitch_0
        0x6f74 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
