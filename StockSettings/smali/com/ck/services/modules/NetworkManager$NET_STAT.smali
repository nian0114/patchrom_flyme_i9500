.class public final enum Lcom/ck/services/modules/NetworkManager$NET_STAT;
.super Ljava/lang/Enum;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/modules/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NET_STAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ck/services/modules/NetworkManager$NET_STAT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ck/services/modules/NetworkManager$NET_STAT;

.field public static final enum NET_GPRS_CONN:Lcom/ck/services/modules/NetworkManager$NET_STAT;

.field public static final enum NET_GPRS_LOST:Lcom/ck/services/modules/NetworkManager$NET_STAT;

.field public static final enum NET_WIFI_CONN:Lcom/ck/services/modules/NetworkManager$NET_STAT;

.field public static final enum NET_WIFI_LOST:Lcom/ck/services/modules/NetworkManager$NET_STAT;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;

    const-string v1, "NET_GPRS_LOST"

    invoke-direct {v0, v1, v2}, Lcom/ck/services/modules/NetworkManager$NET_STAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_GPRS_LOST:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    .line 45
    new-instance v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;

    const-string v1, "NET_GPRS_CONN"

    invoke-direct {v0, v1, v3}, Lcom/ck/services/modules/NetworkManager$NET_STAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_GPRS_CONN:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    .line 46
    new-instance v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;

    const-string v1, "NET_WIFI_LOST"

    invoke-direct {v0, v1, v4}, Lcom/ck/services/modules/NetworkManager$NET_STAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_WIFI_LOST:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    .line 47
    new-instance v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;

    const-string v1, "NET_WIFI_CONN"

    invoke-direct {v0, v1, v5}, Lcom/ck/services/modules/NetworkManager$NET_STAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_WIFI_CONN:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ck/services/modules/NetworkManager$NET_STAT;

    sget-object v1, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_GPRS_LOST:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_GPRS_CONN:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_WIFI_LOST:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_WIFI_CONN:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;->ENUM$VALUES:[Lcom/ck/services/modules/NetworkManager$NET_STAT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ck/services/modules/NetworkManager$NET_STAT;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;

    return-object v0
.end method

.method public static values()[Lcom/ck/services/modules/NetworkManager$NET_STAT;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ck/services/modules/NetworkManager$NET_STAT;->ENUM$VALUES:[Lcom/ck/services/modules/NetworkManager$NET_STAT;

    array-length v1, v0

    new-array v2, v1, [Lcom/ck/services/modules/NetworkManager$NET_STAT;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
