.class public Lcom/android/zhys/MainApplet;
.super Landroid/app/Application;
.source "MainApplet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    const-string v1, "MainApplet"

    const-string v2, "Application init, register crash handler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/android/zhys/CrashHandler;->getInstance()Lcom/android/zhys/CrashHandler;

    move-result-object v0

    .line 18
    .local v0, "crashHandler":Lcom/android/zhys/CrashHandler;
    invoke-virtual {v0, p0}, Lcom/android/zhys/CrashHandler;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 26
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 32
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 38
    return-void
.end method
