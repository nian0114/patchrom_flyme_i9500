.class Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
.super Ljava/lang/Object;
.source "BatteryStatsDumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerObject"
.end annotation


# instance fields
.field isSystem:Z

.field networkUsage:J

.field packageName:Ljava/lang/String;

.field powerUid:D

.field screenUsage:D

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsDumper;

.field usageTime:J


# direct methods
.method private constructor <init>(Lcom/android/internal/os/BatteryStatsDumper;DLjava/lang/String;ZJDJ)V
    .locals 0
    .param p2, "power"    # D
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isSystem"    # Z
    .param p6, "networkUsage"    # J
    .param p8, "screenUsage"    # D
    .param p10, "usageTime"    # J

    .prologue
    .line 835
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->this$0:Lcom/android/internal/os/BatteryStatsDumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->powerUid:D

    .line 839
    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    .line 841
    iput-boolean p5, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->isSystem:Z

    .line 843
    iput-wide p6, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->networkUsage:J

    .line 845
    iput-wide p8, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->screenUsage:D

    .line 847
    iput-wide p10, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->usageTime:J

    .line 849
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsDumper;DLjava/lang/String;ZJDJLcom/android/internal/os/BatteryStatsDumper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/BatteryStatsDumper;
    .param p2, "x1"    # D
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Z
    .param p6, "x4"    # J
    .param p8, "x5"    # D
    .param p10, "x6"    # J
    .param p12, "x7"    # Lcom/android/internal/os/BatteryStatsDumper$1;

    .prologue
    .line 820
    invoke-direct/range {p0 .. p11}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(Lcom/android/internal/os/BatteryStatsDumper;DLjava/lang/String;ZJDJ)V

    return-void
.end method
