.class public Lcom/nian/flymetools/MainActivity;
.super Landroid/preference/PreferenceActivity;
.source "MainActivity.java"


# static fields
.field private static final ASSEST1:Ljava/lang/String; = "ro.product.model_romer"

.field private static final ASSEST2:Ljava/lang/String; = "ro.flyme.romer"

.field private static final ASSEST3:Ljava/lang/String; = "i9500_nian0114"

.field private static final ASSEST4:Ljava/lang/String; = "nian0114"

.field private static final LOG_TAG:Ljava/lang/String; = "StockSettings"

.field private static final SAM_MULTI_CB_KEY:Ljava/lang/String; = "multi_window"

.field private static final SAM_MULTI_DB_KEY:Ljava/lang/String; = "multi_window_enabled"

.field private static final SAM_SLEEP_KEY:Ljava/lang/String; = "intelligent_sleep_mode"

.field private static final SAM_TOUCH_KEY:Ljava/lang/String; = "auto_adjust_touch"


# instance fields
.field private mSamMulti:Landroid/preference/CheckBoxPreference;

.field private mSamSleep:Landroid/preference/CheckBoxPreference;

.field private mSamTouch:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static isNian()Z
    .locals 2

    .prologue
    .line 35
    const-string v0, "ro.product.model_romer"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "i9500_nian0114"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.flyme.romer"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nian0114"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    iget-object v3, p0, Lcom/nian/flymetools/MainActivity;->mSamTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "auto_adjust_touch"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    iget-object v3, p0, Lcom/nian/flymetools/MainActivity;->mSamMulti:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "multi_window_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/nian/flymetools/MainActivity;->mSamSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    return-void

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    :cond_1
    move v0, v2

    .line 98
    goto :goto_1

    :cond_2
    move v1, v2

    .line 99
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 40
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/nian/flymetools/MainActivity;->addPreferencesFromResource(I)V

    .line 46
    invoke-static {}, Lcom/nian/flymetools/MainActivity;->isNian()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 49
    :cond_1
    const-string v1, "auto_adjust_touch"

    invoke-virtual {p0, v1}, Lcom/nian/flymetools/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/nian/flymetools/MainActivity;->mSamTouch:Landroid/preference/CheckBoxPreference;

    .line 50
    const-string v1, "multi_window"

    invoke-virtual {p0, v1}, Lcom/nian/flymetools/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/nian/flymetools/MainActivity;->mSamMulti:Landroid/preference/CheckBoxPreference;

    .line 51
    const-string v1, "intelligent_sleep_mode"

    invoke-virtual {p0, v1}, Lcom/nian/flymetools/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/nian/flymetools/MainActivity;->mSamSleep:Landroid/preference/CheckBoxPreference;

    .line 52
    invoke-direct {p0}, Lcom/nian/flymetools/MainActivity;->updateState()V

    .line 53
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->finish()V

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/nian/flymetools/MainActivity;->mSamTouch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/nian/flymetools/MainActivity;->mSamTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_adjust_touch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_adjust_touch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/nian/flymetools/MainActivity;->mSamMulti:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/nian/flymetools/MainActivity;->mSamMulti:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/nian/flymetools/MainActivity;->mSamSleep:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/nian/flymetools/MainActivity;->mSamSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/nian/flymetools/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
