.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final IDLE:I = 0x0

.field static final WAITING_SERVICES:I = 0x4


# instance fields
.field anrCount:I

.field final appOp:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field dispatchClockTime:J

.field dispatchTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field nextReceiver:I

.field final ordered:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field final receivers:Ljava/util/List;

.field final receiversDispatchTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final requiredPermission:Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V
    .locals 2
    .param p1, "_queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "_callerPackage"    # Ljava/lang/String;
    .param p5, "_callingPid"    # I
    .param p6, "_callingUid"    # I
    .param p7, "_resolvedType"    # Ljava/lang/String;
    .param p8, "_requiredPermission"    # Ljava/lang/String;
    .param p9, "_appOp"    # I
    .param p10, "_receivers"    # Ljava/util/List;
    .param p11, "_resultTo"    # Landroid/content/IIntentReceiver;
    .param p12, "_resultCode"    # I
    .param p13, "_resultData"    # Ljava/lang/String;
    .param p14, "_resultExtras"    # Landroid/os/Bundle;
    .param p15, "_serialized"    # Z
    .param p16, "_sticky"    # Z
    .param p17, "_initialSticky"    # Z
    .param p18, "_userId"    # I

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput p6, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput-object p7, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput-object p10, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object p11, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput p12, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput-object p13, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .local v10, "now":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v17, " to user "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "  targetComp: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "  extras: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "caller="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v17

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, " pid="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v17, " uid="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "requiredPermission="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "  appOp="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "dispatchClockTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "dispatchTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-eqz v17, :cond_12

    const-string v17, " finishTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_1
    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    move/from16 v17, v0

    if-eqz v17, :cond_4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "anrCount="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "resultTo="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v17, " resultCode="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v17, " resultData="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "resultExtras="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    :cond_8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "resultAbort="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v17, " ordered="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v17, " sticky="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v17, " initialSticky="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    :cond_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "nextReceiver="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v17, " receiver="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "curFilter="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "curReceiver="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "curApp="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "curComponent="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "curSourceDir="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    move/from16 v17, v0

    if-eqz v17, :cond_f

    const-string v16, " (?)"

    .local v16, "stateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "state="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v16    # "stateStr":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "N":I
    :goto_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "p2":Ljava/lang/String;
    new-instance v13, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .local v13, "printer":Landroid/util/PrintWriterPrinter;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .local v9, "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "Receiver #"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v17, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .local v14, "receiverDispatchTime":J
    const-string v17, ", [dispatchTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v14, v15, v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v17, "]"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v14    # "receiverDispatchTime":J
    :goto_6
    instance-of v0, v9, Lcom/android/server/am/BroadcastFilter;

    move/from16 v17, v0

    if-eqz v17, :cond_15

    check-cast v9, Lcom/android/server/am/BroadcastFilter;

    .end local v9    # "o":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v12}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_10
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v12    # "p2":Ljava/lang/String;
    .end local v13    # "printer":Landroid/util/PrintWriterPrinter;
    :cond_11
    const-string v17, "null"

    goto/16 :goto_0

    :cond_12
    const-string v17, " receiverTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_1

    :cond_13
    const-string v17, "--"

    goto/16 :goto_2

    .restart local v16    # "stateStr":Ljava/lang/String;
    :pswitch_0
    const-string v16, " (APP_RECEIVE)"

    goto/16 :goto_3

    :pswitch_1
    const-string v16, " (CALL_IN_RECEIVE)"

    goto/16 :goto_3

    :pswitch_2
    const-string v16, " (CALL_DONE_RECEIVE)"

    goto/16 :goto_3

    :pswitch_3
    const-string v16, " (WAITING_SERVICES)"

    goto/16 :goto_3

    .end local v16    # "stateStr":Ljava/lang/String;
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_4

    .restart local v4    # "N":I
    .restart local v7    # "i":I
    .restart local v9    # "o":Ljava/lang/Object;
    .restart local v12    # "p2":Ljava/lang/String;
    .restart local v13    # "printer":Landroid/util/PrintWriterPrinter;
    :catch_0
    move-exception v8

    .local v8, "indexOutOfBoundException":Ljava/lang/IndexOutOfBoundsException;
    const-string v17, ", [dispatchTime=--]"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .end local v8    # "indexOutOfBoundException":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_15
    instance-of v0, v9, Landroid/content/pm/ResolveInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_10

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .end local v9    # "o":Ljava/lang/Object;
    invoke-virtual {v9, v13, v12}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_7

    :cond_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
