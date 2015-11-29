.class public Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private Eap:Ljava/lang/String;

.field private Identity:Ljava/lang/String;

.field private MCCMNC:Ljava/lang/String;

.field private NetworkName:Ljava/lang/String;

.field private Password:Ljava/lang/String;

.field private Phase2:Ljava/lang/String;

.field private Priority:Ljava/lang/String;

.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1701
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1702
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1703
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1704
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1705
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1706
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1707
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 1708
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 1709
    const-string v0, "None"

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    .line 1710
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1713
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1714
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1716
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1717
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1718
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;

    .prologue
    .line 1719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1720
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1721
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1722
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1723
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1724
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1726
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1727
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1728
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1729
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1730
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1731
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "identity"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 1732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1733
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1734
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1735
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1736
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1737
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 1738
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 1739
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "identity"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "phase2"    # Ljava/lang/String;

    .prologue
    .line 1740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1741
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1742
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1743
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1744
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1745
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 1746
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 1747
    iput-object p7, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    .line 1748
    return-void
.end method


# virtual methods
.method public getEap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    return-object v0
.end method

.method public getMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
