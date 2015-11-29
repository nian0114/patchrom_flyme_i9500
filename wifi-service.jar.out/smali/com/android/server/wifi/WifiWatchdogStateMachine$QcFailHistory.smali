.class Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcFailHistory"
.end annotation


# instance fields
.field apIndex:I

.field avoidance:Z

.field bssid:Ljava/lang/String;

.field bytes:I

.field currentDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field dataRate:I

.field detection:Z

.field error:I

.field line:I

.field poorLinkLine:I

.field qcId:I

.field qcStep:I

.field qcTrigger:I

.field rssi:I

.field ssid:Ljava/lang/String;

.field state:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

.field time:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;IIIIIIZZILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "qcStep"    # I
    .param p4, "qcId"    # I
    .param p5, "error"    # I
    .param p6, "bytes"    # I
    .param p7, "rssi"    # I
    .param p8, "dataRate"    # I
    .param p9, "detection"    # Z
    .param p10, "avoidance"    # Z
    .param p11, "apIndex"    # I
    .param p12, "ssid"    # Ljava/lang/String;
    .param p13, "bssid"    # Ljava/lang/String;
    .param p14, "line"    # I
    .param p15, "poorLinkLine"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iput p4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    iput p5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iput p6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    iput p7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    iput p8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    iput-boolean p9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    iput-boolean p10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    iput p11, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    iput-object p12, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    iput-object p13, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    iput p14, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    iput p15, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    return-void
.end method
