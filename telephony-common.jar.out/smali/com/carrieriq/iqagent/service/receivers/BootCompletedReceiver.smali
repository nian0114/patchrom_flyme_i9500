.class public Lcom/carrieriq/iqagent/service/receivers/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BootCompletedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "BootCompletedReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
