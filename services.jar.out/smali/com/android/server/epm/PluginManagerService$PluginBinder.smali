.class Lcom/android/server/epm/PluginManagerService$PluginBinder;
.super Landroid/app/epm/IPluginManager$Stub;
.source "PluginManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/PluginManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginBinder"
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCallback:Landroid/app/epm/IPluginManagerCallback;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/epm/PluginManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/epm/PluginManagerService;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    invoke-direct {p0}, Landroid/app/epm/IPluginManager$Stub;-><init>()V

    new-instance v4, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;

    invoke-direct {v4, p0}, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;-><init>(Lcom/android/server/epm/PluginManagerService$PluginBinder;)V

    iput-object v4, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    # setter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1, v4}, Lcom/android/server/epm/PluginManagerService;->access$002(Lcom/android/server/epm/PluginManagerService;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/server/epm/PluginManagerService$PluginBinder;->registerModules()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, "allHelper":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/epm/IPluginHelper;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/IPluginHelper;

    .local v2, "iPluginHelper":Lcom/android/server/epm/IPluginHelper;
    sget-object v4, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/epm/PluginManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PluginBinder parsePlugins -- iPluginHelper = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Lcom/android/server/epm/IPluginHelper;->parsePlugins()V

    goto :goto_0

    .end local v2    # "iPluginHelper":Lcom/android/server/epm/IPluginHelper;
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/epm/PluginManagerService$PluginBinder;Ljava/lang/String;)Lcom/android/server/epm/IPluginHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/PluginManagerService$PluginBinder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/epm/PluginManagerService$PluginBinder;->getModule(Ljava/lang/String;)Lcom/android/server/epm/IPluginHelper;

    move-result-object v0

    return-object v0
.end method

.method private getModule(Ljava/lang/String;)Lcom/android/server/epm/IPluginHelper;
    .locals 1
    .param p1, "moduleKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/epm/IPluginHelper;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerModules()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v1, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;-><init>(Landroid/content/Context;)V

    .local v0, "tms":Lcom/android/server/epm/overlay/ThemeManagerService;
    iget-object v1, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "com.samsung.android.permission.SAMSUNG_OVERLAY_LANGUAGE"

    new-instance v3, Lcom/android/server/epm/overlay/LanguagePackService;

    iget-object v4, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/epm/overlay/LanguagePackService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "tms":Lcom/android/server/epm/overlay/ThemeManagerService;
    :cond_0
    return-void
.end method


# virtual methods
.method public changePluginState(Ljava/lang/String;IIZ)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "order"    # I
    .param p4, "isTrial"    # Z

    .prologue
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bdl":Landroid/os/Bundle;
    const-string v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isTrial"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "order"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/IPluginHelper;

    invoke-interface {v2}, Lcom/android/server/epm/IPluginHelper;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    return v2
.end method

.method public getActiveComponents()[Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/epm/IPluginHelper;

    invoke-interface {v0}, Lcom/android/server/epm/IPluginHelper;->getActiveComponents()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, "allHelper":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/epm/IPluginHelper;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/epm/IPluginHelper;

    .local v4, "iPluginHelper":Lcom/android/server/epm/IPluginHelper;
    invoke-interface {v4}, Lcom/android/server/epm/IPluginHelper;->getCategory()I

    move-result v2

    .local v2, "data":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "data":I
    .end local v4    # "iPluginHelper":Lcom/android/server/epm/IPluginHelper;
    :cond_0
    return-object v1
.end method

.method public getComponentPackageMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/epm/IPluginHelper;

    invoke-interface {v0}, Lcom/android/server/epm/IPluginHelper;->getComponentPackageMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentPackageMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/epm/PluginManagerService$PluginBinder;->getComponentPackageMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getLanguagePackList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public bridge synthetic getLanguagePackList(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/epm/PluginManagerService$PluginBinder;->getLanguagePackList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getListByCategory(I)Ljava/util/List;
    .locals 5
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, "allHelper":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/epm/IPluginHelper;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/IPluginHelper;

    .local v2, "iPluginHelper":Lcom/android/server/epm/IPluginHelper;
    invoke-interface {v2}, Lcom/android/server/epm/IPluginHelper;->getCategory()I

    move-result v3

    if-ne p1, v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/android/server/epm/IPluginHelper;->getPluginList()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v2    # "iPluginHelper":Lcom/android/server/epm/IPluginHelper;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPluginDetailsList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, "pluginMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, "allHelper":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/epm/IPluginHelper;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/epm/IPluginHelper;

    .local v3, "iPluginHelper":Lcom/android/server/epm/IPluginHelper;
    invoke-interface {v3}, Lcom/android/server/epm/IPluginHelper;->getPluginList()Ljava/util/HashMap;

    move-result-object v1

    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "iPluginHelper":Lcom/android/server/epm/IPluginHelper;
    :cond_0
    return-object v4
.end method

.method public bridge synthetic getPluginDetailsList(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/epm/PluginManagerService$PluginBinder;->getPluginDetailsList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public installThemePackage(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "path"    # Landroid/net/Uri;
    .param p2, "isTrial"    # Z

    .prologue
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bdl":Landroid/os/Bundle;
    const-string v2, "path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "isTrial"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/IPluginHelper;

    invoke-interface {v2}, Lcom/android/server/epm/IPluginHelper;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerCallback(Landroid/app/epm/IPluginManagerCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/epm/IPluginManagerCallback;

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    iget-object v2, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "perm":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/IPluginHelper;

    invoke-interface {v2, p1}, Lcom/android/server/epm/IPluginHelper;->setCallback(Landroid/app/epm/IPluginManagerCallback;)V

    goto :goto_0

    .end local v1    # "perm":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bdl":Landroid/os/Bundle;
    const-string v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/IPluginHelper;

    invoke-interface {v2}, Lcom/android/server/epm/IPluginHelper;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
