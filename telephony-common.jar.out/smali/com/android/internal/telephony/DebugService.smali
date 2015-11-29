.class public Lcom/android/internal/telephony/DebugService;
.super Ljava/lang/Object;
.source "DebugService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "DebugService"

    sput-object v0, Lcom/android/internal/telephony/DebugService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DebugService:"

    invoke-static {v0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DebugService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DebugService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v5, "dump: +"

    invoke-static {v5}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    const/4 v2, 0x0

    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    const-string v5, "CG"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "GG"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DCGS"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DCGG"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DGG"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DCGGS"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v3, 0x0

    .local v3, "phoneId":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    :try_start_0
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "++++++++++++++++++++"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_2
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_3
    iget-object v5, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_6
    iget-object v5, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Telephony DebugService: Could not getDefaultPhone e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "phoneId":I
    :goto_8
    return-void

    .restart local v3    # "phoneId":I
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Telephony DebugService: Could not PhoneBase e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "phoneId":I
    :cond_1
    :try_start_9
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    move-object v4, v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :try_start_a
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    move-object v2, v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_b
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :goto_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_c
    iget-object v5, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :goto_a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_d
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :goto_b
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_e
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    :goto_c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_f
    iget-object v5, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    :goto_d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_10
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    :goto_e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_11
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    :goto_f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :try_start_12
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    :goto_10
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v5, "dump: -"

    invoke-static {v5}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_9
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Telephony DebugService: Could not getDefaultPhone e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Telephony DebugService: Could not PhoneBase e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_11
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_12
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method
