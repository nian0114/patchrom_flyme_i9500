.class Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p2, :cond_1

    const-string v0, "intent is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->getIntentFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;

    invoke-virtual {v0, p2}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->updateContext(Landroid/content/Intent;)V

    goto :goto_0
.end method
