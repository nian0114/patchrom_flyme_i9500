.class public Lcom/android/zhys/Receiver1;
.super Landroid/content/BroadcastReceiver;
.source "Receiver1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecretCodeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    const-string v2, "SecretCodeReceiver"

    const-string v3, "received secret code broadcast"

    invoke-static {v2, v3}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "sCode":Ljava/lang/String;
    const-string v2, "555666888"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.ck.services.intent.ACTIVE_ENG_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "intent2":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    .end local v0    # "intent2":Landroid/content/Intent;
    .end local v1    # "sCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 23
    .restart local v1    # "sCode":Ljava/lang/String;
    :cond_1
    const-string v2, "888666555"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.ck.services.intent.DEACTIVE_ENG_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .restart local v0    # "intent2":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
