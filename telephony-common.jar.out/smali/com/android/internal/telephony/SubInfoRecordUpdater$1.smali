.class Lcom/android/internal/telephony/SubInfoRecordUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "SubInfoRecordUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubInfoRecordUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v18, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .local v5, "action":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Action: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    const-string v18, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIsSystemShutdown:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z

    move-result v18

    if-eqz v18, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mIsSystemShutdown: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIsSystemShutdown:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", ignore "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v18, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "simStatus":Ljava/lang/String;
    const-string v18, "slot"

    const/16 v19, -0x3e8

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .local v14, "slotId":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "slotId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " simStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    const/16 v18, -0x3e8

    move/from16 v0, v18

    if-eq v14, v0, :cond_0

    const-string v18, "READY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "LOCKED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_2
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v14

    if-eqz v18, :cond_3

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v14

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SIM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v14, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " hot plug in"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v19, v18, v14

    const/16 v18, 0x1

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$302(Z)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->queryIccId(I)V
    invoke-static {v0, v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$400(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)V

    .end local v13    # "simStatus":Ljava/lang/String;
    .end local v14    # "slotId":I
    :cond_4
    :goto_1
    const-string v18, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v13    # "simStatus":Ljava/lang/String;
    .restart local v14    # "slotId":I
    :cond_5
    const-string v18, "LOADED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->queryIccId(I)V
    invoke-static {v0, v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$400(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)V

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$500()Landroid/telephony/TelephonyManager;

    move-result-object v18

    if-nez v18, :cond_6

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$600()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v18

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$502(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    :cond_6
    const-string v18, "subscription"

    const-wide/16 v20, -0x3e8

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .local v16, "subId":J
    invoke-static/range {v16 .. v17}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v8

    .local v8, "msisdn":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$600()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .local v6, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v8, :cond_7

    new-instance v11, Landroid/content/ContentValues;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .local v11, "number":Landroid/content/ContentValues;
    const-string v18, "number"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v18, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v11    # "number":Landroid/content/ContentValues;
    :cond_7
    invoke-static/range {v16 .. v17}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v15

    .local v15, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v15, :cond_4

    iget v0, v15, Landroid/telephony/SubInfoRecord;->nameSource:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    new-instance v7, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    .local v7, "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v4

    .local v4, "CarrierName":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CarrierName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sPhone:[Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$700()[Lcom/android/internal/telephony/Phone;

    move-result-object v18

    aget-object v18, v18, v14

    check-cast v18, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->getSubscriberId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v4, v0}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " 0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v14, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "nameToSet":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Found, name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    :goto_2
    new-instance v9, Landroid/content/ContentValues;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(I)V

    .local v9, "name":Landroid/content/ContentValues;
    const-string v18, "display_name"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v18, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v9    # "name":Landroid/content/ContentValues;
    .end local v10    # "nameToSet":Ljava/lang/String;
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SUB 0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v14, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "nameToSet":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not found, name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .end local v4    # "CarrierName":Ljava/lang/String;
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v7    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v8    # "msisdn":Ljava/lang/String;
    .end local v10    # "nameToSet":Ljava/lang/String;
    .end local v15    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_9
    const-string v18, "[Receiver] Invalid subId, could not update ContentResolver"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v16    # "subId":J
    :cond_a
    const-string v18, "ABSENT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v14

    if-eqz v18, :cond_b

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v14

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SIM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v14, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " hot plug out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    const/16 v18, 0x1

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$302(Z)Z

    :cond_b
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$800()[Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v19, v18, v14

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()[Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    aput-object v19, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$900(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z

    move-result v18

    if-eqz v18, :cond_4

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$300()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSimInfoByIccId()V

    goto/16 :goto_1

    :cond_c
    const-string v18, "UNKNOWN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->isSimReset:[Z
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1000()[Z

    move-result-object v18

    aget-boolean v18, v18, v14

    if-eqz v18, :cond_4

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->isSimReset:[Z
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1000()[Z

    move-result-object v18

    const/16 v19, 0x0

    aput-boolean v19, v18, v14

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v18

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1100()[I

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto/16 :goto_1

    .end local v13    # "simStatus":Ljava/lang/String;
    .end local v14    # "slotId":I
    :cond_d
    const-string v18, "android.intent.action.stk.icc_status_change"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const-string v18, "refresh_result"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .local v12, "refreshResult":I
    const-string v18, "SLOT_ID"

    const/16 v19, -0x3e8

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .restart local v14    # "slotId":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "slotId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " refreshResult: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    const/16 v18, -0x3e8

    move/from16 v0, v18

    if-eq v14, v0, :cond_0

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v12, v0, :cond_4

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->isSimReset:[Z
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1000()[Z

    move-result-object v18

    const/16 v19, 0x1

    aput-boolean v19, v18, v14

    goto/16 :goto_1

    .end local v12    # "refreshResult":I
    .end local v14    # "slotId":I
    :cond_e
    const-string v18, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIsSystemShutdown:Z
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$102(Lcom/android/internal/telephony/SubInfoRecordUpdater;Z)Z

    goto/16 :goto_1
.end method
