.class public Lcom/android/internal/telephony/SubInfoRecordUpdater;
.super Landroid/os/Handler;
.source "SubInfoRecordUpdater.java"


# static fields
.field private static final EVENT_ICCID_READY:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_OFFSET:I = 0x8

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_STACK_READY:I = 0x3

.field private static final ICCID_STRING_FOR_INVALID_ICCID:Ljava/lang/String; = "00000000000000000000"

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "SUB"

.field private static final PROJECT_SIM_NUM:I

.field static final SHIP_BUILD:Z

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static isSimReset:[Z

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private static sIccId:[Ljava/lang/String;

.field private static sInsertSimState:[I

.field private static sNeedUpdate:Z

.field private static sPhone:[Lcom/android/internal/telephony/Phone;

.field private static sTelephonyMgr:Landroid/telephony/TelephonyManager;


# instance fields
.field private mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsSystemShutdown:Z

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    .line 118
    sput-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    .line 120
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 121
    sput-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 125
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isSimReset:[Z

    .line 127
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 128
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    .line 129
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    .line 130
    sput-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    .line 137
    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 134
    sget v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v2, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 140
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIsSystemShutdown:Z

    .line 183
    new-instance v2, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    const-string v2, "Constructor invoked"

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 146
    sput-object p1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    .line 147
    sput-object p2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sPhone:[Lcom/android/internal/telephony/Phone;

    .line 149
    sput-object p3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 150
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-static {p1, p3}, Lcom/android/internal/telephony/SubscriptionHelper;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 156
    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 161
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v4, v2, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 165
    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    .end local v0    # "i":I
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.stk.icc_status_change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIsSystemShutdown:Z

    return v0
.end method

.method static synthetic access$1000()[Z
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isSimReset:[Z

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/SubInfoRecordUpdater;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIsSystemShutdown:Z

    return p1
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 78
    sput-boolean p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->queryIccId(I)V

    return-void
.end method

.method static synthetic access$500()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$502(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .param p0, "x0"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 78
    sput-object p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$800()[Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    return v0
.end method

.method private static encodeEventId(II)I
    .locals 1
    .param p0, "event"    # I
    .param p1, "slotId"    # I

    .prologue
    .line 180
    mul-int/lit8 v0, p1, 0x8

    shl-int v0, p0, v0

    return v0
.end method

.method private isAllIccIdQueryDone()Z
    .locals 3

    .prologue
    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 310
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IccId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 312
    const/4 v1, 0x0

    .line 317
    :goto_1
    return v1

    .line 309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_1
    const-string v1, "All IccIds query complete"

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 317
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "iccId"    # Ljava/lang/String;
    .param p1, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 834
    const/4 v1, 0x1

    .line 835
    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 836
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 837
    const/4 v1, 0x0

    .line 841
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 843
    return v1

    .line 835
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 852
    const-string v0, "SUB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubInfoRecordUpdater]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-void
.end method

.method private queryIccId(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryIccId: slotid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 521
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 522
    const-string v1, "Getting IccFileHandler"

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 523
    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    aput-object v1, v2, p1

    .line 525
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v1, v1, p1

    if-eqz v1, :cond_3

    .line 526
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 527
    .local v0, "iccId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 528
    const-string v1, "Querying IccId"

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 529
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v1, v1, p1

    const/16 v2, 0x2fe2

    const/4 v3, 0x1

    invoke-static {v3, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->encodeEventId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 546
    .end local v0    # "iccId":Ljava/lang/String;
    :goto_0
    return-void

    .line 532
    .restart local v0    # "iccId":Ljava/lang/String;
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->SHIP_BUILD:Z

    if-eqz v1, :cond_2

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]= XXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 542
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v2, v1, p1

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFh["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is null, SIM not inserted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p0, "newSubName"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "newNameSource"    # I

    .prologue
    .line 321
    int-to-long v4, p1

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v2

    .line 322
    .local v2, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v2, :cond_3

    .line 324
    iget v0, v2, Landroid/telephony/SubInfoRecord;->nameSource:I

    .line 325
    .local v0, "oldNameSource":I
    iget-object v1, v2, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    .line 326
    .local v1, "oldSubName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayNameForNewSub] mSubInfoIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldSimName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newSubName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 329
    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 333
    :cond_1
    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    int-to-long v6, p2

    invoke-static {p0, v4, v5, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I

    .line 339
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 337
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setUpdatedData(III)V
    .locals 6
    .param p0, "detectedType"    # I
    .param p1, "subCount"    # I
    .param p2, "newSimStatus"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "[setUpdatedData]+ "

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 809
    if-ne p0, v2, :cond_1

    .line 810
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 813
    const-string v1, "newSIMSlot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast intent ACTION_SUBINFO_RECORD_UPDATED : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 829
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 830
    const-string v1, "[setUpdatedData]- "

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 831
    return-void

    .line 814
    :cond_1
    if-ne p0, v4, :cond_2

    .line 815
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 818
    :cond_2
    if-ne p0, v3, :cond_3

    .line 819
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 821
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 822
    :cond_3
    if-ne p0, v5, :cond_0

    .line 823
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateIccAvailability()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 437
    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v10, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const-string v10, "updateIccAvailability: Enter"

    invoke-static {v10}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->proceedToHandleIccEvent()Z

    move-result v10

    if-nez v10, :cond_2

    .line 443
    const-string v10, "updateIccAvailability: radio is OFF/unavailable, ignore "

    invoke-static {v10}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_2
    const/4 v8, 0x0

    .local v8, "slotId":I
    :goto_1
    sget v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v8, v10, :cond_0

    .line 449
    const/4 v4, 0x0

    .line 450
    .local v4, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v9, 0x0

    .line 452
    .local v9, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 453
    .local v5, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v10, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 454
    .local v3, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v3, :cond_4

    .line 455
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    .line 457
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v6

    .line 458
    .local v6, "numApps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v6, :cond_3

    .line 459
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 460
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v10, v11, :cond_8

    .line 461
    move-object v9, v0

    .line 465
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_3
    if-eqz v9, :cond_4

    .line 466
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 469
    .end local v1    # "i":I
    .end local v6    # "numApps":I
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v10, v10, v8

    if-eq v10, v4, :cond_6

    .line 470
    const-string v10, "mIccRecords changed. Reregestering."

    invoke-static {v10}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 471
    iget-object v10, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v10, v10, v8

    if-eqz v10, :cond_5

    .line 472
    iget-object v10, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v10, v10, v8

    invoke-virtual {v10, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForIccIdReady(Landroid/os/Handler;)V

    .line 474
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v4, v10, v8

    .line 475
    iget-object v10, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v10, v10, v8

    if-eqz v10, :cond_6

    .line 476
    iget-object v10, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v10, v10, v8

    const/4 v11, 0x4

    invoke-static {v11, v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->encodeEventId(II)I

    move-result v11

    invoke-virtual {v10, p0, v11, v12}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForIccIdReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 480
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_9

    .line 447
    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 458
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "i":I
    .restart local v6    # "numApps":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 484
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    .end local v6    # "numApps":I
    :cond_9
    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v7, v10, v8

    .line 485
    .local v7, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v5, v10, v8

    .line 486
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Slot["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]: New Card State = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Old Card State = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v10

    if-nez v10, :cond_c

    .line 490
    const-string v10, "ril.ICC_TYPE"

    const-string v11, "0"

    invoke-static {v10, v8, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "mIccType":Ljava/lang/String;
    const-string v10, "0"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 492
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New Card State = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", but mIccType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", continue"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 497
    :cond_a
    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v10, v10, v8

    if-eqz v10, :cond_b

    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v10, v10, v8

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 498
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hot plug out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 499
    sput-boolean v13, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    .line 501
    :cond_b
    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v12, v10, v8

    .line 502
    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const-string v11, ""

    aput-object v11, v10, v8

    .line 503
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v10

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    if-eqz v10, :cond_7

    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSimInfoByIccId()V

    goto/16 :goto_3

    .line 506
    .end local v2    # "mIccType":Ljava/lang/String;
    :cond_c
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 508
    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v10, v10, v8

    if-eqz v10, :cond_d

    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v10, v10, v8

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 509
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hot plug in"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 510
    sget-object v10, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aput-object v12, v10, v8

    .line 511
    sput-boolean v13, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    .line 513
    :cond_d
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->queryIccId(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 847
    const-string v0, "[dispose]"

    invoke-static {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 848
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 849
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 343
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 344
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    .line 346
    .local v4, "msgNum":I
    const/4 v6, 0x0

    .local v6, "slotId":I
    :goto_0
    const/4 v7, 0x2

    if-gt v6, v7, :cond_0

    .line 347
    mul-int/lit8 v7, v6, 0x8

    shl-int v5, v9, v7

    .line 348
    .local v5, "pivot":I
    if-lt v4, v5, :cond_0

    .line 346
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 354
    .end local v5    # "pivot":I
    :cond_0
    add-int/lit8 v6, v6, -0x1

    .line 355
    mul-int/lit8 v7, v6, 0x8

    shr-int v3, v4, v7

    .line 356
    .local v3, "event":I
    packed-switch v3, :pswitch_data_0

    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 433
    :cond_1
    :goto_1
    return-void

    .line 358
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage : <EVENT_QUERY_ICCID_DONE> SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 359
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_6

    .line 360
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 361
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v2, v7

    check-cast v2, [B

    .line 363
    .local v2, "data":[B
    const-string v7, "ro.csc.countryiso_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "countryISO":Ljava/lang/String;
    const-string v7, "CN"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "HK"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "TW"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 365
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    array-length v8, v2

    invoke-static {v2, v10, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 385
    .end local v1    # "countryISO":Ljava/lang/String;
    .end local v2    # "data":[B
    :goto_2
    sget-boolean v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->SHIP_BUILD:Z

    if-eqz v7, :cond_7

    .line 386
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sIccId["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = XXX"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 391
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    if-eqz v7, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSimInfoByIccId()V

    goto :goto_1

    .line 369
    .restart local v1    # "countryISO":Ljava/lang/String;
    .restart local v2    # "data":[B
    :cond_3
    array-length v7, v2

    invoke-virtual {p0, v2, v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isIccIdHasChar([BI)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 370
    sget-object v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const-string v8, "00000000000000000000"

    aput-object v8, v7, v6

    goto :goto_2

    .line 372
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    array-length v8, v2

    invoke-static {v2, v10, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    goto :goto_2

    .line 377
    .end local v1    # "countryISO":Ljava/lang/String;
    .end local v2    # "data":[B
    :cond_5
    const-string v7, "Null ar"

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 378
    sget-object v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v6

    goto :goto_2

    .line 381
    :cond_6
    sget-object v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v6

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query IccId fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 388
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sIccId["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 398
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIsSystemShutdown:Z

    if-eqz v7, :cond_8

    .line 399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsSystemShutdown: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIsSystemShutdown:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ignore EVENT_ICC_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 403
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateIccAvailability()V

    goto/16 :goto_1

    .line 406
    :pswitch_2
    const-string v7, "EVENT_STACK_READY"

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v7

    if-eqz v7, :cond_1

    sget v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-le v7, v9, :cond_1

    .line 408
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto/16 :goto_1

    .line 414
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage : <EVENT_ICCID_READY> SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 415
    iget-object v7, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v7, v7, v6

    if-nez v7, :cond_9

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot getIccId, null mIccRecords["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 419
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 420
    sget-boolean v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->SHIP_BUILD:Z

    if-nez v7, :cond_a

    .line 421
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sIccId["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 425
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    if-eqz v7, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSimInfoByIccId()V

    goto/16 :goto_1

    .line 423
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sIccId["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = ******"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isIccIdHasChar([BI)Z
    .locals 9
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, "All_FF":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 860
    aget-byte v6, p1, v3

    and-int/lit8 v6, v6, 0xf

    if-ne v6, v8, :cond_0

    aget-byte v6, p1, v3

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    if-ne v6, v8, :cond_0

    .line 861
    const/4 v0, 0x1

    .line 859
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 863
    :cond_0
    const/4 v0, 0x0

    .line 867
    :cond_1
    if-ne v0, v5, :cond_3

    .line 880
    :cond_2
    :goto_1
    return v4

    .line 870
    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, p2, :cond_2

    .line 873
    aget-byte v6, p1, v3

    and-int/lit8 v1, v6, 0xf

    .line 874
    .local v1, "a":I
    aget-byte v6, p1, v3

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v2, v6, 0xf

    .line 875
    .local v2, "b":I
    if-gt v1, v7, :cond_4

    if-le v2, v7, :cond_5

    add-int/lit8 v6, p2, -0x1

    if-eq v3, v6, :cond_5

    :cond_4
    move v4, v5

    .line 876
    goto :goto_1

    .line 870
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public declared-synchronized updateSimInfoByIccId()V
    .locals 28

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    const-string v22, "[updateSimInfoByIccId]+ Start"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 550
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    .line 552
    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearSubInfo()V

    .line 554
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_0

    .line 555
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v23, 0x0

    aput v23, v22, v6

    .line 554
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 558
    :cond_0
    sget v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    .line 560
    .local v8, "insertedSimCount":I
    const/4 v9, 0x0

    .line 562
    .local v9, "insertedSimStatus":I
    const/4 v6, 0x0

    :goto_1
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_2

    .line 563
    const-string v22, ""

    sget-object v23, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v23, v23, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 564
    add-int/lit8 v8, v8, -0x1

    .line 565
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v23, -0x63

    aput v23, v22, v6

    .line 562
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 569
    :cond_1
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 571
    :pswitch_0
    or-int/lit8 v9, v9, 0x1

    .line 572
    goto :goto_2

    .line 574
    :pswitch_1
    or-int/lit8 v9, v9, 0x2

    .line 575
    goto :goto_2

    .line 577
    :pswitch_2
    or-int/lit8 v9, v9, 0x4

    goto :goto_2

    .line 586
    :cond_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "insertedSimCount = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 588
    const/4 v7, 0x0

    .line 589
    .local v7, "index":I
    const/4 v6, 0x0

    :goto_3
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_6

    .line 590
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    const/16 v23, -0x63

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 589
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 593
    :cond_4
    const/4 v7, 0x2

    .line 594
    add-int/lit8 v10, v6, 0x1

    .local v10, "j":I
    :goto_4
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    .line 595
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v10

    if-nez v22, :cond_5

    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    sget-object v23, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v23, v23, v10

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 596
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v23, 0x1

    aput v23, v22, v6

    .line 597
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aput v7, v22, v10

    .line 598
    add-int/lit8 v7, v7, 0x1

    .line 594
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 603
    .end local v10    # "j":I
    :cond_6
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 604
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    new-array v15, v0, [Ljava/lang/String;

    .line 605
    .local v15, "oldIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_5
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_b

    .line 606
    const/16 v22, 0x0

    aput-object v22, v15, v6

    .line 607
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZ)Ljava/util/List;

    move-result-object v16

    .line 609
    .local v16, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v16, :cond_9

    .line 610
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubInfoRecord;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v15, v6

    .line 611
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "oldSubId = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubInfoRecord;

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 612
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    if-nez v22, :cond_7

    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    aget-object v23, v15, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 613
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v23, -0x1

    aput v23, v22, v6

    .line 615
    :cond_7
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    if-eqz v22, :cond_8

    .line 616
    new-instance v21, Landroid/content/ContentValues;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/content/ContentValues;-><init>(I)V

    .line 617
    .local v21, "value":Landroid/content/ContentValues;
    const-string v22, "sim_id"

    const/16 v23, -0x3e8

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    sget-object v23, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubInfoRecord;

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 605
    .end local v21    # "value":Landroid/content/ContentValues;
    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 623
    :cond_9
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    if-nez v22, :cond_a

    .line 625
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v23, -0x1

    aput v23, v22, v6

    .line 627
    :cond_a
    const-string v22, ""

    aput-object v22, v15, v6

    .line 628
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No SIM in slot "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " last time"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 549
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "insertedSimCount":I
    .end local v9    # "insertedSimStatus":I
    .end local v15    # "oldIccId":[Ljava/lang/String;
    .end local v16    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 632
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    .restart local v8    # "insertedSimCount":I
    .restart local v9    # "insertedSimStatus":I
    .restart local v15    # "oldIccId":[Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    :goto_7
    :try_start_1
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_d

    .line 634
    sget-boolean v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->SHIP_BUILD:Z

    if-eqz v22, :cond_c

    .line 635
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "oldIccId["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v15, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", sIccId["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] = XXX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 632
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 637
    :cond_c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "oldIccId["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v15, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", sIccId["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v23, v23, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_8

    .line 643
    :cond_d
    const/4 v12, 0x0

    .line 644
    .local v12, "nNewCardCount":I
    const/4 v13, 0x0

    .line 645
    .local v13, "nNewSimStatus":I
    const/4 v6, 0x0

    :goto_9
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_11

    .line 646
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    const/16 v23, -0x63

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 647
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No SIM inserted in slot "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " this time"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 645
    :cond_e
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 649
    :cond_f
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    if-lez v22, :cond_10

    .line 652
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v23, v23, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v23, v23, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Landroid/telephony/SubscriptionManager;->addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 654
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SUB"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v6, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " has invalid IccId"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 658
    :goto_b
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 659
    add-int/lit8 v12, v12, 0x1

    .line 660
    packed-switch v6, :pswitch_data_1

    .line 675
    :goto_c
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v23, -0x2

    aput v23, v22, v6

    goto :goto_a

    .line 656
    :cond_10
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Landroid/telephony/SubscriptionManager;->addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_b

    .line 662
    :pswitch_3
    or-int/lit8 v13, v13, 0x1

    .line 663
    goto :goto_c

    .line 665
    :pswitch_4
    or-int/lit8 v13, v13, 0x2

    .line 666
    goto :goto_c

    .line 668
    :pswitch_5
    or-int/lit8 v13, v13, 0x4

    goto :goto_c

    .line 681
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/SubscriptionController;->refreshSubInfo()V

    .line 685
    const-string v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 686
    .local v17, "salesCode":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_12

    const-string v22, "CTC"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_12

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_12

    .line 688
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "insertedSimStatus = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 689
    and-int/lit8 v22, v9, 0x1

    if-eqz v22, :cond_16

    .line 690
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "phone1_on"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 699
    :cond_12
    :goto_d
    const/4 v6, 0x0

    :goto_e
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_19

    .line 700
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 701
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v23, -0x3

    aput v23, v22, v6

    .line 703
    :cond_13
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sInsertSimState["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v23, v23, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_15

    const-string v22, "CG"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    const-string v22, "DGG"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    const-string v22, "DCG"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    const-string v22, "DCGG"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    const-string v22, "DCGS"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    const-string v22, "DCGGS"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 712
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[J

    move-result-object v18

    .line 713
    .local v18, "subId":[J
    const-string v22, "UNKNOWN"

    const-string v23, "gsm.sim.state"

    const-string v24, "UNKNOWN"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v6, v1}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    .line 714
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    const/16 v23, 0x0

    aget-wide v24, v18, v23

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(JI)I

    .line 699
    .end local v18    # "subId":[J
    :cond_15
    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    .line 691
    :cond_16
    and-int/lit8 v22, v9, 0x2

    if-eqz v22, :cond_17

    .line 692
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "phone2_on"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_d

    .line 694
    :cond_17
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "else, insertedSimStatus = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 716
    .restart local v18    # "subId":[J
    :cond_18
    const-string v22, "PROPERTY_SIM_STATE UNKNOWN, ignore"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_f

    .line 722
    .end local v18    # "subId":[J
    :cond_19
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 729
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    .line 734
    :cond_1a
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v19

    .line 735
    .local v19, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-nez v19, :cond_1c

    const/4 v14, 0x0

    .line 736
    .local v14, "nSubCount":I
    :goto_10
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "nSubCount = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 737
    const/4 v6, 0x0

    :goto_11
    if-ge v6, v14, :cond_1d

    .line 738
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubInfoRecord;

    .line 740
    .local v20, "temp":Landroid/telephony/SubInfoRecord;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v11

    .line 742
    .local v11, "msisdn":Ljava/lang/String;
    if-eqz v11, :cond_1b

    .line 743
    new-instance v21, Landroid/content/ContentValues;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/content/ContentValues;-><init>(I)V

    .line 744
    .restart local v21    # "value":Landroid/content/ContentValues;
    const-string v22, "number"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v22, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 737
    .end local v21    # "value":Landroid/content/ContentValues;
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 735
    .end local v11    # "msisdn":Ljava/lang/String;
    .end local v14    # "nSubCount":I
    .end local v20    # "temp":Landroid/telephony/SubInfoRecord;
    :cond_1c
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_10

    .line 751
    .restart local v14    # "nSubCount":I
    :cond_1d
    const/4 v5, 0x0

    .line 752
    .local v5, "hasSimRemoved":Z
    const/4 v6, 0x0

    :goto_12
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_1e

    .line 753
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    if-eqz v22, :cond_21

    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    aget-object v22, v15, v6

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_21

    .line 755
    const/4 v5, 0x1

    .line 760
    :cond_1e
    if-nez v12, :cond_26

    .line 762
    if-eqz v5, :cond_23

    .line 764
    const/4 v6, 0x0

    :goto_13
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_1f

    .line 765
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    const/16 v23, -0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_22

    .line 766
    const-string v22, "No new SIM detected and SIM repositioned"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 767
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-static {v0, v14, v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    .line 772
    :cond_1f
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ne v6, v0, :cond_20

    .line 774
    const-string v22, "No new SIM detected and SIM removed"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 775
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-static {v0, v14, v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    .line 800
    :cond_20
    :goto_14
    const-string v22, "[updateSimInfoByIccId]- SimInfo update complete"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    monitor-exit p0

    return-void

    .line 752
    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 764
    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 780
    :cond_23
    const/4 v6, 0x0

    :goto_15
    :try_start_2
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_24

    .line 781
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    const/16 v23, -0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_25

    .line 782
    const-string v22, "No new SIM detected and SIM repositioned"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 783
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-static {v0, v14, v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    .line 788
    :cond_24
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ne v6, v0, :cond_20

    .line 790
    const-string v22, "[updateSimInfoByIccId] All SIM inserted into the same slot"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 791
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-static {v0, v14, v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    goto :goto_14

    .line 780
    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 796
    :cond_26
    const-string v22, "New SIM detected"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 797
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v0, v14, v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_14

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 660
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
