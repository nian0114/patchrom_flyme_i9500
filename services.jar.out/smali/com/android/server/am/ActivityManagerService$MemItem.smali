.class final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemItem"
.end annotation


# instance fields
.field final hasActivities:Z

.field final id:I

.field final isProc:Z

.field final label:Ljava/lang/String;

.field final pss:J

.field final shortLabel:Ljava/lang/String;

.field subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityManagerService$MemItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_id"    # I

    .prologue
    const/4 v0, 0x0

    .line 17227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17228
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 17229
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 17230
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 17231
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 17232
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 17233
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 17234
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 1
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_id"    # I
    .param p6, "_hasActivities"    # Z

    .prologue
    .line 17218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 17220
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 17221
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 17222
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 17223
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 17224
    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 17225
    return-void
.end method
