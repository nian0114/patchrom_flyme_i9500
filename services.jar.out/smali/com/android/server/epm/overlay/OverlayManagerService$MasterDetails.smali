.class Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterDetails"
.end annotation


# instance fields
.field mCategory:Ljava/lang/String;

.field mDesc:Ljava/lang/String;

.field mStatus:Z

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/epm/overlay/OverlayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/epm/overlay/OverlayManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "status"    # Z

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mDesc:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mCategory:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mStatus:Z

    return-void
.end method
