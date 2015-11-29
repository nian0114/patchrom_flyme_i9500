.class Lcom/android/server/wifi/WifiServiceImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 788
    const-string v0, ""

    .line 789
    .local v0, "mMCCMNC":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 790
    .local v1, "simState_int":I
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1900()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathGeneralinfo:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2000()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->isBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1100(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 793
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->access$2100(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;)V

    .line 794
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfileLoaded:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600()Z

    move-result v2

    if-nez v2, :cond_0

    .line 795
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->addWifiVendorProfile()V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathGeneralinfo:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2000()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1900()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->isBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1100(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 797
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 798
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getGeneralNwInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 799
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getPrevNetworkName()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 800
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->removeChangedWifiProfile()V

    .line 801
    const-string v2, ""

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mRemoveWifiProfile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->addChangedWifiProfile()V

    goto :goto_0
.end method
