.class public Lcom/sec/android/app/camera/BootCamera;
.super Landroid/content/BroadcastReceiver;
.source "BootCamera.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 38
    const-string v6, "CameraBoot"

    const-string v7, "Start Camera application"

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 43
    .local v4, "mPref":Landroid/content/SharedPreferences;
    const-string v6, "pref_transition_animation_key"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 45
    .local v3, "mIsTransitionRestore":F
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_0

    .line 47
    :try_start_0
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 48
    .local v5, "windowManager":Landroid/view/IWindowManager;
    const-string v6, "CameraBoot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restore transition animation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v6, 0x1

    invoke-interface {v5, v6, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 50
    const/4 v5, 0x0

    .line 52
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 53
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_transition_animation_key"

    const/high16 v7, -0x40800000    # -1.0f

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "mIsTransitionRestore":F
    .end local v4    # "mPref":Landroid/content/SharedPreferences;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local v3    # "mIsTransitionRestore":F
    .restart local v4    # "mPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
