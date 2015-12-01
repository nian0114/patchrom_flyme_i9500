.class public Lcom/android/providers/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final mValidTables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_ALARM:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_CAMERA:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_CHATONV:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_INCOMMING_CALL:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_MUSIC:Ljava/lang/String;

.field private isKnoxUser:Z

.field public mAutomaticAvailable:Z

.field private mContext:Landroid/content/Context;

.field private mUser:Landroid/content/pm/UserInfo;

.field private mUserHandle:I

.field private recordSettings:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "global"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bluetooth_devices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "powersaving_appsetting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "gservices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "old_favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p2}, Lcom/android/providers/settings/DatabaseHelper;->dbNameForUser(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x71

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v1, "voice_input_control"

    iput-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    const-string v1, "voice_input_control_incomming_calls"

    iput-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->VOICEINPUTCONTROL_INCOMMING_CALL:Ljava/lang/String;

    const-string v1, "voice_input_control_chatonv"

    iput-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->VOICEINPUTCONTROL_CHATONV:Ljava/lang/String;

    const-string v1, "voice_input_control_alarm"

    iput-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->VOICEINPUTCONTROL_ALARM:Ljava/lang/String;

    const-string v1, "voice_input_control_camera"

    iput-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->VOICEINPUTCONTROL_CAMERA:Ljava/lang/String;

    const-string v1, "voice_input_control_music"

    iput-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->VOICEINPUTCONTROL_MUSIC:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->recordSettings:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    iput-object p1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    iget v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    return-void
.end method

.method private AmIGuestMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->isSupportGuestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ChangeDefaultVolume()V
    .locals 0

    .prologue
    return-void
.end method

.method private createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-string v0, "CREATE TABLE global (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX globalIndex1 ON global (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-string v0, "CREATE TABLE secure (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX secureIndex1 ON secure (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static dbNameForUser(I)Ljava/lang/String;
    .locals 3
    .param p0, "userHandle"    # I

    .prologue
    if-nez p0, :cond_0

    const-string v1, "settings.db"

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "settings.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "country_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SettingsProvider"

    const-string v2, "country code is empty"

    invoke-static {v1, v2}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getDefQuickBtnNum()I
    .locals 5

    .prologue
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "salesCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ril.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDpiOfDevice()I

    move-result v1

    .local v1, "dpi":I
    sparse-switch v1, :sswitch_data_0

    const/16 v0, 0xa

    .local v0, "defQuickBtnNum":I
    :goto_0
    const-string v3, "KOREA"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0xb

    :cond_1
    return v0

    .end local v0    # "defQuickBtnNum":I
    :sswitch_0
    const/16 v0, 0x9

    .restart local v0    # "defQuickBtnNum":I
    goto :goto_0

    .end local v0    # "defQuickBtnNum":I
    :sswitch_1
    const/16 v0, 0xb

    .restart local v0    # "defQuickBtnNum":I
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x320 -> :sswitch_1
        0x500 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDpiOfDevice()I
    .locals 8

    .prologue
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .local v5, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .local v2, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .local v3, "point":Landroid/graphics/Point;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .local v0, "density":I
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v4

    .local v4, "rotation":I
    if-eqz v4, :cond_0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    :cond_0
    iget v6, v3, Landroid/graphics/Point;->y:I

    mul-int/lit16 v6, v6, 0xa0

    div-int v1, v6, v0

    .local v1, "dpi":I
    :goto_0
    return v1

    .end local v1    # "dpi":I
    :cond_1
    iget v6, v3, Landroid/graphics/Point;->x:I

    mul-int/lit16 v6, v6, 0xa0

    div-int v1, v6, v0

    .restart local v1    # "dpi":I
    goto :goto_0
.end method

.method private getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    const-string v0, "system"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .end local p4    # "defaultValue":I
    :cond_0
    return p4
.end method

.method private getLockScreenSetting(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "retvalue":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_SetLockScreenComponent"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "LockScreenOption":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "LockScreenOptionName":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LockScreenOptionName["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  name :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLockScreenSetting return value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p1, "applist"    # Ljava/lang/String;

    .prologue
    move-object/from16 v11, p1

    .local v11, "keyDefaultShortcut":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "resources":Landroid/content/res/Resources;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .local v19, "sb":Ljava/lang/StringBuilder;
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, "keyDefaultShorcutName":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "nLabelResId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "LauncherIntent":Landroid/content/Intent;
    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v14, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_6

    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_5

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, "sActivityName":Ljava/lang/String;
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .local v18, "sPackageName":Ljava/lang/String;
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v13, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-lez v13, :cond_1

    :goto_2
    const-string v20, "DCM"

    const-string v21, "ro.csc.sales_code"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const-string v20, "com.nttdocomo.android.schedulememo"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    :cond_0
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    goto :goto_2

    :cond_2
    if-nez v13, :cond_3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .local v17, "sLabel":Ljava/lang/String;
    :goto_4
    aget-object v20, v10, v8

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .end local v17    # "sLabel":Ljava/lang/String;
    :cond_3
    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    :goto_5
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .local v4, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .local v12, "metrics":Landroid/util/DisplayMetrics;
    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v5, "config":Landroid/content/res/Configuration;
    sget-object v20, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v6, Landroid/content/res/Resources;

    invoke-direct {v6, v4, v12, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .local v6, "defaultResources":Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .restart local v17    # "sLabel":Ljava/lang/String;
    goto :goto_4

    .end local v17    # "sLabel":Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v20, "SettingsProvider"

    const-string v21, "getLockScreenShortcut Resources NotFoundException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v17, ""

    .restart local v17    # "sLabel":Ljava/lang/String;
    goto :goto_4

    .end local v4    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "defaultResources":Landroid/content/res/Resources;
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .end local v17    # "sLabel":Ljava/lang/String;
    :cond_4
    const-string v17, ""

    .restart local v17    # "sLabel":Ljava/lang/String;
    goto :goto_4

    .end local v16    # "sActivityName":Ljava/lang/String;
    .end local v17    # "sLabel":Ljava/lang/String;
    .end local v18    # "sPackageName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .end local v9    # "j":I
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .restart local v9    # "j":I
    .restart local v16    # "sActivityName":Ljava/lang/String;
    .restart local v18    # "sPackageName":Ljava/lang/String;
    :catch_1
    move-exception v20

    goto :goto_5
.end method

.method private getOldDefaultDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getQuickSettingsList()Ljava/lang/String;
    .locals 10

    .prologue
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "salesCode":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "ril.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-string v7, "ro.build.characteristics"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "deviceType":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "isTablet":Z
    if-eqz v1, :cond_1

    const-string v7, "tablet"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    :cond_1
    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "defaultQuickArr":[Ljava/lang/String;
    const-string v7, "CTC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->isGridSimpleMenuEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "CTC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f080000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v7, "SettingsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getQuickSettingsList() - defaultQuickArr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_a

    const/4 v5, 0x0

    :goto_1
    return-object v5

    :cond_4
    const-string v7, "CHN"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "CHM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "CHU"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "CHC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v7, "VZW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v7, "DCM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "KDI"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v7, "KOREA"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v5, ""

    .local v5, "quickSettingsList":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v7, v0

    if-ge v2, v7, :cond_2f

    aget-object v4, v0, v2

    .local v4, "quickSetting":Ljava/lang/String;
    const-string v7, "Wifi"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_b
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    const-string v7, "Location"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_e
    const-string v7, "Ebook"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "AdaptiveDisplay"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "SilentMode"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "AutoRotate"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "Bluetooth"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.bluetooth"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto :goto_3

    :cond_f
    const-string v7, "MobileData"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-nez v7, :cond_b

    const-string v7, "TMB"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "ATT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "SPR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "BMC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "BWA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "VMC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "RWC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "FMC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "MTA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "TLS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "KDO"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "SPC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "ESK"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "GLW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "MCT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "VTR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "BST"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "VMU"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "XAS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "AIO"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_10
    const-string v7, "VoLte"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "TGY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_11
    const-string v7, "PowerSaving"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v7}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_4

    :cond_12
    const-string v7, "AllShareCast"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.sec.feature.wfd_support"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_13
    const-string v7, "MultiWindow"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->hasMuliWindowFeature()Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_3

    :cond_14
    const-string v7, "WiFiHotspot"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "ATT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "SPR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "TMB"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "USC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "CRI"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "VMU"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "BST"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "XAS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "TFN"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "XAR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "AIO"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_UseChameleon"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    iget v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_15
    const-string v7, "SBeam"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.nfc"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/providers/settings/DatabaseHelper;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_16
    const-string v7, "Nfc"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.nfc"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_17
    const-string v7, "AirView"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v7}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v7}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-static {v7}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_3

    :cond_18
    const-string v7, "AirGesture"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v7}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v7}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_19
    const-string v7, "DrivingMode"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v7}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_1a
    const-string v7, "SmartStay"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "SmartPause"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->isSupportStart_J_project()Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_3

    :cond_1b
    const-string v7, "SmartScroll"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->isSupportStart_J_project()Z

    move-result v7

    if-eqz v7, :cond_b

    goto/16 :goto_3

    :cond_1c
    const-string v7, "Sync"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    iget v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-eqz v7, :cond_1d

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_b

    :cond_1d
    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->AmIGuestMode()Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_1e
    const-string v7, "AirplaneMode"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->AmIGuestMode()Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_1f
    const-string v7, "SmartNetwork"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v7}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_3

    :cond_20
    const-string v7, "PersonalMode"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "CarMode"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v7, "com.sec.android.automotive.drivelink"

    invoke-direct {p0, v7}, Lcom/android/providers/settings/DatabaseHelper;->hasApplication(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_21

    const-string v7, "com.sec.android.app.automotive.carmode"

    invoke-direct {p0, v7}, Lcom/android/providers/settings/DatabaseHelper;->hasApplication(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_21
    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->AmIGuestMode()Z

    move-result v7

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_22
    const-string v7, "DefaultData"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const-string v7, "DCGG"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    const-string v7, "DCGS"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    const-string v7, "DCGGS"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_23
    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_24
    const-string v7, "WifiCalling"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "VoWiFi"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_25
    const-string v7, "NetworkBooster"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "Toolbox"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "CameraAccess"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "SFinder"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->hasSFinderFeature()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "VZW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    const-string v7, "ATT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    const-string v7, "AIO"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    const-string v7, "ACG"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_26
    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_27
    const-string v7, "QuickConnect"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const-string v7, "com.samsung.android.sconnect"

    invoke-direct {p0, v7}, Lcom/android/providers/settings/DatabaseHelper;->hasApplication(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "VZW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    const-string v7, "ATT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    const-string v7, "AIO"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_28
    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->AmIGuestMode()Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    if-eqz v7, :cond_29

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    if-nez v7, :cond_b

    :cond_29
    iget v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_2a
    const-string v7, "TouchSensitivity"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "frescolte"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "hl3g"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "hllte"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ha3g"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "hlte"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "jalte"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_2b
    const-string v7, "UltraPowerSaving"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "FlashLight"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.camera.flash"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_2c
    const-string v7, "SideKey"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_2d
    const-string v7, "Apn"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    :cond_2e
    const-string v7, "FloatingMessage"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v7, :cond_d

    goto/16 :goto_3

    .end local v4    # "quickSetting":Ljava/lang/String;
    :cond_2f
    const-string v7, "SettingsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getQuickSettingsList() - quickSettingsList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "sales_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .local v9, "val":Ljava/lang/String;
    if-nez v9, :cond_1

    .end local p4    # "defaultValue":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9    # "val":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p4

    .restart local v9    # "val":Ljava/lang/String;
    .restart local p4    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object p4, v9

    goto :goto_0

    .end local v9    # "val":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getToolboxShortcut(Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p1, "applist"    # Ljava/lang/String;

    .prologue
    move-object/from16 v10, p1

    .local v10, "keyDefaultShortcut":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "resources":Landroid/content/res/Resources;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .local v18, "sb":Ljava/lang/StringBuilder;
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "keyDefaultShorcutName":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "nLabelResId":I
    const/16 v19, 0x0

    .local v19, "skipAppCnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .local v13, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "LauncherIntent":Landroid/content/Intent;
    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v13, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v9

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_6

    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    const-string v20, "DCM"

    const-string v21, "ro.csc.sales_code"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v21, "com.nttdocomo.android.schedulememo"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .local v15, "sActivityName":Ljava/lang/String;
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .local v17, "sPackageName":Ljava/lang/String;
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v12, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-lez v12, :cond_1

    :goto_3
    if-nez v12, :cond_2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, "sLabel":Ljava/lang/String;
    :goto_4
    aget-object v20, v9, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .end local v16    # "sLabel":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    goto :goto_3

    :cond_2
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_5
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .local v4, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .local v11, "metrics":Landroid/util/DisplayMetrics;
    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v5, "config":Landroid/content/res/Configuration;
    sget-object v20, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v6, Landroid/content/res/Resources;

    invoke-direct {v6, v4, v11, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .local v6, "defaultResources":Landroid/content/res/Resources;
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "sLabel":Ljava/lang/String;
    goto/16 :goto_4

    .end local v4    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "defaultResources":Landroid/content/res/Resources;
    .end local v11    # "metrics":Landroid/util/DisplayMetrics;
    .end local v16    # "sLabel":Ljava/lang/String;
    :cond_3
    const-string v16, ""

    .restart local v16    # "sLabel":Ljava/lang/String;
    goto/16 :goto_4

    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .end local v15    # "sActivityName":Ljava/lang/String;
    .end local v16    # "sLabel":Ljava/lang/String;
    .end local v17    # "sPackageName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .end local v8    # "j":I
    :cond_6
    const/4 v7, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v7, v0, :cond_7

    const-string v20, ";"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .restart local v8    # "j":I
    .restart local v15    # "sActivityName":Ljava/lang/String;
    .restart local v17    # "sPackageName":Ljava/lang/String;
    :catch_0
    move-exception v20

    goto :goto_5
.end method

.method private hasApplication(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    .local v2, "result":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasMuliWindowFeature()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasNewVoiceControlConcept()Z
    .locals 2

    .prologue
    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "sales_code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->isAfterKModel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasSFinderFeature()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasSensorHubFeature()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private isAfterKModel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "salesCode"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_1

    const-string v0, "millet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "matisse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chagall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "klimt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "degas"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllNAVendor()Z
    .locals 2

    .prologue
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .end local v0    # "enable":I
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "enable":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static isGridSimpleMenuEnabled()Z
    .locals 2

    .prologue
    const-string v0, "DEFAULT"

    .local v0, "type":Ljava/lang/String;
    const-string v1, "GRIDLIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GRIDLIST_SIMPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOSUpgrade()Z
    .locals 2

    .prologue
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "melius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "golden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serrano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "garda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wilcox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "p4note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mproject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kona"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fresco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hl3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ha3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSBeamSupported(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.directshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "SettingsProvider"

    const-string v2, "isSBeamSupported : EXIST"

    invoke-static {v1, v2}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SettingsProvider"

    const-string v3, "isSBeamSupported : NOT EXIST"

    invoke-static {v2, v3}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSupportGuestMode()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportStart_J_project()Z
    .locals 2

    .prologue
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ajantalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsglte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chagall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "crater"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "degas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flteskt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "frescolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gardalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnoteds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "goldenlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ha3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "havelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "heat3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hl3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hllte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hvolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jactivelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jflte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jftdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jfve3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jfvelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jfvolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kanas3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kaverilte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klimt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kmini3gub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ks01lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt02lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m3xx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "matisse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "melius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "millet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mondrian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "moutailte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mproject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ms013g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rubens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3ve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "santos10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serrano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serranovolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tn10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tn8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v1a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "victor3gds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "viennalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wilcoxlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVNFestival()Z
    .locals 2

    .prologue
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "G900H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "XXV"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v1

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

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWeatherDetailSettings()Z
    .locals 2

    .prologue
    const-string v0, "1"

    const-string v1, "0"

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

.method private loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 27
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .local v21, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x7f030000

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .local v15, "parser":Landroid/content/res/XmlResourceParser;
    const-string v22, "bookmarks"

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v7, :cond_2

    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .local v12, "name":Ljava/lang/String;
    const-string v22, "bookmark"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "type":I
    :cond_2
    :goto_1
    return-void

    .restart local v7    # "depth":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "type":I
    :cond_3
    const/16 v22, 0x0

    const-string v23, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "pkg":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "class"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "cls":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "shortcut"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "shortcutStr":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "category"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "category":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .local v18, "shortcutValue":I
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to get shortcut for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "shortcutStr":Ljava/lang/String;
    .end local v18    # "shortcutValue":I
    .end local v20    # "type":I
    :catch_0
    move-exception v8

    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "cls":Ljava/lang/String;
    .restart local v7    # "depth":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v17    # "shortcutStr":Ljava/lang/String;
    .restart local v18    # "shortcutValue":I
    .restart local v20    # "type":I
    :cond_4
    if-eqz v16, :cond_5

    if-eqz v5, :cond_5

    const/4 v10, 0x0

    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :try_start_1
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .local v6, "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    :goto_2
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v11, "intent":Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .local v19, "title":Ljava/lang/String;
    :goto_3
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v22, "intent"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "shortcut"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v22, "bookmarks"

    const-string v23, "shortcut = ?"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v22, "bookmarks"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "shortcutStr":Ljava/lang/String;
    .end local v18    # "shortcutValue":I
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "type":I
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "cls":Ljava/lang/String;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "depth":I
    .restart local v10    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v17    # "shortcutStr":Ljava/lang/String;
    .restart local v18    # "shortcutValue":I
    .restart local v20    # "type":I
    :catch_2
    move-exception v8

    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x1

    :try_start_4
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, "packages":[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6    # "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v6    # "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v10

    goto/16 :goto_2

    :catch_3
    move-exception v9

    .local v9, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v14    # "packages":[Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v19, ""

    .restart local v19    # "title":Ljava/lang/String;
    goto/16 :goto_3

    .end local v11    # "intent":Landroid/content/Intent;
    .end local v19    # "title":Ljava/lang/String;
    :cond_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark for shortcut "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": missing package/class or category attributes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method private loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v2, 0x1

    const-string v0, "window_animation_scale"

    const/high16 v1, 0x7f070000

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    const-string v0, "transition_animation_scale"

    const v1, 0x7f070001

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    return-void
.end method

.method private loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v2, 0x1

    const-string v0, "MTR"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "haptic_feedback_enabled"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-static {v0}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040008

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "haptic_feedback_extra"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v0, "haptic_feedback_extra"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private loadDefaultTactileAssistEnableSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const-string v0, "def_tactileassist_enable"

    const v1, 0x7f050004

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_internal_enable"

    const v1, 0x7f050008

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    return-void
.end method

.method private loadDefaultTactileAssistLevelSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 5
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const v4, 0x7f050007

    const v3, 0x7f050006

    const v2, 0x7f050005

    const-string v0, "def_tactileassist_level"

    const v1, 0x7f050003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_strength_erm"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_density_erm"

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_sharpness_erm"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_strength_serm"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_density_serm"

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_sharpness_serm"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_strength_lra"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_density_lra"

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_sharpness_lra"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_strength_pzo"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_density_pzo"

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "def_tactileassist_sharpness_pzo"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    return-void
.end method

.method private loadEasyModeApps(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v2, 0x0

    const-string v0, "easy_mode_call"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_camera"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_clock"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_contacts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_email"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_gallery"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_home"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_internet"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_magnifier"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_messages"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_myfiles"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_music"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_phone"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_splanner"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_video"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "easy_mode_voicerecorder"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "base"    # I

    .prologue
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .local v5, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "sales_code":Ljava/lang/String;
    const-string v9, "ro.build.characteristics"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceType":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "isTablet":Z
    if-eqz v0, :cond_0

    const-string v9, "tablet"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "ril.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :try_start_0
    const-string v9, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    const-string v9, "airplane_mode_on"

    const v10, 0x7f040002

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v9, "airplane_mode_radios"

    const/high16 v10, 0x7f060000

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v9, "airplane_mode_toggleable_radios"

    const v10, 0x7f060001

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v9, "assisted_gps_enabled"

    const v10, 0x7f04000d

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v9, "auto_time"

    const v10, 0x7f040003

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v9, "auto_time_zone"

    const v10, 0x7f040004

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v10, "stay_on_while_plugged_in"

    const-string v9, "1"

    const-string v11, "ro.kernel.qemu"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f040028

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_2
    move v9, v7

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v5, v10, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v9, "wifi_sleep_policy"

    const v10, 0x7f050009

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v9, "mode_ringer"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v9, "package_verifier_enable"

    const v10, 0x7f04000c

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v9, "ON"

    const-string v10, "ON"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "wifi_on"

    const-string v10, "1"

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const-string v9, "wifi_networks_available_notification_on"

    const v10, 0x7f040012

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v9, "bluetooth_on"

    const v10, 0x7f040009

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v9, "cdma_cell_broadcast_sms"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_DefRoamingDataState"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "data_roaming"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    const-string v9, "device_provisioned"

    const v10, 0x7f04001b

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .local v2, "maxBytes":I
    if-lez v2, :cond_4

    const-string v9, "download_manager_max_bytes_over_mobile"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v9, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .local v3, "recommendedMaxBytes":I
    if-lez v3, :cond_5

    const-string v9, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_ConfigDataStatus"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "CG"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "DCGS"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "DCGGS"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "DCGG"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "mobile_data"

    const-string v10, "true"

    const-string v11, "ro.com.android.mobiledata"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v5, v9, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    const-string v7, "netstats_enabled"

    const v8, 0x7f04000f

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "usb_mass_storage_enabled"

    const v8, 0x7f040010

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "wifi_max_dhcp_retry_count"

    const v8, 0x7f050015

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "wifi_display_on"

    const v8, 0x7f04000a

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "lock_sound"

    const v8, 0x7f060009

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "unlock_sound"

    const v8, 0x7f06000a

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "trusted_sound"

    const v8, 0x7f06000b

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "power_sounds_enabled"

    const v8, 0x7f05000b

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "low_battery_sound"

    const v8, 0x7f060004

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v7}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "dock_sounds_enabled"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    const-string v7, "desk_dock_sound"

    const v8, 0x7f060005

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "desk_undock_sound"

    const v8, 0x7f060006

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "car_dock_sound"

    const v8, 0x7f060007

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "car_undock_sound"

    const v8, 0x7f060008

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "wireless_charging_started_sound"

    const v8, 0x7f06000c

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "dock_audio_media_enabled"

    const v8, 0x7f05000e

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "set_install_location"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "default_install_location"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "USC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "emergency_tone"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    const-string v7, "call_auto_retry"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "ro.telephony.default_network"

    sget v8, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .local v6, "type":I
    const-string v7, "preferred_network_mode"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "ro.telephony.default_cdma_sub"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "subscription_mode"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "low_battery_sound_timeout"

    const v8, 0x7f050016

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "wifi_scan_always_enabled"

    const v8, 0x7f050017

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "heads_up_notifications_enabled"

    const v8, 0x7f05001a

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "device_name"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "guest_user_enabled"

    const v8, 0x7f04002c

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v7, "first_sim_brightness_flag"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultTactileAssistEnableSettings(Landroid/database/sqlite/SQLiteStatement;)V

    invoke-direct {p0, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultTactileAssistLevelSettings(Landroid/database/sqlite/SQLiteStatement;)V

    if-eqz v1, :cond_11

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    invoke-static {v7}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "font_size"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    const-string v7, "wifi_free_wifi_scan_auto_connection_mode"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    return-void

    .end local v2    # "maxBytes":I
    .end local v3    # "recommendedMaxBytes":I
    .end local v6    # "type":I
    :cond_7
    move v9, v8

    goto/16 :goto_0

    :cond_8
    :try_start_1
    const-string v9, "wifi_on"

    const v10, 0x7f040011

    invoke-direct {p0, v5, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_9
    throw v7

    :cond_a
    :try_start_2
    const-string v9, "TGY"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "BRI"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v10, "data_roaming"

    const-string v9, "true"

    const-string v11, "ro.com.android.dataroaming"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v9, v7

    :goto_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v5, v10, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    move v9, v8

    goto :goto_8

    .restart local v2    # "maxBytes":I
    .restart local v3    # "recommendedMaxBytes":I
    :cond_c
    move v7, v8

    goto/16 :goto_3

    :cond_d
    const-string v9, "mobile_data"

    const-string v10, "true"

    const-string v11, "ro.com.android.mobiledata"

    const-string v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    :goto_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v5, v9, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    move v7, v8

    goto :goto_9

    :cond_f
    const-string v7, "dock_sounds_enabled"

    const v8, 0x7f05000c

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_10
    const-string v7, "emergency_tone"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    .restart local v6    # "type":I
    :cond_11
    const-string v7, "font_size"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7
.end method

.method private loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const-string v0, "MTR"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "backup_enabled"

    const v1, 0x7f040013

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :goto_0
    const-string v0, "backup_transport"

    const v1, 0x7f060003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "backup_enabled"

    const v1, 0x7f040014

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .local v3, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v8, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    const-string v9, "data_roaming2"

    const-string v8, "true"

    const-string v10, "ro.com.android.dataroaming_1"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v6

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v3, v9, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "location_providers_allowed"

    const v9, 0x7f060002

    invoke-direct {p0, v3, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v8, "location_pdr_enabled"

    const v9, 0x7f04000e

    invoke-direct {p0, v3, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v8, "kddi_cpa_on"

    const v9, 0x7f040027

    invoke-direct {p0, v3, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v8, "ro.com.android.wifi-watchlist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "wifiWatchList":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "wifi_watchdog_watch_list"

    invoke-direct {p0, v3, v8, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v8, "mock_location"

    const-string v9, "1"

    const-string v10, "ro.allow.mock.location"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v3, v8, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    const-string v6, "mount_play_not_snd"

    const v7, 0x7f040016

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "mount_ums_autostart"

    const v7, 0x7f040017

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "mount_ums_prompt"

    const v7, 0x7f040018

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "mount_ums_notify_enabled"

    const v7, 0x7f040019

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "accessibility_script_injection"

    const v7, 0x7f04001e

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "accessibility_web_content_key_bindings"

    const v7, 0x7f06000e

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "long_press_timeout"

    const v7, 0x7f050012

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "touch_exploration_enabled"

    const v7, 0x7f040020

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "speak_password"

    const v7, 0x7f04001f

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "accessibility_script_injection_url"

    const v7, 0x7f06000f

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "lockscreen.disabled"

    const v7, 0x7f04001a

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "screensaver_enabled"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v6}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "screensaver_activate_on_dock"

    const v7, 0x1120057

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "screensaver_activate_on_sleep"

    const v7, 0x1120058

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :goto_2
    const-string v6, "screensaver_components"

    const-string v7, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "screensaver_default_component"

    const v7, 0x104003c

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "accessibility_display_magnification_enabled"

    const v7, 0x7f040021

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "accessibility_display_magnification_scale"

    const v7, 0x7f070002

    const/4 v8, 0x1

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    const-string v6, "accessibility_display_magnification_auto_update"

    const v7, 0x7f040022

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "user_setup_complete"

    const v7, 0x7f040029

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "immersive_mode_confirmations"

    const v7, 0x7f06004b

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "install_non_market_apps"

    const v7, 0x7f04000b

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "wake_gesture_enabled"

    const v7, 0x7f04002b

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "lockscreen.options"

    const v7, 0x7f060010

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ATT"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-string v6, "lockscreen.power_button_instantly_locks"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v6, "lock_motion_tilt_to_unlock"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadTtsDefaults(Landroid/database/sqlite/SQLiteStatement;)V

    const-string v6, "lock_signature_visible_pattern"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "b_es_offl_enabled"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "b_ds_dialog_displayed_on_boot"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "b_ds_dialog_displayed_settings"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_guard_call_domestic"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_guard_data_domestic"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_guard_call_international"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_guard_data_international"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_guard_sms_international"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "sprint_gsm_voice_guard"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "sprint_gsm_data_guard"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "sprint_gsm_sms_guard"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_setting_call_domestic"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_setting_data_domestic"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_setting_call_international"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_setting_data_international"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "sprint_gsm_data_roaming"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_dial_international_enabled"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_guard_call_domestic_forced"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_guard_data_domestic_forced"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_guard_call_international_forced"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_guard_data_international_forced"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_setting_call_domestic_forced"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_setting_data_domestic_forced"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_setting_call_international_forced"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_setting_data_international_forced"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "roam_dial_international_forced"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "lock_screen_quick_note"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "VZW"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "auto_swipe_main_user"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    const-string v6, "USA"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "CAN"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "XAR"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "XAC"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_3
    const-string v6, "accessibility_sec_captioning_enabled"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    const-string v6, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "lock_screen_lock_after_timeout"

    const v7, 0x927c0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    const-string v6, "LGT"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "lgt_oz_startpage"

    const-string v7, "http://wap20.ez-i.co.kr"

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const-string v6, "sms_outgoing_check_interval_ms"

    const v7, 0x7f05001b

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "sms_outgoing_check_max_count"

    const v7, 0x7f05001c

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "samsungMessaging":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06005b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "kddiMessaging":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "vzwMsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/android/providers/settings/DatabaseHelper;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "sms_default_application"

    const v7, 0x7f06005c

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :cond_5
    :goto_6
    const-string v6, "XTC"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "SMA"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "GLB"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "XTE"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_6
    const-string v6, "lock_screen_show_notifications"

    const v7, 0x7f050019

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :goto_7
    const-string v6, "lock_screen_allow_private_notifications"

    const v7, 0x7f04002a

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "sleep_timeout"

    const v7, 0x7f050001

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7
    return-void

    .end local v1    # "kddiMessaging":Ljava/lang/String;
    .end local v2    # "samsungMessaging":Ljava/lang/String;
    .end local v4    # "vzwMsg":Ljava/lang/String;
    .end local v5    # "wifiWatchList":Ljava/lang/String;
    :cond_8
    move v8, v7

    goto/16 :goto_0

    .restart local v5    # "wifiWatchList":Ljava/lang/String;
    :cond_9
    move v6, v7

    goto/16 :goto_1

    :cond_a
    :try_start_1
    const-string v6, "screensaver_activate_on_dock"

    const v7, 0x1120058

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v6, "screensaver_activate_on_sleep"

    const v7, 0x1120057

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .end local v5    # "wifiWatchList":Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b
    throw v6

    .restart local v5    # "wifiWatchList":Ljava/lang/String;
    :cond_c
    :try_start_2
    const-string v6, "auto_swipe_main_user"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_d
    const-string v6, "accessibility_sec_captioning_enabled"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    const-string v6, "lock_screen_lock_after_timeout"

    const/16 v7, 0x1388

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .restart local v1    # "kddiMessaging":Ljava/lang/String;
    .restart local v2    # "samsungMessaging":Ljava/lang/String;
    .restart local v4    # "vzwMsg":Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/providers/settings/DatabaseHelper;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "sms_default_application"

    const v7, 0x7f060058

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_10
    const-string v6, "KDI"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/android/providers/settings/DatabaseHelper;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "sms_default_application"

    const v7, 0x7f06005b

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_11
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "hangout":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/providers/settings/DatabaseHelper;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "sms_default_application"

    const v7, 0x7f060059

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_6

    .end local v0    # "hangout":Ljava/lang/String;
    :cond_12
    const-string v6, "lock_screen_show_notifications"

    const v7, 0x7f050018

    invoke-direct {p0, v3, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const-string v0, "notification_panel_active_app_list"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notification_panel_active_app_list_for_reset"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_0
    const-string v0, "notification_panel_active_number_of_apps"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notification_panel_active_number_of_apps_for_reset"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_1
    invoke-virtual {p1, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    iget v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 52
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/16 v48, 0x0

    .local v48, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .local v36, "modelName":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SettingsProvider"

    const-string v5, "Model name is empty"

    invoke-static {v4, v5}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "deviceType":Ljava/lang/String;
    const/16 v30, 0x0

    .local v30, "isTablet":Z
    if-eqz v22, :cond_1

    const-string v4, "tablet"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    :cond_1
    const-string v4, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v48

    const-string v4, "dim_screen"

    const/high16 v5, 0x7f040000

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "screen_off_timeout"

    const/high16 v5, 0x7f050000

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "knox_finger_print_plus"

    const v5, 0x7f040001

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .local v43, "sales_code":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ril.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    :cond_2
    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "country_code":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "SettingsProvider"

    const-string v5, "country code is empty"

    invoke-static {v4, v5}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .local v21, "deviceName":Ljava/lang/String;
    const-string v4, ""

    const-string v5, "Galaxy S4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ATT"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v21, "Galaxy S4"

    :cond_4
    const-string v4, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v36, :cond_6

    const-string v4, "SCH-I545L"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "SCH-R530X"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v4, "voicemail_factory_reset"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string v4, "dtmf_tone_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "hearing_aid"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "tty_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "premium_watch_display_signature"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "premium_watch_switch_onoff"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "premium_watch_style_option"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "premium_watch_dual_clock"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "premium_watch_sound"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "dormant_switch_onoff"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v4, :cond_8

    const-string v4, "dormant_disable_incoming_calls"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v4, "dormant_disable_notifications"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "dormant_disable_alarm_and_timer"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "dormant_disable_led_indicator"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "dormant_always"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "dormant_start_hour"

    const/16 v5, 0x15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "dormant_start_min"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "dormant_end_hour"

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "dormant_end_min"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "dormant_allow_list"

    const v5, 0x7f06004a

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v32

    .local v32, "mDefaultBrightness":I
    const-string v4, "screen_brightness"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/hardware/SensorManager;

    .local v45, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v4, -0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v44

    .local v44, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_a

    move-object/from16 v0, v44

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v46

    .local v46, "sensorType":I
    const/4 v4, 0x5

    move/from16 v0, v46

    if-ne v0, v4, :cond_7

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    :cond_7
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .end local v27    # "i":I
    .end local v32    # "mDefaultBrightness":I
    .end local v44    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v45    # "sensorMgr":Landroid/hardware/SensorManager;
    .end local v46    # "sensorType":I
    :cond_8
    const-string v4, "dormant_disable_incoming_calls"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .end local v18    # "country_code":Ljava/lang/String;
    .end local v21    # "deviceName":Ljava/lang/String;
    .end local v22    # "deviceType":Ljava/lang/String;
    .end local v30    # "isTablet":Z
    .end local v36    # "modelName":Ljava/lang/String;
    .end local v43    # "sales_code":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v48, :cond_9

    invoke-virtual/range {v48 .. v48}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_9
    throw v4

    .restart local v18    # "country_code":Ljava/lang/String;
    .restart local v21    # "deviceName":Ljava/lang/String;
    .restart local v22    # "deviceType":Ljava/lang/String;
    .restart local v27    # "i":I
    .restart local v30    # "isTablet":Z
    .restart local v32    # "mDefaultBrightness":I
    .restart local v36    # "modelName":Ljava/lang/String;
    .restart local v43    # "sales_code":Ljava/lang/String;
    .restart local v44    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v45    # "sensorMgr":Landroid/hardware/SensorManager;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    .local v17, "config_val":Z
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAutomaticAvailable= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", config_val= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "screen_brightness_mode"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    if-eqz v4, :cond_49

    if-eqz v17, :cond_49

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v5, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "MTR"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v15, 0x1

    .local v15, "auto_rotation":I
    :goto_4
    const-string v4, "ro.accelerometer_rotation"

    invoke-static {v4, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "def_accelerometer_rotation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "accelerometer_rotation"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "MTR"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string v4, "accelerometer_rotation"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    const-string v4, "uartapcpmode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "usbapcpmode"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "VIB_FEEDBACK_MAGNITUDE"

    const v5, 0x7f050014

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "VIB_RECVCALL_MAGNITUDE"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "VIB_NOTIFICATION_MAGNITUDE"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "power_saving_mode"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "auto_adjust_touch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SPR"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "VMU"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "BST"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "XAS"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    :cond_b
    const-string v4, "psm_switch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "psm_auto_turn_on"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "psm_cpu_clock"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "psm_display"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "psm_browser_color"

    const-string v5, "colorize3"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "psm_background_colour"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "psm_haptic_feedback"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "show_password"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    const-string v4, "MTR"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    const-string v4, "show_password"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    const-string v4, "ro.button_key_light"

    const/16 v5, 0x5dc

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v33

    .local v33, "mDefaultButtonKeyLight":I
    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .local v38, "productName":Ljava/lang/String;
    const-string v4, "MTR"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ATT"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "AIO"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "v1a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vienna"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MetroPCS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    const/16 v33, 0x1770

    :cond_d
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default BUTTON_KEY_LIGHT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "button_key_light"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "una_setting"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_SetLockScreenComponent"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "LockscreenComponent":Ljava/lang/String;
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LockscreenComponent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "Information ticker"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    const-string v4, "information_ticker"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8
    const-string v4, "CHM"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    const-string v4, "contents_type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_9
    const-string v4, "sliding_speed"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "information_ticker_auto_refresh"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "ringtone_after_vibration"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "display_battery_level"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "d2uc"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "serranoltespr"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "serranoltevzw"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "t0ltespr"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "meliusltespr"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "meliuslteusc"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "serranolteusc"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "goldenltevzw"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "d2usc"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jflte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ks01lte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hlte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_57

    const-string v4, "ITV"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    :cond_e
    const-string v4, "display_battery_percentage"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a
    const-string v4, "adaptive_fast_charging"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "with_circle"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "Dual clock"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    const-string v4, "dualclock_menu_settings"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_b
    const-string v4, "cradle_connect"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "cradle_enable"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_CONTEXTUAL_PAGE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    :cond_f
    const-string v4, "DCM"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "SC-04F"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    const-string v4, "KDI"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const-string v4, "SCL23"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    :cond_11
    const-string v4, "desk_home_screen_display"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_c
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    const-string v4, "automatic_unlock"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_d
    if-eqz v30, :cond_12

    const-string v4, "cover_note"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "ATT"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "SPR"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "TMB"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "USC"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "CRI"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "VMU"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "BST"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "XAS"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "TFN"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "XAR"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    :cond_13
    const-string v4, "cover_note_weather_unit"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_e
    const-string v4, "cradle_launch"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "phone1_on"

    const v5, 0x7f040025

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "phone2_on"

    const v5, 0x7f040026

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    const-string v4, "notification_light_pulse"

    const v5, 0x7f040015

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    if-eqz v36, :cond_15

    const-string v4, "SCH-I545L"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "SCH-R530X"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    const-string v4, "mms_domain"

    const v5, 0x7f060056

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "mms_post_url"

    const v5, 0x7f060054

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "mms_subscriber_id"

    const v5, 0x7f060055

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "mms_x_wap_profile_url"

    const v5, 0x7f060052

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "mms_user_agent"

    const v5, 0x7f060053

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "SettingsProvider"

    const-string v5, "load MMS in Settings provider done!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    const-string v4, "pointer_speed"

    const v5, 0x7f050013

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "lock_screen_vibration_feedback"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_61

    const-string v4, "driving_mode_on"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_incoming_call_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_message_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_email_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_voice_mail_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_alarm_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_schedule_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_unlock_screen_contents"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_message_contents"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_f
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    const-string v4, "driving_mode_air_call_accept"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_10
    const-string v4, "drivelink_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "drivelink_navigation"

    const-string v5, "navigation"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "drivelink_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "drivelink_notification_incoming_call"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "drivelink_readout_speed"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "drivelink_rejectmessage_on"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "drivelink_rejectmessage_body"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "spliteview_mode_phone"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spliteview_mode_message"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spliteview_mode_calendar"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spliteview_mode_memo"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spliteview_mode_music"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spliteview_mode_myfiles"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spliteview_mode_socialhub"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spliteview_mode_im"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "clock_position"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "select_icon_1"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "select_icon_2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "select_icon_3"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "select_icon_4"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "select_icon_5"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "select_name_1"

    const v5, 0x7f060045

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "select_name_2"

    const v5, 0x7f060046

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "select_name_3"

    const v5, 0x7f060047

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "select_name_4"

    const v5, 0x7f060048

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "select_name_5"

    const v5, 0x7f060049

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "sim1_value"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sim2_value"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sim3_value"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sim4_value"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sim5_value"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_64

    const-string v4, "Clock"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    const-string v4, "show_clock"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_11
    const-string v4, "high_contrast"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "torch_light"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "personal_mode_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "personal_mode_lock_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "personal_mode_lockscreen_enable"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "personal_mode_auto_disable_when_screen_off"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "tag_current_location_camera"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "tag_current_location_snote"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "tag_current_location_scrapbook"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "tag_current_location_voicerecorder"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "flash_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "power_key_hold"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v4, 0x0

    const-string v5, "MM-dd-yyyy"

    aput-object v5, v19, v4

    const/4 v4, 0x1

    const-string v5, "dd-MM-yyyy"

    aput-object v5, v19, v4

    const/4 v4, 0x2

    const-string v5, "yyyy-MM-dd"

    aput-object v5, v19, v4

    .local v19, "dateFormats":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .local v3, "dummydate_for_dateformat":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    const/16 v6, 0x1f

    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    .local v26, "formatted":Ljava/lang/String;
    const/4 v13, -0x1

    .local v13, "SetDate":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->SetRegionalDate_Update([Ljava/lang/String;)I

    move-result v13

    aget-object v26, v19, v13

    const-string v4, "date_format"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "rssi"

    const-string v5, "rssi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    const-string v4, "wifi_ap_sort"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_12
    const-string v4, "psm_battery_level"

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "safety_zone_enable"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "safety_zone_notification_enable"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "safety_zone_notification_vibrate"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "safety_zone_list"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "camera_quick_access"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "camera_quick_access_sound_feedback"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    :cond_16
    const-string v4, "master_motion"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_13
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    :cond_17
    const-string v4, "motion_merged_mute_pause"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_14
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    if-eqz v30, :cond_68

    const-string v4, "grande"

    const-string v5, "ro.build.scafe.size"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    const-string v4, "motion_pick_up"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_pick_up_to_call_out"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_15
    const-string v4, "motion_engine"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_overturn"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_16
    const-string v4, "motion_zooming"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_zooming_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_tilt_to_list_scrolling"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_panning"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_pan_to_browse_image"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_scan_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_refresh_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_double_tap"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_peek_view_albums_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_peek_chapter_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_zooming_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_panning_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_tilt_to_scroll_list_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_pan_to_browse_image_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    const-string v4, "surface_motion_engine"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "surface_palm_swipe"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "surface_palm_touch"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_17
    const-string v4, "surface_tap_and_twist"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const-string v4, "air_motion_engine"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_wake_up"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_web_page"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_email_body"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_single_photo_view"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_internet_window"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_now_playing_on_music"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_note_page_view"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept_auto_start_speaker"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_18
    const-string v4, "air_motion_web_navigate"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_note_swap"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_glance_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_item_move"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_clip"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_all_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_contact_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_email_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_album_and_photo"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_19
    const-string v4, "master_side_motion"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "side_motion_one_hand_operation"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "side_motion_peek"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "contextual_page"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "master_arc_motion"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "arc_motion_browse"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "arc_motion_ripple_effect"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "arc_motion_quick_glance"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "arc_motion_call_accept"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "arc_motion_search"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "arc_motion_always"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "arc_motion_music_playback"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "arc_motion_messaging"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_93

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_93

    const-string v4, "air_view_master_onoff"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_view_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_1a
    const-string v4, "sugar"

    const-string v5, "ro.build.scafe.syrup"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "p4note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_95

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    if-eqz v4, :cond_95

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_95

    const-string v4, "air_button_onoff"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1b
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "rapid_key_input_menu_checked"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    const-string v4, "finger_air_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_highlight"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_96

    const-string v4, "finger_air_view_magnifier"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_information_preview"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1c
    const-string v4, "finger_air_view_show_up_indicator"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_full_text"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_pointer"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_pregress_bar_preview"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_speed_dial_tip"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_sound_and_haptic_feedback"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1d
    const-string v4, "mouse_hovering"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mouse_hovering_icon_label"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mouse_hovering_list_scroll"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mouse_hovering_highlight"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mouse_hovering_magnifier"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mouse_hovering_information_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mouse_hovering_full_text"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mouse_hovering_magnetic_ui"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "mouse_hovering_progress_bar_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "contextual_page"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, "contextual_page_s_pen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1e
    const-string v4, "contextual_page_earphone"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "contextual_page_car_cradle"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "contextual_page_desk_cardle"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SPR"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "VMU"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "BST"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "XAS"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    :cond_1a
    const-string v4, "contextual_page_roaming"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1f
    const-string v4, "contextual_page_audio_dock"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v30, :cond_1b

    const-string v4, "magazine_card_switch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "update_duration_db"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "category_value_db"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "card_security_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1b
    const-string v4, "Shortcuts"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenSetting(Ljava/lang/String;)Z

    move-result v29

    .local v29, "isLockScreenShortcutEnabled":Z
    const-string v4, "set_shortcuts_mode"

    const v5, 0x7f05001f

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "Germany"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    const-string v4, "Australia"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9c

    if-eqz v29, :cond_9b

    const-string v4, "lock_screen_shortcut"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_CONTEXTUAL_PAGE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    const-string v4, "lockscreen_shortcut_box"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_20
    const-string v4, "SEC_FLOATING_FEATURE_SHEALTH_SUPPORT_HEALTH_SHORTCUT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "health_info_switch"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_glucose"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_ecg"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_body_temperature"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_temperature_humidity"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_oxygen_saturation"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_blood_pressure"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_uv"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_heart_rate"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_steps"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_info"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_weather"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1c
    const-string v4, "is_secured_lock"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "kg_multiple_lockscreen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    .local v23, "display":Landroid/view/Display;
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getOrientation()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1d

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getWidth()I

    move-result v4

    const/16 v5, 0x1e0

    if-gt v4, v5, :cond_1e

    :cond_1d
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getOrientation()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b1

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getHeight()I

    move-result v4

    const/16 v5, 0x1e0

    if-le v4, v5, :cond_b1

    :cond_1e
    if-eqz v30, :cond_a7

    const-string v4, "TGY"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060020

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .local v47, "shorcut_app_list":Ljava/lang/String;
    :goto_21
    const/16 v31, 0x0

    .local v31, "lock_screen_shortcut_num_of_apps":I
    const-string v4, ",|;"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, "ShorcutList":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v31, v0

    const-string v4, "lock_screen_shortcut_number_of_apps"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_print_shortcut_list"

    const v5, 0x7f060044

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "recommended_apps_setting"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "recommended_apps_automatically"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "recommended_apps_automatically_earphones"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v35, "Music,Video,YouTube,"

    .local v35, "mRecommendedAppList":Ljava/lang/String;
    if-eqz v30, :cond_bc

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_b8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    :goto_22
    const-string v4, "com.sec.yosemite.tab"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->hasApplication(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ba

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",WatchON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    :goto_23
    const-string v4, "XJP"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Chrome"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .local v41, "recommendedAppListEarphones":Ljava/lang/String;
    :goto_24
    if-nez v30, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_20

    const-string v4, "Music,Video,Internet,YouTube,WatchON"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    :cond_20
    const-string v4, "recommended_apps_list_earphones"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v30, :cond_bf

    const-string v4, "recommended_apps_automatically_dockings"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_25
    const-string v4, "Email,Gallery,YouTube,Video,Music"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .local v40, "recommendedAppListDockings":Ljava/lang/String;
    const-string v4, "recommended_apps_list_dockings"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "recommended_apps_automatically_roaming"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v30, :cond_c0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.worldclock"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string v4, "Camera,Calculator,Maps,S Note,World Clock"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v42

    .local v42, "recommendedAppListRoaming":Ljava/lang/String;
    :goto_26
    :try_start_3
    const-string v4, "recommended_apps_list_roaming"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "toolbox_onoff"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "toolbox_frequently_used"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "toolbox_earphones_only"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v50, 0x0

    .local v50, "toolboxAppList":Ljava/lang/String;
    if-nez v30, :cond_c4

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->AmIGuestMode()Z

    move-result v4

    if-eqz v4, :cond_c1

    const-string v4, "Camera,Internet,Gallery,Music,Video"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getToolboxShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    :goto_27
    const-string v4, "toolbox_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "power_sharing_cable"

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v37, ""

    .local v37, "notification_active_app_list":Ljava/lang/String;
    const-string v4, "notification_panel_brightness_adjustment"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getQuickSettingsList()Ljava/lang/String;

    move-result-object v39

    .local v39, "quickSettingsList":Ljava/lang/String;
    const-string v4, "notification_panel_active_app_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v37, v39

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefQuickBtnNum()I

    move-result v20

    .local v20, "defQuickBtnNum":I
    const-string v4, "notification_panel_active_number_of_apps"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "onehand_edit_active_number_of_apps"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "onehand_edit_active_app_list"

    const-string v5, "Recent;Home;Back;Reduce;Apps;Options"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sidesoftkey_switch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sidesoftkey_transparency"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sidesoftkey_donotshow"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "interactionarea_switch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sidesoftkey_minimise"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_GESTURE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "notification_panel_default_active_app_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    const-string v4, "default_vibration_pattern"

    const v5, 0x7f060011

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "NONE"

    const-string v5, "BRILLIANTRING"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c6

    const-string v4, "lockscreen_ripple_effect"

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_28
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d0

    const-string v4, "Help text"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_29
    const-string v4, "sound_balance"

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "dmb_antenna_auto_start"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "led_indicator_charing"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "LRA"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->isGridSimpleMenuEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d3

    :cond_22
    const-string v4, "led_indicator_low_battery"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2a
    const-string v4, "led_indicator_missed_event"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "led_indicator_voice_recording"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "led_indicator_incoming_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "any_screen_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "any_screen_running"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "hand_adaptable_operation"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "onehand_dialer_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "onehand_samsungkeypad_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "onehand_calculator_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "onehand_pattern_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sound_profile_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sound_profile_edit_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "intelligent_screen_mode"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lt02ltespr"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "lt02lteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "lt02ltetmo"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "goldenltevzw"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "jfltetmo"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "h3gzc"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "h3gzm"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "h3gzn"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "hltezm"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "hltetdzc"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "ja3gzn"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "jsgltezm"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "ja3gzc"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "ja3gchnduoszn"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d4

    :cond_23
    const-string v4, "intelligent_sleep_mode"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2b
    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ks02lte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cs02xx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cs02zt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "AIO"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "d2"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "t0"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    if-eqz v30, :cond_d5

    :cond_24
    const-string v4, "intelligent_sleep_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2c
    const-string v4, "intelligent_rotation_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_pause"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "grip_rotation_lock"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_sensitivity"

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_unit"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_acceleration"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_visual_feedback_icon"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_adv_web"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_adv_email_list"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_adv_email_body"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_adv_readers_hub"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "CHN"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "CHM"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "CHU"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "CTC"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "CHC"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    :cond_25
    const-string v4, "smart_scroll_adv_chrome"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_adv_gmail_body"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2d
    const-string v4, "face_smart_scroll"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_motion"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_bonding"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_bonding_notification"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_bonding_notification_do_not_show"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "enable_download_booster"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d7

    const-string v4, "open_camera"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2e
    const-string v4, "e_reading_display_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "reading_mode_app_list"

    const-string v5, "com.google.android.apps.books/com.google.android.apps.books.app.BooksActivity;"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_screen_face_with_voice"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "screen_mode_automatic_setting"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "TMB"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d8

    if-nez v30, :cond_d8

    :cond_26
    const-string v4, "multi_window_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2f
    const-string v4, "open_multi_window_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "multi_window_position"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "country_code"

    const v5, 0x7f060035

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_da

    const-string v4, "Wake up in lock screen"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d9

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_30
    const-string v4, "quick_launch_app"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "auto_brightness_detail"

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_settings"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_db

    const-string v4, "pen_hovering"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_pointer"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_information_preview"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_progress_preview"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_speed_dial_preview"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_webpage_magnifier"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_sound"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_ripple_effect"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_attach_detach_vibration"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_31
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_dc

    const-string v4, "pen_hovering_icon_label"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_list_scroll"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_link_preview"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_air_menu"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_32
    const-string v4, "pen_hovering_ink_effect"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_detachment_notification"

    const-string v5, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_gesture_guide"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_detachment_alert"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_writing_haptic_feedback"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_writing_sound"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_PEN_DETECT_MODE_DISALBED"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_dd

    const-string v4, "pen_detect_mode_disabled"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_33
    const-string v4, "pen_detach_application"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "pen_applications"

    const-string v5, "com.sec.android.app.launcher,com.android.launcher2.Launcher"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_27
    const-string v4, "sugar"

    const-string v5, "ro.build.scafe.syrup"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "pen_detachment_option"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_28
    const-string v4, "pen_writing_buddy"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ks02lte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_de

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_34
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadEasyModeApps(Landroid/database/sqlite/SQLiteStatement;)V

    const-string v4, "mass_kids_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "heat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_df

    const-string v4, "parental_control_block_key"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_35
    const-string v4, "parental_control_add_apps_auto"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "parental_control_block_call"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "kids_time_mgr_enable_start_hour"

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "kids_time_mgr_enable_start_min"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "kids_time_mgr_enable_end_hour"

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "kids_time_mgr_enable_end_min"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "KOREA"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "lte_roaming_mode_on"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    const-string v4, "KOREA"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "anykey_mode"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "roaming_auto_dial"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "enable_call_protect_when_calling"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v5, 0xa0

    if-le v4, v5, :cond_2b

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.folder_type"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e0

    const-string v4, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e0

    const/16 v49, 0x1

    .local v49, "supportFolderType":Z
    :goto_36
    if-eqz v49, :cond_2c

    const-string v4, "sub_lcd_auto_lock"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "key_night_mode"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "key_backlight_timeout"

    const/16 v5, 0xbb8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.folder_type"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.dual_lcd"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e1

    const/16 v34, 0x1

    .local v34, "mDualFolderType":Z
    :goto_37
    if-eqz v34, :cond_2d

    const-string v4, "sub_lcd_auto_lock"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "folder_sounds_enabled"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2d
    const-string v4, "accelerometer_rotation_second"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "smart_network"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "wifi_sleep_policy"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, "sbeam_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2f
    if-eqz v36, :cond_30

    const-string v4, "SCH-R530X"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, "carrier_wallpaper"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "carrier_power_onoff"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_30
    const-string v4, "SKT"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "wifi_popup_text_color"

    const-string v5, "#FFFFFF"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "bg_auto_optimization_setup"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "bg_traffic_service_state"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_31
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EDIT_AFTER_SCREEN_CAPTURE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "edit_after_screen_capture"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_32
    if-nez v30, :cond_33

    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    :cond_33
    const-string v4, "my_profile_enabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_38
    const-string v4, "my_profile_text_color"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e3

    const-string v4, "my_profile_information"

    const v5, 0x7f06004f

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :goto_39
    const-string v4, "my_profile_text_alignment"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "my_profile_text_size"

    const v5, 0x7f060050

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "my_profile_is_text_button_selected"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "my_profile_background_color"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "CHN"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "CHM"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "CHU"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "CTC"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "TGY"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "BRI"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "CHC"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    :cond_34
    const-string v4, "my_profile_font_filename"

    const-string v5, "fonts/Kaiti.ttf"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "my_profile_font_package"

    const-string v5, "com.monotype.android.font.kaiti"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3a
    if-eqz v30, :cond_35

    const-string v4, "kg_enable_camera_widget"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isSupportStart_J_project()Z

    move-result v4

    if-eqz v4, :cond_e6

    const-string v4, "kg_enable_camera_widget"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "kg_enable_camera_widget_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3b
    const-string v4, "lock_screen_date_and_year"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_screen_show_clock"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_screen_clock_text_color"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_screen_clock_text_alignment"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_screen_clock_text_size"

    const v5, 0x7f060051

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e7

    const-string v4, "lock_screen_clock_size"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3c
    const-string v4, "db_lockscreen_is_smart_lock"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "kids_home_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "fingerprint_secret_box"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "fingerprint_webpass"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "fingerprint_used_samsungaccount"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "fingerprint_confirmed_samsungaccount"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v30, :cond_36

    const-string v4, "settings_listui"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "settings_gridui"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_36
    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "settings_listui"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "GRIDLIST"

    const-string v5, "DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e8

    const-string v4, "settings_gridui"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_37
    :goto_3d
    const-string v4, "GRIDLIST_SIMPLE"

    const-string v5, "DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v4, "ATT"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v4, "settings_gridui"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_38
    const-string v4, "GRIDLIST_SIMPLE"

    const-string v5, "DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, "TMB"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, "settings_gridui"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_39
    const-string v4, "PHN"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "LUX"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "PRO"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    :cond_3a
    const-string v4, "GRIDLIST"

    const-string v5, "DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const-string v4, "settings_listui"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "settings_gridui"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3b
    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "SPR"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "XAS"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "VMU"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "BST"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    :cond_3c
    const-string v4, "samsung_errorlog_agree"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3d
    if-eqz v34, :cond_3e

    const-string v4, "folder_open_sound"

    const-string v5, "/system/media/audio/ui/Folder_Open.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "folder_close_sound"

    const-string v5, "/system/media/audio/ui/Folder_Close.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "send_key_sound"

    const-string v5, "/system/media/audio/ui/Send_Key.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "end_key_sound"

    const-string v5, "/system/media/audio/ui/End_Key.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "func_key_sound"

    const-string v5, "/system/media/audio/ui/Function_Key.ogg"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3e
    const-string v4, "toddler_mode_switch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "toddler_mode_data_state"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "toddler_mode_wifi_state"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "DCM"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    const-string v4, "nfc_rw_p2p_switch"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3f
    :goto_3e
    const-string v4, "airplane_mode_on_reason_usb3"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v25, "0"

    .local v25, "festivalVersion":Ljava/lang/String;
    const-string v51, "festival"

    .local v51, "typeString":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "changeableFeature":Ljava/lang/String;
    if-eqz v16, :cond_40

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_40

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_40

    move-object/from16 v0, v16

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_40

    move-object/from16 v0, v16

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    .local v28, "index":I
    const/4 v4, -0x1

    move/from16 v0, v28

    if-le v0, v4, :cond_40

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v28

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_40

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v28

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v25

    .end local v28    # "index":I
    :cond_40
    const-string v4, "0"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->isSupportVNFestival()Z

    move-result v4

    if-eqz v4, :cond_43

    :cond_41
    const-string v4, "festival_effect_enabled"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "2"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->isSupportVNFestival()Z

    move-result v4

    if-eqz v4, :cond_ea

    :cond_42
    const-string v4, "festival_effect_home_lock_screen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "festival_effect_notification_panel"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3f
    const-string v4, "festival_effect_weather_widget"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "KOREA"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    const-string v4, "festival_effect_key_melody"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "festival_effect_customize_event"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_43
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->AmIGuestMode()Z

    move-result v4

    if-eqz v4, :cond_eb

    const-string v4, "lock_additional_weather"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_steps"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_40
    const-string v4, "shealth_pedometer_view_step_count"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "shealth_pedometer_status_running"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "shealth_profile_initialized"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "doorbell_recording_status"

    const v5, 0x7f06005a

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "ro.build.scafe"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "macchiato"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    const-string v4, "call_conn_tone"

    const v5, 0x7f050021

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "min_minder"

    const v5, 0x7f050022

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "call_end_tone"

    const v5, 0x7f050023

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v4, "alertoncall_mode"

    const v5, 0x7f050024

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :cond_44
    const-string v4, "lte_mode_switch"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    const-string v4, "airmessage_alert"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "airmessage_on"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_45
    const-string v4, "sleepingmode_switch_onoff"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sleepingmode_start_hour"

    const/16 v5, 0x15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sleepingmode_start_min"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sleepingmode_end_hour"

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sleepingmode_end_min"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "show_briefing_information"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "show_camera_shortcut"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_BLACKSCREEN_UI_QUICK_ACCESS"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    const-string v4, "quick_application_access"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_46
    const-string v4, "direct_indicator"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pateklte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    const-string v4, "current_sec_theme_package"

    const-string v5, "com.sec.android.theme.premium"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_47
    const-string v4, "spen_feedback_sound"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spen_feedback_sound_air_command"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spen_feedback_sound_air_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spen_feedback_haptic"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spen_feedback_haptic_air_command"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spen_feedback_haptic_air_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spen_feedback_haptic_pen_gesture"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v48, :cond_48

    invoke-virtual/range {v48 .. v48}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_48
    return-void

    .end local v3    # "dummydate_for_dateformat":Ljava/util/Calendar;
    .end local v12    # "LockscreenComponent":Ljava/lang/String;
    .end local v13    # "SetDate":I
    .end local v14    # "ShorcutList":[Ljava/lang/String;
    .end local v15    # "auto_rotation":I
    .end local v16    # "changeableFeature":Ljava/lang/String;
    .end local v19    # "dateFormats":[Ljava/lang/String;
    .end local v20    # "defQuickBtnNum":I
    .end local v23    # "display":Landroid/view/Display;
    .end local v25    # "festivalVersion":Ljava/lang/String;
    .end local v26    # "formatted":Ljava/lang/String;
    .end local v29    # "isLockScreenShortcutEnabled":Z
    .end local v31    # "lock_screen_shortcut_num_of_apps":I
    .end local v33    # "mDefaultButtonKeyLight":I
    .end local v34    # "mDualFolderType":Z
    .end local v35    # "mRecommendedAppList":Ljava/lang/String;
    .end local v37    # "notification_active_app_list":Ljava/lang/String;
    .end local v38    # "productName":Ljava/lang/String;
    .end local v39    # "quickSettingsList":Ljava/lang/String;
    .end local v40    # "recommendedAppListDockings":Ljava/lang/String;
    .end local v41    # "recommendedAppListEarphones":Ljava/lang/String;
    .end local v42    # "recommendedAppListRoaming":Ljava/lang/String;
    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    .end local v49    # "supportFolderType":Z
    .end local v50    # "toolboxAppList":Ljava/lang/String;
    .end local v51    # "typeString":Ljava/lang/String;
    :cond_49
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_4a
    :try_start_4
    const-string v5, "screen_brightness_mode"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    if-eqz v4, :cond_4b

    if-eqz v17, :cond_4b

    const/4 v4, 0x1

    :goto_41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v5, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4b
    const/4 v4, 0x0

    goto :goto_41

    :cond_4c
    const/4 v15, 0x0

    goto/16 :goto_4

    .restart local v15    # "auto_rotation":I
    :cond_4d
    const-string v4, "accelerometer_rotation"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4e
    const-string v4, "psm_switch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "ATT"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const-string v4, "SettingsProvider"

    const-string v5, "Settings.System.PSM_AUTO : 1\'"

    invoke-static {v4, v5}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "psm_auto_turn_on"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_42
    const-string v4, "psm_cpu_clock"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "psm_display"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "psm_browser_color"

    const-string v5, "colorize3"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "psm_background_colour"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "psm_haptic_feedback"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4f
    const-string v4, "SettingsProvider"

    const-string v5, "Settings.System.PSM_AUTO : 0\'"

    invoke-static {v4, v5}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "psm_auto_turn_on"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_42

    :cond_50
    const-string v4, "show_password"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    .restart local v12    # "LockscreenComponent":Ljava/lang/String;
    .restart local v33    # "mDefaultButtonKeyLight":I
    .restart local v38    # "productName":Ljava/lang/String;
    :cond_51
    const-string v4, "information_ticker"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_52
    const-string v4, "information_ticker"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_53
    const-string v11, ""

    .local v11, "ContentsTypeFeature":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_56

    const/16 v28, 0x0

    .restart local v28    # "index":I
    const-string v4, ","

    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, "ContentsType":[Ljava/lang/String;
    const/16 v28, 0x0

    :goto_43
    array-length v4, v10

    move/from16 v0, v28

    if-ge v0, v4, :cond_54

    aget-object v4, v10, v28

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v0, v28

    if-eq v0, v4, :cond_55

    :cond_54
    const-string v4, "contents_type"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_55
    add-int/lit8 v28, v28, 0x1

    goto :goto_43

    .end local v10    # "ContentsType":[Ljava/lang/String;
    .end local v28    # "index":I
    :cond_56
    const-string v4, "contents_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    .end local v11    # "ContentsTypeFeature":Ljava/lang/String;
    :cond_57
    const-string v4, "display_battery_percentage"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_58
    const-string v4, "dualclock_menu_settings"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_59
    const-string v4, "ACG"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    const-string v4, "USC"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    if-eqz v36, :cond_5b

    const-string v4, "SCH-R970X"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    :cond_5a
    const-string v4, "dualclock_menu_settings"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_5b
    const-string v4, "dualclock_menu_settings"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_5c
    const-string v4, "desk_home_screen_display"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_5d
    const-string v4, "desk_home_screen_display"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_5e
    const-string v4, "automatic_unlock"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_5f
    const-string v4, "automatic_unlock"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_60
    const-string v4, "cover_note_weather_unit"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_61
    const-string v4, "driving_mode_on"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_incoming_call_notification"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_message_notification"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_email_notification"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_voice_mail_notification"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_alarm_notification"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_schedule_notification"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_unlock_screen_contents"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "driving_mode_message_contents"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_62
    const-string v4, "driving_mode_air_call_accept"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_63
    const-string v4, "show_clock"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_64
    const-string v4, "show_clock"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_11

    .restart local v3    # "dummydate_for_dateformat":Ljava/util/Calendar;
    .restart local v13    # "SetDate":I
    .restart local v19    # "dateFormats":[Ljava/lang/String;
    .restart local v26    # "formatted":Ljava/lang/String;
    :cond_65
    const-string v4, "wifi_ap_sort"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_66
    const-string v4, "master_motion"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_67
    const-string v4, "motion_merged_mute_pause"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_68
    const-string v4, "vastalte"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->hasSensorHubFeature()Z

    move-result v4

    if-nez v4, :cond_6a

    :cond_69
    const-string v4, "motion_pick_up"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_44
    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    const-string v4, "motion_pick_up_to_call_out"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_6a
    const-string v4, "motion_pick_up"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_44

    :cond_6b
    const-string v4, "motion_pick_up_to_call_out"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_6c
    const-string v4, "master_motion"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_engine"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_pick_up"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_pick_up_to_call_out"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_overturn"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_6d
    const-string v4, "surface_motion_engine"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "surface_palm_swipe"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "surface_palm_touch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_6e
    const-string v4, "air_motion_engine"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_wake_up"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_web_page"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_email_body"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_single_photo_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_internet_window"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_now_playing_on_music"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_note_page_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept_auto_start_speaker"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_6f
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_82

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    const-string v4, "air_motion_turn_internet_window"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_web_page"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_70
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_73

    :cond_71
    if-eqz v30, :cond_73

    const-string v4, "master_motion"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_engine"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_45
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    const-string v4, "motion_zooming"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_zooming_guide_show_again"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_46
    const-string v4, "motion_tilt_to_list_scrolling"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_75

    const-string v4, "motion_panning"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_47
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    const-string v4, "motion_pan_to_browse_image"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_48
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    const-string v4, "motion_shake"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_scan_guide_show_again"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_refresh_guide_show_again"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_49
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_78

    const-string v4, "motion_double_tap"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4a
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    const-string v4, "motion_pick_up"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4b
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    const-string v4, "motion_pick_up_to_call_out"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4c
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const-string v4, "motion_overturn"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4d
    const-string v4, "motion_peek_view_albums_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_peek_chapter_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_72

    const-string v4, "Camera quick access"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_72
    :goto_4e
    const-string v4, "motion_zooming_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_panning_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_tilt_to_scroll_list_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_pan_to_browse_image_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    const-string v4, "surface_motion_engine"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const-string v4, "surface_palm_swipe"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4f
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    const-string v4, "surface_palm_touch"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_50
    const-string v4, "surface_tap_and_twist"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_51
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_81

    const-string v4, "air_motion_engine"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_glance_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_item_move"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_clip"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_all_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_web_page"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_contact_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_email_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_album_and_photo"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_email_body"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_single_photo_view"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_internet_window"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_now_playing_on_music"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_note_page_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept_auto_start_speaker"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_52
    const-string v4, "air_motion_web_navigate"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_note_swap"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_73
    const-string v4, "master_motion"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_engine"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_45

    :cond_74
    const-string v4, "motion_zooming"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_zooming_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_46

    :cond_75
    const-string v4, "motion_panning"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_47

    :cond_76
    const-string v4, "motion_pan_to_browse_image"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_48

    :cond_77
    const-string v4, "motion_shake"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_scan_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_refresh_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_49

    :cond_78
    const-string v4, "motion_double_tap"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4a

    :cond_79
    const-string v4, "motion_pick_up"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_7a
    const-string v4, "motion_pick_up_to_call_out"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4c

    :cond_7b
    const-string v4, "motion_overturn"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4d

    :cond_7c
    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4e

    :cond_7d
    const-string v4, "master_motion"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_engine"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_zooming"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_zooming_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_tilt_to_list_scrolling"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_panning"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_pan_to_browse_image"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_scan_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_refresh_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_double_tap"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_pick_up"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_pick_up_to_call_out"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_peek_view_albums_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_peek_chapter_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_overturn"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4e

    :cond_7e
    const-string v4, "surface_palm_swipe"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4f

    :cond_7f
    const-string v4, "surface_palm_touch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_50

    :cond_80
    const-string v4, "surface_palm_swipe"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "surface_palm_touch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "surface_tap_and_twist"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "surface_motion_engine"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_51

    :cond_81
    const-string v4, "air_motion_engine"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_glance_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_item_move"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_clip"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_all_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_web_page"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_contact_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_email_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_album_and_photo"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll_email_body"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_single_photo_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_internet_window"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_now_playing_on_music"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_turn_note_page_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept_auto_start_speaker"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_52

    :cond_82
    const-string v4, "USC"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    const-string v4, "master_motion"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_engine"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_53
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_84

    const-string v4, "motion_zooming"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_zooming_guide_show_again"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_54
    const-string v4, "motion_tilt_to_list_scrolling"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    const-string v4, "USC"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    const-string v4, "motion_panning"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_55
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    const-string v4, "motion_pan_to_browse_image"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_56
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    const-string v4, "motion_shake"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_scan_guide_show_again"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_refresh_guide_show_again"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_57
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    const-string v4, "motion_double_tap"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_58
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    const-string v4, "motion_pick_up"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_59
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8b

    const-string v4, "motion_pick_up_to_call_out"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5a
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8d

    const-string v4, "USC"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    const-string v4, "motion_overturn"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5b
    const-string v4, "motion_zooming_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_panning_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_tilt_to_scroll_list_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_pan_to_browse_image_sensitivity"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_peek_view_albums_list"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_peek_chapter_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    const-string v4, "surface_palm_swipe"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5c
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    const-string v4, "surface_palm_touch"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5d
    const-string v4, "surface_tap_and_twist"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_91

    const-string v4, "Camera quick access"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_90

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5e
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_92

    const-string v4, "air_motion_glance_view"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_web_navigate"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_note_swap"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_item_move"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_clip"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_83
    const-string v4, "master_motion"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_engine"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_53

    :cond_84
    const-string v4, "motion_zooming"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_zooming_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_85
    const-string v4, "motion_panning"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_86
    const-string v4, "motion_panning"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_87
    const-string v4, "motion_pan_to_browse_image"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_56

    :cond_88
    const-string v4, "motion_shake"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_scan_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "motion_shake_refresh_guide_show_again"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_57

    :cond_89
    const-string v4, "motion_double_tap"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_8a
    const-string v4, "motion_pick_up"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_59

    :cond_8b
    const-string v4, "motion_pick_up_to_call_out"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5a

    :cond_8c
    const-string v4, "motion_overturn"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5b

    :cond_8d
    const-string v4, "motion_overturn"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5b

    :cond_8e
    const-string v4, "surface_palm_swipe"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_8f
    const-string v4, "surface_palm_touch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5d

    :cond_90
    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5e

    :cond_91
    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5e

    :cond_92
    const-string v4, "air_motion_glance_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_web_navigate"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_note_swap"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_scroll"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_item_move"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_clip"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "air_motion_call_accept"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_93
    const-string v4, "DCM"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    const-string v4, "KDI"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_94
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "air_view_mode"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_95
    const-string v4, "air_button_onoff"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_96
    const-string v4, "finger_air_view_magnifier"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_information_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1c

    :cond_97
    const-string v4, "finger_air_view"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_highlight"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_magnifier"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_show_up_indicator"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_information_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_full_text"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_pointer"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_pregress_bar_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_speed_dial_tip"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "finger_air_view_sound_and_haptic_feedback"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_98
    const-string v4, "contextual_page_s_pen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_99
    const-string v4, "contextual_page_roaming"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1f

    .restart local v29    # "isLockScreenShortcutEnabled":Z
    :cond_9a
    const-string v4, "lockscreen_shortcut_box"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_9b
    const-string v4, "lock_screen_shortcut"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lockscreen_shortcut_box"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_9c
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isSupportStart_J_project()Z

    move-result v4

    if-eqz v4, :cond_9e

    const-string v4, "ZTM"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    const-string v4, "lock_screen_shortcut"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5f
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_CONTEXTUAL_PAGE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9f

    const-string v4, "lockscreen_shortcut_box"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_9d
    const-string v4, "lock_screen_shortcut"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5f

    :cond_9e
    const-string v4, "lock_screen_shortcut"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5f

    :cond_9f
    const-string v4, "lockscreen_shortcut_box"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_a0
    const-string v4, "lock_screen_shortcut"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lockscreen_shortcut_box"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_20

    .restart local v23    # "display":Landroid/view/Display;
    :cond_a1
    const-string v4, "p4noteltevzw"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f06002a

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_a2
    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f06001d

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_a3
    const-string v4, "lt02ltespr"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060028

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_a4
    const-string v4, "lt02lteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060029

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_a5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_a6

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f06001b

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_a6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    const-string v4, "lock_screen_shortcut_app_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_a7
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_aa

    const-string v4, "u0ltexx"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    const-string v4, "u0ltevj"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    const-string v4, "u0ltezc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    const-string v4, "u0ltezh"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    const-string v4, "u0ltezt"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    :cond_a8
    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f06001f

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_a9
    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f06001e

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_aa
    const-string v4, "SPR"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    const-string v4, "VMU"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    const-string v4, "BST"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    const-string v4, "XAS"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    :cond_ab
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ac

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060025

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_ac
    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060024

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_ad
    const-string v4, "ATT"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ae

    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ae

    const-string v4, "TMB"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_af

    :cond_ae
    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060023

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_af
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isSupportStart_J_project()Z

    move-result v4

    if-nez v4, :cond_b0

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060027

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_b0
    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060019

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_b1
    if-eqz v30, :cond_b3

    const-string v4, "TGY"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060016

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_b2
    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060015

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_b3
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b4

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060013

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_b4
    const-string v4, "ATT"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    const-string v4, "TMB"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    const-string v4, "SPR"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    const-string v4, "VMU"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    const-string v4, "BST"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    const-string v4, "XAS"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    :cond_b5
    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060017

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_b6
    const-string v4, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060018

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .end local v47    # "shorcut_app_list":Ljava/lang/String;
    :cond_b7
    const-string v4, "lock_screen_shortcut_app_list"

    const v5, 0x7f060012

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .restart local v47    # "shorcut_app_list":Ljava/lang/String;
    goto/16 :goto_21

    .restart local v14    # "ShorcutList":[Ljava/lang/String;
    .restart local v31    # "lock_screen_shortcut_num_of_apps":I
    .restart local v35    # "mRecommendedAppList":Ljava/lang/String;
    :cond_b8
    const-string v4, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->hasApplication(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Internet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_22

    :cond_b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Chrome"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_22

    :cond_ba
    const-string v4, "com.google.android.music"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->hasApplication(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Play Music"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_23

    :cond_bb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Voice Recorder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_23

    :cond_bc
    const-string v4, "KOREA"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    const-string v4, "com.sec.watchon.phone"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->hasApplication(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bd

    const-string v4, "Music,Video,YouTube,Phone,WatchON"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .restart local v41    # "recommendedAppListEarphones":Ljava/lang/String;
    goto/16 :goto_24

    .end local v41    # "recommendedAppListEarphones":Ljava/lang/String;
    :cond_bd
    const-string v4, "Music,Video,YouTube,Phone,Voice Recorder"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .restart local v41    # "recommendedAppListEarphones":Ljava/lang/String;
    goto/16 :goto_24

    .end local v41    # "recommendedAppListEarphones":Ljava/lang/String;
    :cond_be
    const-string v4, "Music,Video,Phone,YouTube,Voice Recorder"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .restart local v41    # "recommendedAppListEarphones":Ljava/lang/String;
    goto/16 :goto_24

    :cond_bf
    const-string v4, "recommended_apps_automatically_dockings"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_25

    .restart local v40    # "recommendedAppListDockings":Ljava/lang/String;
    :catch_0
    move-exception v24

    .local v24, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Camera,Calculator,Maps,S Note,Clock"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v42

    .restart local v42    # "recommendedAppListRoaming":Ljava/lang/String;
    goto/16 :goto_26

    .end local v24    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v42    # "recommendedAppListRoaming":Ljava/lang/String;
    :cond_c0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.worldclock"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string v4, "Camera,Calculator,Maps,S Note,World Clock"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v42

    .restart local v42    # "recommendedAppListRoaming":Ljava/lang/String;
    goto/16 :goto_26

    .end local v42    # "recommendedAppListRoaming":Ljava/lang/String;
    :catch_1
    move-exception v24

    .restart local v24    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v4, "Camera,Calculator,Maps,S Note,Clock"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .restart local v42    # "recommendedAppListRoaming":Ljava/lang/String;
    goto/16 :goto_26

    .end local v24    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v50    # "toolboxAppList":Ljava/lang/String;
    :cond_c1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/settings/DatabaseHelper;->isKnoxUser:Z

    if-eqz v4, :cond_c2

    const-string v4, "Camera,Internet,Email,My Files,Memo"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getToolboxShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_27

    :cond_c2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_DEFAULT_TOOLBOX"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_DEFAULT_TOOLBOX_APP_LIST"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_27

    :cond_c3
    const-string v4, "Camera,Internet,Voice Recorder,Memo,Calculator"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getToolboxShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_27

    :cond_c4
    const-string v4, "VZW"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c5

    const-string v4, "Camera,Gallery,Video,Chrome,Email"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getToolboxShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_27

    :cond_c5
    const-string v4, "Camera,Gallery,Video,Internet,Email"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getToolboxShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_27

    .restart local v20    # "defQuickBtnNum":I
    .restart local v37    # "notification_active_app_list":Ljava/lang/String;
    .restart local v39    # "quickSettingsList":Ljava/lang/String;
    :cond_c6
    const-string v4, "NONE"

    const-string v5, "BRILLIANTCUT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c7

    const-string v4, "lockscreen_ripple_effect"

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_c7
    const-string v4, "NONE"

    const-string v5, "POPPINGCOLOURS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c8

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_c8
    const-string v4, "NONE"

    const-string v5, "BLIND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c9

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_c9
    const-string v4, "NONE"

    const-string v5, "WATERCOLOUR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ca

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_ca
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_cd

    const-string v4, "Ripple effect"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cb

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_cb
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isSupportStart_J_project()Z

    move-result v4

    if-eqz v4, :cond_cc

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_cc
    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_cd
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isSupportStart_J_project()Z

    move-result v4

    if-eqz v4, :cond_ce

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_ce
    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_cf
    const-string v4, "unlock_text"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_d0
    const-string v4, "1"

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d2

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->isAllNAVendor()Z

    move-result v4

    if-eqz v4, :cond_d1

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_d1
    const-string v4, "unlock_text"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_d2
    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_d3
    const-string v4, "led_indicator_low_battery"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_d4
    const-string v4, "intelligent_sleep_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2b

    :cond_d5
    const-string v4, "intelligent_sleep_mode"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2c

    :cond_d6
    const-string v4, "smart_scroll_adv_chrome"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "smart_scroll_adv_gmail_body"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2d

    :cond_d7
    const-string v4, "open_camera"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2e

    :cond_d8
    const-string v4, "multi_window_enabled"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2f

    :cond_d9
    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_da
    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_db
    const-string v4, "pen_hovering"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_pointer"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_information_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_progress_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_speed_dial_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_webpage_magnifier"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_sound"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_ripple_effect"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_attach_detach_vibration"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_31

    :cond_dc
    const-string v4, "pen_hovering_icon_label"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_list_scroll"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_link_preview"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "pen_hovering_air_menu"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_32

    :cond_dd
    const-string v4, "pen_detect_mode_disabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_33

    :cond_de
    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_34

    :cond_df
    const-string v4, "parental_control_block_key"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_35

    :cond_e0
    const/16 v49, 0x0

    goto/16 :goto_36

    .restart local v49    # "supportFolderType":Z
    :cond_e1
    const/16 v34, 0x0

    goto/16 :goto_37

    .restart local v34    # "mDualFolderType":Z
    :cond_e2
    const-string v4, "my_profile_enabled"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_38

    :cond_e3
    const-string v4, "my_profile_information"

    const v5, 0x7f06004e

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_39

    :cond_e4
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static {v4}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e5

    const-string v4, "my_profile_font_filename"

    const-string v5, "fonts/Samsungsans.ttf"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "my_profile_font_package"

    const-string v5, "com.monotype.android.font.samsungsans"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3a

    :cond_e5
    const-string v4, "my_profile_font_filename"

    const-string v5, "fonts/Cooljazz.ttf"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "my_profile_font_package"

    const-string v5, "com.monotype.android.font.cooljazz"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3a

    :cond_e6
    const-string v4, "kg_enable_camera_widget"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "kg_enable_camera_widget_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3b

    :cond_e7
    const-string v4, "lock_screen_clock_size"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_e8
    const-string v4, "settings_gridui"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3d

    :cond_e9
    const-string v4, "KDI"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const-string v4, "nfc_rw_p2p_switch"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3e

    .restart local v16    # "changeableFeature":Ljava/lang/String;
    .restart local v25    # "festivalVersion":Ljava/lang/String;
    .restart local v51    # "typeString":Ljava/lang/String;
    :cond_ea
    const-string v4, "festival_effect_festival_home"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "festival_effect_lockscreen_wallpaper"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "festival_effect_unlock_effect"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "festival_effect_charging_effect"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "festival_effect_messages_background"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "festival_effect_notification_panel"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "festival_effect_text_arts_effect"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "current_festival_effect_package"

    const-string v5, "com.bst.festivalrespreload2"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "current_festival_wallpaper_package"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "current_festival_wallpaper_class"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3f

    :cond_eb
    if-nez v30, :cond_ec

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isOSUpgrade()Z

    move-result v4

    if-eqz v4, :cond_ed

    :cond_ec
    const-string v4, "lock_additional_info"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lock_additional_weather"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_60
    const-string v4, "com.sec.android.app.shealth"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/DatabaseHelper;->hasApplication(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ef

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isOSUpgrade()Z

    move-result v4

    if-nez v4, :cond_ef

    const-string v4, "lock_additional_steps"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "walk_mate"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_40

    :cond_ed
    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->isWeatherDetailSettings()Z

    move-result v4

    if-eqz v4, :cond_ee

    const-string v4, "lock_additional_weather"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "weather_cover"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_60

    :cond_ee
    const-string v4, "lock_additional_weather"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "weather_cover"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_60

    :cond_ef
    const-string v4, "lock_additional_steps"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_40
.end method

.method private loadTtsDefaults(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "sales_code":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_UseDefaultTtsEngineAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "tts_default_synth"

    const-string v2, "com.samsung.SMT"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "tts_default_locale"

    const-string v2, "com.samsung.SMT:zho-CHN,com.google.android.tts:eng-usa,com.svox.pico:eng-USA"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "tts_default_synth"

    const-string v2, "com.samsung.SMT"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "tts_default_locale"

    const-string v2, "com.samsung.SMT:zho-CHN,com.google.android.tts:eng-usa,com.svox.pico:eng-USA"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "tts_default_synth"

    const-string v2, "com.samsung.SMT"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "tts_default_rate"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 6
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_DefDialingKeypadTone"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_DefDialingKeypadTone"

    const-string v3, "ON"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dtmf_tone"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "sound_effects_enabled"

    const v1, 0x7f040024

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "MTR"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "lockscreen_sounds_enabled"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v0, "haptic_feedback_enabled"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-static {v0}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040008

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :goto_2
    const-string v0, "sip_key_feedback_sound"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-static {v0}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sip_key_feedback_vibration"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    const-string v0, "SKT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "volume_waiting_tone"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "dtmf_tone"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "dtmf_tone"

    const v1, 0x7f040023

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v0, "lockscreen_sounds_enabled"

    const v1, 0x7f05000d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const-string v0, "sip_key_feedback_vibration"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteOld"    # Z

    .prologue
    if-eqz p2, :cond_0

    const-string v2, "DELETE FROM system WHERE name=\'vibrate_on\'"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x0

    .local v1, "vibrate":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v2

    or-int/2addr v1, v2

    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    return-void

    .end local v1    # "vibrate":I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f04002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, "isDefaultTrue":Z
    if-eqz v0, :cond_1

    const-string v6, "vibrate_on"

    invoke-direct {p0, p1, v6, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v2

    .local v2, "vibrateSetting":I
    :goto_0
    and-int/lit8 v6, v2, 0x3

    if-ne v6, v4, :cond_2

    move v3, v4

    .local v3, "vibrateWhenRinging":Z
    :goto_1
    const/4 v1, 0x0

    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v6, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    const-string v6, "vibrate_when_ringing"

    if-eqz v3, :cond_3

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v6, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    return-void

    .end local v1    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v2    # "vibrateSetting":I
    .end local v3    # "vibrateWhenRinging":Z
    :cond_1
    const-string v6, "vibrate_on"

    invoke-direct {p0, p1, v6, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "vibrateSetting":I
    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    .restart local v1    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v3    # "vibrateWhenRinging":Z
    :cond_3
    move v4, v5

    goto :goto_2

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v4
.end method

.method private loadVoiceControlSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->hasNewVoiceControlConcept()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "voice_input_control"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .local v1, "voiceState":I
    :try_start_0
    const-string v2, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    if-nez v1, :cond_0

    const-string v2, "voice_input_control_incomming_calls"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "voice_input_control_chatonv"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "voice_input_control_camera"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "voice_input_control_alarm"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "voice_input_control_music"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "voice_input_control"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v1    # "voiceState":I
    :cond_1
    return-void

    .restart local v1    # "voiceState":I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->ChangeDefaultVolume()V

    const-string v2, "volume_music"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "volume_ring"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "volume_system"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "volume_voice"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "volume_alarm"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "volume_notification"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "volume_bluetooth_sco"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0xa6

    .local v0, "ringerModeAffectedStreams":I
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    or-int/lit8 v0, v0, 0x8

    :cond_0
    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "mute_streams_affected"

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    .end local v0    # "ringerModeAffectedStreams":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private loadpowersaving_appsettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .local v10, "values":Landroid/content/ContentValues;
    iget-object v11, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v11, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f030001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    const-string v11, "powersaving_appsettings"

    invoke-static {v7, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .local v1, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v11, 0x3

    if-ne v9, v11, :cond_1

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v1, :cond_2

    :cond_1
    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    const-string v11, "appsettings"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .end local v1    # "depth":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "type":I
    :cond_2
    :goto_1
    return-void

    .restart local v1    # "depth":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "type":I
    :cond_3
    const/4 v11, 0x0

    const-string v12, "packagename"

    invoke-interface {v7, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "pkg":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "mode"

    const/4 v13, 0x1

    invoke-interface {v7, v11, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .local v4, "mode":I
    const/4 v11, 0x0

    const-string v12, "automodeparam"

    const/16 v13, 0x63

    invoke-interface {v7, v11, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .local v0, "autoModeParam":I
    const/4 v11, 0x0

    const-string v12, "manualmodeparam"

    const/16 v13, 0x63

    invoke-interface {v7, v11, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .local v3, "manualModeParam":I
    const-string v11, "packagename"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "mode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "autovalue"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "manualvalue"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "powersaving_appsetting"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v11, "SettingsProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appsettings: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v0    # "autoModeParam":I
    .end local v1    # "depth":I
    .end local v3    # "manualModeParam":I
    .end local v4    # "mode":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v11, "SettingsProvider"

    const-string v12, "Got execption parsing powersaving_appsettings."

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v11, "SettingsProvider"

    const-string v12, "Got execption parsing powersaving_appsettings."

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private movePrefixedSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceTable"    # Ljava/lang/String;
    .param p3, "destTable"    # Ljava/lang/String;
    .param p4, "prefixesToMove"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "insertStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .local v1, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name,value) SELECT name,value FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE substr(name,0,?)=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE substr(name,0,?)=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .local v5, "prefix":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    invoke-virtual {v1, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v5    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    return-void

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v6
.end method

.method private moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceTable"    # Ljava/lang/String;
    .param p3, "destTable"    # Ljava/lang/String;
    .param p4, "settingsToMove"    # [Ljava/lang/String;
    .param p5, "doIgnore"    # Z

    .prologue
    const/4 v3, 0x0

    .local v3, "insertStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .local v1, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p5, :cond_0

    const-string v6, " OR IGNORE "

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name,value) SELECT name,value FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE name=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE name=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .local v5, "setting":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "setting":Ljava/lang/String;
    :cond_0
    const-string v6, ""

    goto :goto_0

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    return-void

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v6
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, ""

    .local v0, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .local v2, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .local v1, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .local v3, "sensorType":I
    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "sensorType":I
    :cond_1
    :try_start_0
    iget-boolean v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mAutomaticAvailable:Z

    if-eqz v5, :cond_2

    const-string v4, "1"

    .local v4, "value":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT OR REPLACE INTO system(name,value) values(\'screen_brightness_mode\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method private upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const-string v1, "system"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "value"

    aput-object v0, v2, v12

    const-string v3, "name=\'lock_pattern\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "lockPattern":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v11, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .local v9, "cellPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v11, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "cellPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v0, "system"

    const-string v1, "name=\'lock_pattern\'"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v10    # "lockPattern":Ljava/lang/String;
    :goto_1
    return-void

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .restart local v10    # "lockPattern":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeNotificationPanel(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x0

    .local v3, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "sales_code":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ril.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getQuickSettingsList()Ljava/lang/String;

    move-result-object v1

    .local v1, "quickSettingsList":Ljava/lang/String;
    const-string v4, "notification_panel_active_app_list"

    invoke-direct {p0, v3, v4, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefQuickBtnNum()I

    move-result v0

    .local v0, "defQuickBtnNum":I
    const-string v4, "notification_panel_active_number_of_apps"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    return-void

    .end local v0    # "defQuickBtnNum":I
    .end local v1    # "quickSettingsList":Ljava/lang/String;
    .end local v2    # "sales_code":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v4
.end method

.method private upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v1, "system"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "value"

    aput-object v0, v2, v7

    const-string v3, "name=? AND value=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "screen_off_timeout"

    aput-object v0, v4, v6

    const-string v0, "-1"

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    const-string v0, "screen_off_timeout"

    const v1, 0x927c0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    const-string v2, "vibrate_on"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .local v1, "vibrateSetting":I
    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v3, v3, v2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    const/4 v0, 0x0

    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method


# virtual methods
.method public ChangeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "."

    const-string v4, "/"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .local v1, "RetDateFormat":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "NumCheck":C
    const/16 v3, 0x2f

    if-le v0, v3, :cond_0

    const/16 v3, 0x3a

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "NumCheck":C
    :cond_1
    return-object v1
.end method

.method public SetRegionalDate_Update([Ljava/lang/String;)I
    .locals 12
    .param p1, "dateFormats"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "dummydate_for_dateformat":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .local v9, "format":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/android/providers/settings/DatabaseHelper;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    .local v8, "flag":Z
    const/4 v7, 0x0

    .local v7, "curAppliedDate":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v1, p1

    if-ge v10, v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    aget-object v2, p1, v10

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .local v11, "tempDate":Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/android/providers/settings/DatabaseHelper;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v7, v10

    const/4 v8, 0x1

    .end local v11    # "tempDate":Ljava/lang/String;
    :cond_0
    if-nez v8, :cond_1

    const/4 v7, -0x1

    :cond_1
    return v7

    .restart local v11    # "tempDate":Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-string v1, "CREATE TABLE system (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE INDEX systemIndex1 ON system (name);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const-string v1, "CREATE TABLE bluetooth_devices (_id INTEGER PRIMARY KEY,name TEXT,addr TEXT,channel INTEGER,type INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,folder TEXT,intent TEXT,shortcut INTEGER,ordering INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE INDEX bookmarksIndex1 ON bookmarks (folder);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE INDEX bookmarksIndex2 ON bookmarks (shortcut);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE powersaving_appsetting (_id INTEGER PRIMARY KEY,packagename TEXT UNIQUE,mode INTEGER,autovalue INTEGER,manualvalue INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE INDEX powersaving_appsettingIndex1 ON powersaving_appsetting (packagename);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "onlyCore":Z
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadpowersaving_appsettings(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVoiceControlSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database is downgraded from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 55
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading settings database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v51, p2

    .local v51, "upgradeVersion":I
    const/16 v3, 0x14

    move/from16 v0, v51

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    const/16 v51, 0x15

    :cond_0
    const/16 v3, 0x16

    move/from16 v0, v51

    if-ge v0, v3, :cond_1

    const/16 v51, 0x16

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/16 v3, 0x17

    move/from16 v0, v51

    if-ge v0, v3, :cond_2

    const-string v3, "UPDATE favorites SET iconResource=0 WHERE iconType=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v51, 0x17

    :cond_2
    const/16 v3, 0x17

    move/from16 v0, v51

    if-ne v0, v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v3, "ALTER TABLE favorites ADD spanX INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "ALTER TABLE favorites ADD spanY INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "UPDATE favorites SET spanX=1, spanY=1 WHERE itemType<=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "UPDATE favorites SET spanX=2, spanY=2 WHERE itemType=1000 or itemType=1002"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "UPDATE favorites SET spanX=4, spanY=1 WHERE itemType=1001"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x18

    :cond_3
    const/16 v3, 0x18

    move/from16 v0, v51

    if-ne v0, v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v3, "DELETE FROM system WHERE name=\'network_preference\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO system (\'name\', \'value\') values (\'network_preference\', \'1\')"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x19

    :cond_4
    const/16 v3, 0x19

    move/from16 v0, v51

    if-ne v0, v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_2
    const-string v3, "ALTER TABLE favorites ADD uri TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "ALTER TABLE favorites ADD displayMode INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x1a

    :cond_5
    const/16 v3, 0x1a

    move/from16 v0, v51

    if-ne v0, v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x1b

    :cond_6
    const/16 v3, 0x1b

    move/from16 v0, v51

    if-ne v0, v3, :cond_7

    const/16 v3, 0x20

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "adb_enabled"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "android_id"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "bluetooth_on"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "data_roaming"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "data_roaming2"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "device_provisioned"

    aput-object v4, v7, v3

    const/4 v3, 0x6

    const-string v4, "http_proxy"

    aput-object v4, v7, v3

    const/4 v3, 0x7

    const-string v4, "install_non_market_apps"

    aput-object v4, v7, v3

    const/16 v3, 0x8

    const-string v4, "location_providers_allowed"

    aput-object v4, v7, v3

    const/16 v3, 0x9

    const-string v4, "logging_id"

    aput-object v4, v7, v3

    const/16 v3, 0xa

    const-string v4, "network_preference"

    aput-object v4, v7, v3

    const/16 v3, 0xb

    const-string v4, "parental_control_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0xc

    const-string v4, "parental_control_last_update"

    aput-object v4, v7, v3

    const/16 v3, 0xd

    const-string v4, "parental_control_redirect_url"

    aput-object v4, v7, v3

    const/16 v3, 0xe

    const-string v4, "settings_classname"

    aput-object v4, v7, v3

    const/16 v3, 0xf

    const-string v4, "usb_mass_storage_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0x10

    const-string v4, "use_google_mail"

    aput-object v4, v7, v3

    const/16 v3, 0x11

    const-string v4, "wifi_networks_available_notification_on"

    aput-object v4, v7, v3

    const/16 v3, 0x12

    const-string v4, "wifi_networks_available_repeat_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x13

    const-string v4, "wifi_num_open_networks_kept"

    aput-object v4, v7, v3

    const/16 v3, 0x14

    const-string v4, "wifi_on"

    aput-object v4, v7, v3

    const/16 v3, 0x15

    const-string v4, "wifi_watchdog_acceptable_packet_loss_percentage"

    aput-object v4, v7, v3

    const/16 v3, 0x16

    const-string v4, "wifi_watchdog_ap_count"

    aput-object v4, v7, v3

    const/16 v3, 0x17

    const-string v4, "wifi_watchdog_background_check_delay_ms"

    aput-object v4, v7, v3

    const/16 v3, 0x18

    const-string v4, "wifi_watchdog_background_check_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0x19

    const-string v4, "wifi_watchdog_background_check_timeout_ms"

    aput-object v4, v7, v3

    const/16 v3, 0x1a

    const-string v4, "wifi_watchdog_initial_ignored_ping_count"

    aput-object v4, v7, v3

    const/16 v3, 0x1b

    const-string v4, "wifi_watchdog_max_ap_checks"

    aput-object v4, v7, v3

    const/16 v3, 0x1c

    const-string v4, "wifi_watchdog_on"

    aput-object v4, v7, v3

    const/16 v3, 0x1d

    const-string v4, "wifi_watchdog_ping_count"

    aput-object v4, v7, v3

    const/16 v3, 0x1e

    const-string v4, "wifi_watchdog_ping_delay_ms"

    aput-object v4, v7, v3

    const/16 v3, 0x1f

    const-string v4, "wifi_watchdog_ping_timeout_ms"

    aput-object v4, v7, v3

    .local v7, "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "secure"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    const/16 v51, 0x1c

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_7
    const/16 v3, 0x1c

    move/from16 v0, v51

    if-eq v0, v3, :cond_8

    const/16 v3, 0x1d

    move/from16 v0, v51

    if-ne v0, v3, :cond_9

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_4
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v33, 0x26

    .local v33, "newValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x1e

    .end local v33    # "newValue":I
    :cond_9
    const/16 v3, 0x1e

    move/from16 v0, v51

    if-ne v0, v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_5
    const-string v3, "UPDATE bookmarks SET folder = \'@quicklaunch\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "UPDATE bookmarks SET title = \'\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x1f

    :cond_a
    const/16 v3, 0x1f

    move/from16 v0, v51

    if-ne v0, v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .local v45, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    const-string v3, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_b

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b
    const/16 v51, 0x20

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_c
    const/16 v3, 0x20

    move/from16 v0, v51

    if-ne v0, v3, :cond_e

    const-string v3, "ro.com.android.wifi-watchlist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .local v53, "wifiWatchList":Ljava/lang/String;
    invoke-static/range {v53 .. v53}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR IGNORE INTO secure(name,value) values(\'wifi_watchdog_watch_list\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_d
    const/16 v51, 0x21

    .end local v53    # "wifiWatchList":Ljava/lang/String;
    :cond_e
    const/16 v3, 0x21

    move/from16 v0, v51

    if-ne v0, v3, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_8
    const-string v3, "INSERT INTO system(name,value) values(\'zoom\',\'2\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x22

    :cond_f
    const/16 v3, 0x22

    move/from16 v0, v51

    if-ne v0, v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_9
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_10

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_10
    const/16 v51, 0x23

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_11
    const/16 v3, 0x23

    move/from16 v0, v51

    if-ne v0, v3, :cond_12

    const/16 v51, 0x24

    :cond_12
    const/16 v3, 0x24

    move/from16 v0, v51

    if-ne v0, v3, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_a
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v33, 0xa6

    .restart local v33    # "newValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x25

    .end local v33    # "newValue":I
    :cond_13
    const/16 v3, 0x25

    move/from16 v0, v51

    if-ne v0, v3, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_b
    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "airplane_mode_toggleable_radios"

    const v4, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_14

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_14
    const/16 v51, 0x26

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_15
    const/16 v3, 0x26

    move/from16 v0, v51

    if-ne v0, v3, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_c2

    const-string v52, "1"

    .local v52, "value":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR IGNORE INTO secure(name,value) values(\'assisted_gps_enabled\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x27

    .end local v52    # "value":Ljava/lang/String;
    :cond_16
    const/16 v3, 0x27

    move/from16 v0, v51

    if-ne v0, v3, :cond_17

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v51, 0x28

    :cond_17
    const/16 v3, 0x28

    move/from16 v0, v51

    if-ne v0, v3, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_d
    const-string v3, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_18

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_18
    const/16 v51, 0x29

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_19
    const/16 v3, 0x29

    move/from16 v0, v51

    if-ne v0, v3, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_e
    const-string v3, "DELETE FROM system WHERE name=\'haptic_feedback_enabled\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_1a

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    :try_start_f
    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_enable\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_internal_enable\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_level\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_density_erm\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_sharpness_erm\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_strength_erm\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_density_serm\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_sharpness_serm\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_strength_serm\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_density_lra\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_sharpness_lra\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_strength_lra\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_density_pzo\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_sharpness_pzo\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM global WHERE name=\'def_tactileassist_strength_pzo\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_1b

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1b
    const/16 v51, 0x2a

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1c
    const/16 v3, 0x2a

    move/from16 v0, v51

    if-ne v0, v3, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_10
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "notification_light_pulse"

    const v4, 0x7f040015

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_1d

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1d
    const/16 v51, 0x2b

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1e
    const/16 v3, 0x2b

    move/from16 v0, v51

    if-ne v0, v3, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->ChangeDefaultVolume()V

    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "volume_bluetooth_sco"

    sget-object v4, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_1f

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1f
    const/16 v51, 0x2c

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_20
    const/16 v3, 0x2c

    move/from16 v0, v51

    if-ne v0, v3, :cond_21

    const-string v3, "DROP TABLE IF EXISTS gservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP INDEX IF EXISTS gservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v51, 0x2d

    :cond_21
    const/16 v3, 0x2d

    move/from16 v0, v51

    if-ne v0, v3, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_12
    const-string v3, "INSERT INTO secure(name,value) values(\'mount_play_not_snd\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO secure(name,value) values(\'mount_ums_autostart\',\'0\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO secure(name,value) values(\'mount_ums_prompt\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO secure(name,value) values(\'mount_ums_notify_enabled\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x2e

    :cond_22
    const/16 v3, 0x2e

    move/from16 v0, v51

    if-ne v0, v3, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_13
    const-string v3, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x2f

    :cond_23
    const/16 v3, 0x2f

    move/from16 v0, v51

    if-ne v0, v3, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_14
    const-string v3, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x30

    :cond_24
    const/16 v3, 0x30

    move/from16 v0, v51

    if-ne v0, v3, :cond_25

    const/16 v51, 0x31

    :cond_25
    const/16 v3, 0x31

    move/from16 v0, v51

    if-ne v0, v3, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_15
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_26

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_26
    const/16 v51, 0x32

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_27
    const/16 v3, 0x32

    move/from16 v0, v51

    if-ne v0, v3, :cond_28

    const/16 v51, 0x33

    :cond_28
    const/16 v3, 0x33

    move/from16 v0, v51

    if-ne v0, v3, :cond_29

    const/16 v3, 0xb

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lock_pattern_autolock"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "lock_pattern_visible_pattern"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "lock_pattern_tactile_feedback_enabled"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "lock_fingerprint_autolock"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "lockscreen.alternate_method"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "lockscreen.password_type"

    aput-object v4, v7, v3

    const/4 v3, 0x6

    const-string v4, "lockscreen.lockoutattemptdeadline"

    aput-object v4, v7, v3

    const/4 v3, 0x7

    const-string v4, "lockscreen.patterneverchosen"

    aput-object v4, v7, v3

    const/16 v3, 0x8

    const-string v4, "lock_pattern_autolock"

    aput-object v4, v7, v3

    const/16 v3, 0x9

    const-string v4, "lockscreen.lockedoutpermanently"

    aput-object v4, v7, v3

    const/16 v3, 0xa

    const-string v4, "lockscreen.password_salt"

    aput-object v4, v7, v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "secure"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    const/16 v51, 0x34

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_29
    const/16 v3, 0x34

    move/from16 v0, v51

    if-ne v0, v3, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_16
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "vibrate_in_silent"

    const v4, 0x7f04001d

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_2a

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2a
    const/16 v51, 0x35

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2b
    const/16 v3, 0x35

    move/from16 v0, v51

    if-ne v0, v3, :cond_2c

    const/16 v51, 0x36

    :cond_2c
    const/16 v3, 0x36

    move/from16 v0, v51

    if-ne v0, v3, :cond_2d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_17
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x37

    :cond_2d
    const/16 v3, 0x37

    move/from16 v0, v51

    if-ne v0, v3, :cond_2f

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "set_install_location"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "default_install_location"

    aput-object v4, v7, v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "secure"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_18
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "set_install_location"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "default_install_location"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_2e

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2e
    const/16 v51, 0x38

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2f
    const/16 v3, 0x38

    move/from16 v0, v51

    if-ne v0, v3, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    const-string v3, "DELETE FROM system WHERE name=\'airplane_mode_toggleable_radios\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "airplane_mode_toggleable_radios"

    const v4, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_30

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_30
    const/16 v51, 0x39

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_31
    const/16 v3, 0x39

    move/from16 v0, v51

    if-ne v0, v3, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1a
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "accessibility_script_injection"

    const v4, 0x7f04001e

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "accessibility_web_content_key_bindings"

    const v4, 0x7f06000e

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_32

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_32
    const/16 v51, 0x3a

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_33
    const/16 v3, 0x3a

    move/from16 v0, v51

    if-ne v0, v3, :cond_35

    const-string v3, "auto_time"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v26

    .local v26, "autoTimeValue":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1b
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "auto_time_zone"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_34

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_34
    const/16 v51, 0x3b

    .end local v26    # "autoTimeValue":I
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_35
    const/16 v3, 0x3b

    move/from16 v0, v51

    if-ne v0, v3, :cond_37

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1c
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "user_rotation"

    const v4, 0x7f05000f

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_36

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_36
    const/16 v51, 0x3c

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_37
    const/16 v3, 0x3c

    move/from16 v0, v51

    if-ne v0, v3, :cond_38

    const/16 v51, 0x3d

    :cond_38
    const/16 v3, 0x3d

    move/from16 v0, v51

    if-ne v0, v3, :cond_39

    const/16 v51, 0x3e

    :cond_39
    const/16 v3, 0x3e

    move/from16 v0, v51

    if-ne v0, v3, :cond_3a

    const/16 v51, 0x3f

    :cond_3a
    const/16 v3, 0x3f

    move/from16 v0, v51

    if-ne v0, v3, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1d
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v33, 0xae

    .restart local v33    # "newValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x40

    .end local v33    # "newValue":I
    :cond_3b
    const/16 v3, 0x40

    move/from16 v0, v51

    if-ne v0, v3, :cond_3d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1e
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "long_press_timeout"

    const v4, 0x7f050012

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_3c

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3c
    const/16 v51, 0x41

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3d
    const/16 v3, 0x41

    move/from16 v0, v51

    if-ne v0, v3, :cond_3f

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1f
    const-string v3, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_3e

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3e
    const/16 v51, 0x42

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3f
    const/16 v3, 0x42

    move/from16 v0, v51

    if-ne v0, v3, :cond_41

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v42, 0xa6

    .local v42, "ringerModeAffectedStreams":I
    :try_start_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_40

    or-int/lit8 v42, v42, 0x8

    :cond_40
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x43

    .end local v42    # "ringerModeAffectedStreams":I
    :cond_41
    const/16 v3, 0x43

    move/from16 v0, v51

    if-ne v0, v3, :cond_43

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_21
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "touch_exploration_enabled"

    const v4, 0x7f040020

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_42

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_42
    const/16 v51, 0x44

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_43
    const/16 v3, 0x44

    move/from16 v0, v51

    if-ne v0, v3, :cond_44

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_22
    const-string v3, "DELETE FROM system WHERE name=\'notifications_use_ring_volume\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x45

    :cond_44
    const/16 v3, 0x45

    move/from16 v0, v51

    if-ne v0, v3, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .local v25, "airplaneRadios":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v48

    .local v48, "toggleableRadios":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE system SET value=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WHERE name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "airplane_mode_radios"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE system SET value=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WHERE name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x46

    .end local v25    # "airplaneRadios":Ljava/lang/String;
    .end local v48    # "toggleableRadios":Ljava/lang/String;
    :cond_45
    const/16 v3, 0x46

    move/from16 v0, v51

    if-ne v0, v3, :cond_46

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v51, 0x47

    :cond_46
    const/16 v3, 0x47

    move/from16 v0, v51

    if-ne v0, v3, :cond_48

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_24
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "speak_password"

    const v4, 0x7f04001f

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_47

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_47
    const/16 v51, 0x48

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_48
    const/16 v3, 0x48

    move/from16 v0, v51

    if-ne v0, v3, :cond_4a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_25
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "vibrate_in_silent"

    const v4, 0x7f04001d

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_49

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_49
    const/16 v51, 0x49

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_4a
    const/16 v3, 0x49

    move/from16 v0, v51

    if-ne v0, v3, :cond_4b

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v51, 0x4a

    :cond_4b
    const/16 v3, 0x4a

    move/from16 v0, v51

    if-ne v0, v3, :cond_4d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_26
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "accessibility_script_injection_url"

    const v4, 0x7f06000f

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_4c

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4c
    const/16 v51, 0x4b

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_4d
    const/16 v3, 0x4b

    move/from16 v0, v51

    if-ne v0, v3, :cond_52

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/16 v27, 0x0

    .local v27, "c":Landroid/database/Cursor;
    :try_start_27
    const-string v9, "secure"

    const/4 v3, 0x2

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v10, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v10, v3

    const-string v11, "name=\'lockscreen.disabled\'"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    if-eqz v27, :cond_4e

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4f

    :cond_4e
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "lockscreen.disabled"

    const v4, 0x7f04001a

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :cond_4f
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v27, :cond_50

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_50
    if-eqz v45, :cond_51

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_51
    const/16 v51, 0x4c

    .end local v27    # "c":Landroid/database/Cursor;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_52
    const/16 v3, 0x4c

    move/from16 v0, v51

    if-ne v0, v3, :cond_53

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_28
    const-string v3, "DELETE FROM system WHERE name=\'vibrate_in_silent\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v51, 0x4d

    :cond_53
    const/16 v3, 0x4d

    move/from16 v0, v51

    if-ne v0, v3, :cond_54

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v51, 0x4e

    :cond_54
    const/16 v3, 0x4e

    move/from16 v0, v51

    if-ne v0, v3, :cond_5b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_29
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "accessibility_script_injection_url"

    const v4, 0x7f06000f

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_29

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_55

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_55
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v46, 0x0

    .local v46, "stmt_system":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2a
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v46

    const-string v3, "intelligent_screen_mode"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_switch_onoff"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_disable_incoming_calls"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_disable_notifications"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_disable_alarm_and_timer"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_disable_led_indicator"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_always"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_start_hour"

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_start_min"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_end_hour"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_end_min"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_allow_list"

    const v4, 0x7f06004a

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v3}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    const-string v3, "pen_hovering_pointer"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_56
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeNotificationPanel(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v3, "Germany"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "Australia"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_57
    const-string v3, "lock_screen_shortcut"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "lockscreen_shortcut_box"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "information_ticker"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_58
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v46, :cond_59

    invoke-virtual/range {v46 .. v46}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_59
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v47, 0x0

    .local v47, "stmt_system2":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2b
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v47

    const-string v3, "easy_mode_switch"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v47, :cond_5a

    invoke-virtual/range {v47 .. v47}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5a
    const/16 v51, 0x4f

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v46    # "stmt_system":Landroid/database/sqlite/SQLiteStatement;
    .end local v47    # "stmt_system2":Landroid/database/sqlite/SQLiteStatement;
    :cond_5b
    const/16 v3, 0x4f

    move/from16 v0, v51

    if-ne v0, v3, :cond_5d

    const-string v3, "secure"

    const-string v4, "accessibility_enabled"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_da

    const/16 v24, 0x1

    .local v24, "accessibilityEnabled":Z
    :goto_1
    const-string v3, "secure"

    const-string v4, "touch_exploration_enabled"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_db

    const/16 v49, 0x1

    .local v49, "touchExplorationEnabled":Z
    :goto_2
    if-eqz v24, :cond_5c

    if-eqz v49, :cond_5c

    const-string v3, "secure"

    const-string v4, "enabled_accessibility_services"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, "enabledServices":Ljava/lang/String;
    const-string v3, "secure"

    const-string v4, "touch_exploration_granted_accessibility_services"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .local v50, "touchExplorationGrantedServices":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "touch_exploration_granted_accessibility_services"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2c

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_5c

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v31    # "enabledServices":Ljava/lang/String;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v50    # "touchExplorationGrantedServices":Ljava/lang/String;
    :cond_5c
    const/16 v51, 0x50

    .end local v24    # "accessibilityEnabled":Z
    .end local v49    # "touchExplorationEnabled":Z
    :cond_5d
    const/16 v3, 0x50

    move/from16 v0, v51

    if-ne v0, v3, :cond_5f

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2d
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "screensaver_enabled"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "screensaver_activate_on_dock"

    const v4, 0x1120057

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v3, "screensaver_activate_on_sleep"

    const v4, 0x1120058

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v3, "screensaver_components"

    const-string v4, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "screensaver_default_component"

    const v4, 0x104003c

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_5e

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5e
    const/16 v51, 0x51

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5f
    const/16 v3, 0x51

    move/from16 v0, v51

    if-ne v0, v3, :cond_61

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2e
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "package_verifier_enable"

    const v4, 0x7f04000c

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2e

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_60

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_60
    const/16 v51, 0x52

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_61
    const/16 v3, 0x52

    move/from16 v0, v51

    if-ne v0, v3, :cond_63

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_62

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2f
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2f

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_62

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_62
    const/16 v51, 0x53

    :cond_63
    const/16 v3, 0x53

    move/from16 v0, v51

    if-ne v0, v3, :cond_65

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_30
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "accessibility_display_magnification_enabled"

    const v4, 0x7f040021

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "accessibility_display_magnification_scale"

    const v4, 0x7f070002

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "accessibility_display_magnification_auto_update"

    const v4, 0x7f040022

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_30

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_64

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_64
    const/16 v51, 0x54

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_65
    const/16 v3, 0x54

    move/from16 v0, v51

    if-ne v0, v3, :cond_67

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_66

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x6

    :try_start_31
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "adb_enabled"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "bluetooth_on"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "data_roaming"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "device_provisioned"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "install_non_market_apps"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "usb_mass_storage_enabled"

    aput-object v4, v7, v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_31

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_66

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_66
    const/16 v51, 0x55

    :cond_67
    const/16 v3, 0x55

    move/from16 v0, v51

    if-ne v0, v3, :cond_69

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_68

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x1

    :try_start_32
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "stay_on_while_plugged_in"

    aput-object v4, v7, v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_32

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_68
    const/16 v51, 0x56

    :cond_69
    const/16 v3, 0x56

    move/from16 v0, v51

    if-ne v0, v3, :cond_6b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_6a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x3

    :try_start_33
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_verifier_enable"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "verifier_timeout"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "verifier_default_response"

    aput-object v4, v7, v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_33

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_6a
    const/16 v51, 0x57

    :cond_6b
    const/16 v3, 0x57

    move/from16 v0, v51

    if-ne v0, v3, :cond_6d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_6c

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x3

    :try_start_34
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data_stall_alarm_non_aggressive_delay_in_ms"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "data_stall_alarm_aggressive_delay_in_ms"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "gprs_register_check_period_ms"

    aput-object v4, v7, v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_34

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_6c
    const/16 v51, 0x58

    :cond_6d
    const/16 v3, 0x58

    move/from16 v0, v51

    if-ne v0, v3, :cond_6f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_6e

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v3, 0x1f

    :try_start_35
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "battery_discharge_duration_threshold"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "battery_discharge_threshold"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "send_action_app_error"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "dropbox_age_seconds"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "dropbox_max_files"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "dropbox_quota_kb"

    aput-object v4, v7, v3

    const/4 v3, 0x6

    const-string v4, "dropbox_quota_percent"

    aput-object v4, v7, v3

    const/4 v3, 0x7

    const-string v4, "dropbox_reserve_percent"

    aput-object v4, v7, v3

    const/16 v3, 0x8

    const-string v4, "dropbox:"

    aput-object v4, v7, v3

    const/16 v3, 0x9

    const-string v4, "logcat_for_"

    aput-object v4, v7, v3

    const/16 v3, 0xa

    const-string v4, "sys_free_storage_log_interval"

    aput-object v4, v7, v3

    const/16 v3, 0xb

    const-string v4, "disk_free_change_reporting_threshold"

    aput-object v4, v7, v3

    const/16 v3, 0xc

    const-string v4, "sys_storage_threshold_percentage"

    aput-object v4, v7, v3

    const/16 v3, 0xd

    const-string v4, "sys_storage_threshold_max_bytes"

    aput-object v4, v7, v3

    const/16 v3, 0xe

    const-string v4, "sys_storage_full_threshold_bytes"

    aput-object v4, v7, v3

    const/16 v3, 0xf

    const-string v4, "sync_max_retry_delay_in_seconds"

    aput-object v4, v7, v3

    const/16 v3, 0x10

    const-string v4, "connectivity_change_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x11

    const-string v4, "captive_portal_detection_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0x12

    const-string v4, "captive_portal_server"

    aput-object v4, v7, v3

    const/16 v3, 0x13

    const-string v4, "nsd_on"

    aput-object v4, v7, v3

    const/16 v3, 0x14

    const-string v4, "set_install_location"

    aput-object v4, v7, v3

    const/16 v3, 0x15

    const-string v4, "default_install_location"

    aput-object v4, v7, v3

    const/16 v3, 0x16

    const-string v4, "inet_condition_debounce_up_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x17

    const-string v4, "inet_condition_debounce_down_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x18

    const-string v4, "read_external_storage_enforced_default"

    aput-object v4, v7, v3

    const/16 v3, 0x19

    const-string v4, "http_proxy"

    aput-object v4, v7, v3

    const/16 v3, 0x1a

    const-string v4, "global_http_proxy_host"

    aput-object v4, v7, v3

    const/16 v3, 0x1b

    const-string v4, "global_http_proxy_port"

    aput-object v4, v7, v3

    const/16 v3, 0x1c

    const-string v4, "global_http_proxy_exclusion_list"

    aput-object v4, v7, v3

    const/16 v3, 0x1d

    const-string v4, "set_global_http_proxy"

    aput-object v4, v7, v3

    const/16 v3, 0x1e

    const-string v4, "default_dns_server"

    aput-object v4, v7, v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_35

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_6e
    const/16 v51, 0x59

    :cond_6f
    const/16 v3, 0x59

    move/from16 v0, v51

    if-ne v0, v3, :cond_71

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_70

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x3

    :try_start_36
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/4 v3, 0x0

    const-string v4, "bluetooth_headset_priority_"

    aput-object v4, v37, v3

    const/4 v3, 0x1

    const-string v4, "bluetooth_a2dp_sink_priority_"

    aput-object v4, v37, v3

    const/4 v3, 0x2

    const-string v4, "bluetooth_input_device_priority_"

    aput-object v4, v37, v3

    .local v37, "prefixesToMove":[Ljava/lang/String;
    const-string v3, "secure"

    const-string v4, "global"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->movePrefixedSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_36

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v37    # "prefixesToMove":[Ljava/lang/String;
    :cond_70
    const/16 v51, 0x5a

    :cond_71
    const/16 v3, 0x5a

    move/from16 v0, v51

    if-ne v0, v3, :cond_73

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_72

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v3, 0xb

    :try_start_37
    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "window_animation_scale"

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string v4, "transition_animation_scale"

    aput-object v4, v12, v3

    const/4 v3, 0x2

    const-string v4, "animator_duration_scale"

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string v4, "fancy_ime_animations"

    aput-object v4, v12, v3

    const/4 v3, 0x4

    const-string v4, "compatibility_mode"

    aput-object v4, v12, v3

    const/4 v3, 0x5

    const-string v4, "emergency_tone"

    aput-object v4, v12, v3

    const/4 v3, 0x6

    const-string v4, "call_auto_retry"

    aput-object v4, v12, v3

    const/4 v3, 0x7

    const-string v4, "debug_app"

    aput-object v4, v12, v3

    const/16 v3, 0x8

    const-string v4, "wait_for_debugger"

    aput-object v4, v12, v3

    const/16 v3, 0x9

    const-string v4, "show_processes"

    aput-object v4, v12, v3

    const/16 v3, 0xa

    const-string v4, "always_finish_activities"

    aput-object v4, v12, v3

    .local v12, "systemToGlobal":[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    const-string v4, "preferred_network_mode"

    aput-object v4, v17, v3

    const/4 v3, 0x1

    const-string v4, "subscription_mode"

    aput-object v4, v17, v3

    .local v17, "secureToGlobal":[Ljava/lang/String;
    const-string v10, "system"

    const-string v11, "global"

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    const-string v15, "secure"

    const-string v16, "global"

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v18}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_37

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v12    # "systemToGlobal":[Ljava/lang/String;
    .end local v17    # "secureToGlobal":[Ljava/lang/String;
    :cond_72
    const/16 v51, 0x5b

    :cond_73
    const/16 v3, 0x5b

    move/from16 v0, v51

    if-ne v0, v3, :cond_75

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_74

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x1

    :try_start_38
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mode_ringer"

    aput-object v4, v7, v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_38

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_74
    const/16 v51, 0x5c

    :cond_75
    const/16 v3, 0x5c

    move/from16 v0, v51

    if-ne v0, v3, :cond_77

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_39
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_e2

    const-string v3, "global"

    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v29

    .local v29, "deviceProvisioned":I
    const-string v3, "user_setup_complete"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_39

    .end local v29    # "deviceProvisioned":I
    :goto_3
    if-eqz v45, :cond_76

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_76
    const/16 v51, 0x5d

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_77
    const/16 v3, 0x5d

    move/from16 v0, v51

    if-ne v0, v3, :cond_7a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_78

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3a
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_3a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_78

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_78
    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EDIT_AFTER_SCREEN_CAPTURE"

    invoke-static {v3}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3b
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "edit_after_screen_capture"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_79

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_79
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeNotificationPanel(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v51, 0x5e

    :cond_7a
    const/16 v3, 0x5e

    move/from16 v0, v51

    if-ne v0, v3, :cond_82

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_7b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3c
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "wireless_charging_started_sound"

    const v4, 0x7f06000c

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_3c

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_7b

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_7b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3d
    const-string v3, "INSERT INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "first_sim_brightness_flag"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_7c

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7c
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->isSupportStart_J_project()Z

    move-result v3

    if-nez v3, :cond_7d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    :try_start_3e
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "device_name"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3e

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_7d

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    :try_start_3f
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "kg_enable_camera_widget"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_3f

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_7e

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7e
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .local v43, "sales_code":Ljava/lang/String;
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "deviceType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    :try_start_40
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const/16 v32, 0x0

    .local v32, "isTablet":Z
    if-eqz v30, :cond_7f

    const-string v3, "tablet"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    :cond_7f
    if-nez v32, :cond_80

    const-string v3, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    :cond_80
    const-string v3, "my_profile_enabled"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_40

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_81

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_81
    const/16 v51, 0x5f

    .end local v30    # "deviceType":Ljava/lang/String;
    .end local v32    # "isTablet":Z
    .end local v43    # "sales_code":Ljava/lang/String;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_82
    const/16 v3, 0x5f

    move/from16 v0, v51

    if-ne v0, v3, :cond_8c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_83

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x1

    :try_start_41
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "font_size"

    aput-object v4, v7, v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_41

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_83
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_42
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "reading_mode_app_list"

    const-string v4, "com.google.android.apps.books/com.google.android.apps.books.app.BooksActivity;"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeNotificationPanel(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_42

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_84

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_84
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .restart local v43    # "sales_code":Ljava/lang/String;
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "deviceType":Ljava/lang/String;
    const/16 v32, 0x0

    .restart local v32    # "isTablet":Z
    if-eqz v30, :cond_85

    const-string v3, "tablet"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    :cond_85
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .local v38, "productName":Ljava/lang/String;
    const-string v3, "VZW"

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    if-eqz v32, :cond_87

    :cond_86
    const-string v3, "kona"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_87

    const-string v3, "p4note"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_87

    const-string v3, "lt02"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    :cond_87
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    :try_start_43
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "settings_listui"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_43

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_88

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_88
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_89

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x1

    :try_start_44
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bugreport_in_power_menu"

    aput-object v4, v7, v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_44

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_89
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    :try_start_45
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v3}, Lcom/android/providers/settings/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    const-string v3, "open_camera"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8a
    const-string v3, "regional"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_45

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_8b

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8b
    const/16 v51, 0x60

    .end local v30    # "deviceType":Ljava/lang/String;
    .end local v32    # "isTablet":Z
    .end local v38    # "productName":Ljava/lang/String;
    .end local v43    # "sales_code":Ljava/lang/String;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8c
    const/16 v3, 0x60

    move/from16 v0, v51

    if-ne v0, v3, :cond_8d

    const/16 v51, 0x61

    :cond_8d
    const/16 v3, 0x61

    move/from16 v0, v51

    if-ne v0, v3, :cond_99

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_8e

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_46
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "low_battery_sound_timeout"

    const v4, 0x7f050016

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_46

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_8e

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8e
    const-string v3, "ja3gduosctc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    const-string v3, "h3gduosctc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    const-string v3, "goldenltebmc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    :cond_8f
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_47
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeNotificationPanel(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "global"

    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v29

    .restart local v29    # "deviceProvisioned":I
    const-string v3, "user_setup_complete"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_47

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_90

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v29    # "deviceProvisioned":I
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_90
    const-string v3, "KOREA"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_48
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "assisted_gps_enabled"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_48

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_91

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_91
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    :try_start_49
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "accessibility_sec_captioning_enabled"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_49

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_92

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_92
    const-string v3, "VZW"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4a
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "auto_swipe_main_user"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_4a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_93

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_93
    const-string v3, "lock_screen_shortcut"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v44

    .local v44, "shortcutValue":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4b
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const/4 v3, 0x1

    move/from16 v0, v44

    if-ne v0, v3, :cond_f4

    const-string v3, "set_shortcuts_mode"

    const v4, 0x7f050020

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_4b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_94

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_94
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v47, 0x0

    .restart local v47    # "stmt_system2":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4c
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadEasyModeApps(Landroid/database/sqlite/SQLiteStatement;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_4c

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v47, :cond_95

    invoke-virtual/range {v47 .. v47}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_95
    const-string v3, "NONE"

    const-string v4, "WATERCOLOUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v36

    .local v36, "old_value":I
    const/16 v34, 0x0

    .local v34, "new_value":I
    const/4 v3, 0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_f7

    const/16 v34, 0x4

    :cond_96
    :goto_6
    if-eqz v34, :cond_97

    const/16 v45, 0x0

    :try_start_4d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "lockscreen_ripple_effect"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_4d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_97

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v34    # "new_value":I
    .end local v36    # "old_value":I
    :cond_97
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_98

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    :try_start_4e
    const-string v3, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultTactileAssistEnableSettings(Landroid/database/sqlite/SQLiteStatement;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultTactileAssistLevelSettings(Landroid/database/sqlite/SQLiteStatement;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_4e

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_98

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_98
    const/16 v51, 0x62

    .end local v44    # "shortcutValue":I
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v47    # "stmt_system2":Landroid/database/sqlite/SQLiteStatement;
    :cond_99
    const/16 v3, 0x62

    move/from16 v0, v51

    if-ne v0, v3, :cond_9a

    const/16 v51, 0x63

    :cond_9a
    const/16 v3, 0x63

    move/from16 v0, v51

    if-ne v0, v3, :cond_9b

    const/16 v51, 0x64

    :cond_9b
    const/16 v3, 0x64

    move/from16 v0, v51

    if-ne v0, v3, :cond_9d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_9c

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4f
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "heads_up_notifications_enabled"

    const v4, 0x7f05001a

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_4f

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_9c

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_9c
    const/16 v51, 0x65

    :cond_9d
    const/16 v3, 0x65

    move/from16 v0, v51

    if-ne v0, v3, :cond_9f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_9e

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_50
    const-string v3, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "device_name"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_50

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_9e

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_9e
    const/16 v51, 0x66

    :cond_9f
    const/16 v3, 0x66

    move/from16 v0, v51

    if-ne v0, v3, :cond_a1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_51
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_fc

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v3, 0x0

    const-string v4, "install_non_market_apps"

    aput-object v4, v22, v3

    .local v22, "globalToSecure":[Ljava/lang/String;
    const-string v20, "global"

    const-string v21, "secure"

    const/16 v23, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    invoke-direct/range {v18 .. v23}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .end local v22    # "globalToSecure":[Ljava/lang/String;
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_51

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_a0

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a0
    const/16 v51, 0x67

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_a1
    const/16 v3, 0x67

    move/from16 v0, v51

    if-ne v0, v3, :cond_a3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_52
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "wake_gesture_enabled"

    const v4, 0x7f04002b

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_52

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_a2

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a2
    const/16 v51, 0x68

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_a3
    const/16 v3, 0x69

    move/from16 v0, v51

    if-ge v0, v3, :cond_a6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_a4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_53
    const-string v3, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "guest_user_enabled"

    const v4, 0x7f04002c

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_53

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_a4

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_a4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v46, 0x0

    .restart local v46    # "stmt_system":Landroid/database/sqlite/SQLiteStatement;
    :try_start_54
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v46

    const-string v3, "intelligent_screen_mode"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_switch_onoff"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_disable_incoming_calls"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_disable_notifications"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_disable_alarm_and_timer"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_disable_led_indicator"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_always"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_start_hour"

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_start_min"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_end_hour"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_end_min"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "dormant_allow_list"

    const v4, 0x7f06004a

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_54

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v46, :cond_a5

    invoke-virtual/range {v46 .. v46}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a5
    const/16 v51, 0x69

    .end local v46    # "stmt_system":Landroid/database/sqlite/SQLiteStatement;
    :cond_a6
    const/16 v3, 0x6a

    move/from16 v0, v51

    if-ge v0, v3, :cond_aa

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_55
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "XTC"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    const-string v3, "SMA"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    const-string v3, "GLB"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    const-string v3, "XTE"

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_101

    :cond_a7
    const-string v3, "lock_screen_show_notifications"

    const v4, 0x7f050019

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_a8

    const-string v3, "global"

    const-string v4, "lock_screen_show_notifications"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .local v35, "oldShow":I
    if-ltz v35, :cond_a8

    const-string v3, "lock_screen_show_notifications"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "DELETE FROM global WHERE name=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .local v28, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    const-string v4, "lock_screen_show_notifications"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .end local v28    # "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v35    # "oldShow":I
    :cond_a8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_55

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_a9

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a9
    const/16 v51, 0x6a

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_aa
    const/16 v3, 0x6b

    move/from16 v0, v51

    if-ge v0, v3, :cond_ac

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_ab

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_56
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "trusted_sound"

    const v4, 0x7f06000b

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_56

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_ab

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_ab
    const/16 v51, 0x6b

    :cond_ac
    const/16 v3, 0x6c

    move/from16 v0, v51

    if-ge v0, v3, :cond_ae

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_57
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "screen_brightness_mode"

    const v4, 0x7f040006

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_57

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_ad

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ad
    const/16 v51, 0x6c

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_ae
    const/16 v3, 0x6d

    move/from16 v0, v51

    if-ge v0, v3, :cond_b0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_58
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "lock_screen_allow_private_notifications"

    const v4, 0x7f04002a

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_58

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_af

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_af
    const/16 v51, 0x6d

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_b0
    const/16 v3, 0x6e

    move/from16 v0, v51

    if-ge v0, v3, :cond_b2

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_59
    const-string v3, "UPDATE system SET value = ? WHERE name = ? AND value = ?;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const/4 v3, 0x1

    const-string v4, "SIP_ADDRESS_ONLY"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x2

    const-string v4, "sip_call_options"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x3

    const-string v4, "SIP_ASK_ME_EACH_TIME"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_59

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_b1

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b1
    const/16 v51, 0x6e

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_b2
    const/16 v3, 0x6f

    move/from16 v0, v51

    if-ge v0, v3, :cond_b5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_b3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_5a
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "mode_ringer"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_5a

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_b3

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_b3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_5b
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "Music,Video,Phone,Voice Recorder"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .local v40, "recommendedAppListEarphones_upgraded":Ljava/lang/String;
    const-string v3, "Email,Gallery,Video,Music"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .local v39, "recommendedAppListDockings_upgraded":Ljava/lang/String;
    const-string v3, "Camera,Calculator,S Note,Clock"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->getLockScreenShortcut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .local v41, "recommendedAppListRoaming_upgraded":Ljava/lang/String;
    const-string v3, "recommended_apps_list_earphones"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "recommended_apps_list_dockings"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "recommended_apps_list_roaming"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "recommended_apps_setting"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "recommended_apps_automatically"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "recommended_apps_automatically_earphones"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "recommended_apps_automatically_dockings"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "recommended_apps_automatically_roaming"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "SettingsProvider"

    const-string v4, "upgrading recommended apps"

    invoke-static {v3, v4}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_5b

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_b4

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b4
    const/16 v51, 0x6f

    .end local v39    # "recommendedAppListDockings_upgraded":Ljava/lang/String;
    .end local v40    # "recommendedAppListEarphones_upgraded":Ljava/lang/String;
    .end local v41    # "recommendedAppListRoaming_upgraded":Ljava/lang/String;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_b5
    const/16 v3, 0x70

    move/from16 v0, v51

    if-ge v0, v3, :cond_b7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_b6

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_5c
    const-string v3, "UPDATE global SET value = ?  WHERE name = ? AND value = ?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x2

    const-string v4, "device_name"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getOldDefaultDeviceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_5c

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_b6

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_b6
    const/16 v51, 0x70

    :cond_b7
    const/16 v3, 0x71

    move/from16 v0, v51

    if-ge v0, v3, :cond_bd

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_5d
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "sleep_timeout"

    const v4, 0x7f050001

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_5d

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_b8

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    :try_start_5e
    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    invoke-static {}, Lcom/android/providers/settings/DatabaseHelper;->isWeatherDetailSettings()Z

    move-result v3

    if-eqz v3, :cond_10b

    const-string v3, "lock_additional_weather"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "weather_cover"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_5e

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_b9

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b9
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v45, 0x0

    :try_start_5f
    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "notification_reminder"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "SPR"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    const-string v3, "time_key"

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_5f

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_ba

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ba
    const-string v3, "NONE"

    const-string v4, "WATERCOLOUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bc

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v36

    .restart local v36    # "old_value":I
    const/16 v34, 0x0

    .restart local v34    # "new_value":I
    const/4 v3, 0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_10f

    const/16 v34, 0x4

    :cond_bb
    :goto_b
    if-eqz v34, :cond_bc

    const/16 v45, 0x0

    :try_start_60
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "lockscreen_ripple_effect"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_60

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_bc

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .end local v34    # "new_value":I
    .end local v36    # "old_value":I
    :cond_bc
    const/16 v51, 0x71

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_bd
    move/from16 v0, v51

    move/from16 v1, p3

    if-eq v0, v1, :cond_be

    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got stuck trying to upgrade from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", must wipe the settings provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS global"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS globalIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS system"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP INDEX IF EXISTS systemIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS secure"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP INDEX IF EXISTS secureIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS gservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP INDEX IF EXISTS gservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS bluetooth_devices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS bookmarks"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP INDEX IF EXISTS bookmarksIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP INDEX IF EXISTS bookmarksIndex2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS favorites"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .local v54, "wipeReason":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO secure(name,value) values(\'wiped_db_reason\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .end local v54    # "wipeReason":Ljava/lang/String;
    :cond_be
    return-void

    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_1
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_2
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_3
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_4
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_5
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_6
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_bf

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bf
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v53    # "wifiWatchList":Ljava/lang/String;
    :catchall_7
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .end local v53    # "wifiWatchList":Ljava/lang/String;
    :catchall_8
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_9
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_c0

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c0
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_c1

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c1
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_c2
    :try_start_61
    const-string v52, "0"
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_c

    goto/16 :goto_0

    :catchall_c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_c3

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c3
    throw v3

    :catchall_e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_c4

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c4
    throw v3

    :catchall_f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_c5

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c5
    throw v3

    :catchall_10
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_c6

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c6
    throw v3

    :catchall_11
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_c7

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c7
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_12
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_13
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_14
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_15
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_c8

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c8
    throw v3

    :catchall_16
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_c9

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c9
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_17
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_18
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_ca

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ca
    throw v3

    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :catchall_19
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_cb

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cb
    throw v3

    :catchall_1a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_cc

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cc
    throw v3

    .restart local v26    # "autoTimeValue":I
    :catchall_1b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_cd

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cd
    throw v3

    .end local v26    # "autoTimeValue":I
    :catchall_1c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_ce

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ce
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_cf

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cf
    throw v3

    :catchall_1f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_d0

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d0
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v42    # "ringerModeAffectedStreams":I
    :catchall_20
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .end local v42    # "ringerModeAffectedStreams":I
    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_21
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_d1

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d1
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_22
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v25    # "airplaneRadios":Ljava/lang/String;
    .restart local v48    # "toggleableRadios":Ljava/lang/String;
    :catchall_23
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .end local v25    # "airplaneRadios":Ljava/lang/String;
    .end local v48    # "toggleableRadios":Ljava/lang/String;
    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_24
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_d2

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d2
    throw v3

    :catchall_25
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_d3

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d3
    throw v3

    :catchall_26
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_d4

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d4
    throw v3

    .restart local v27    # "c":Landroid/database/Cursor;
    :catchall_27
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v27, :cond_d5

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_d5
    if-eqz v45, :cond_d6

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d6
    throw v3

    .end local v27    # "c":Landroid/database/Cursor;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_28
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_29
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_d7

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d7
    throw v3

    .restart local v46    # "stmt_system":Landroid/database/sqlite/SQLiteStatement;
    :catchall_2a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v46, :cond_d8

    invoke-virtual/range {v46 .. v46}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d8
    throw v3

    .restart local v47    # "stmt_system2":Landroid/database/sqlite/SQLiteStatement;
    :catchall_2b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v47, :cond_d9

    invoke-virtual/range {v47 .. v47}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d9
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v46    # "stmt_system":Landroid/database/sqlite/SQLiteStatement;
    .end local v47    # "stmt_system2":Landroid/database/sqlite/SQLiteStatement;
    :cond_da
    const/16 v24, 0x0

    goto/16 :goto_1

    .restart local v24    # "accessibilityEnabled":Z
    :cond_db
    const/16 v49, 0x0

    goto/16 :goto_2

    .restart local v31    # "enabledServices":Ljava/lang/String;
    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v49    # "touchExplorationEnabled":Z
    .restart local v50    # "touchExplorationGrantedServices":Ljava/lang/String;
    :catchall_2c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_dc

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_dc
    throw v3

    .end local v24    # "accessibilityEnabled":Z
    .end local v31    # "enabledServices":Ljava/lang/String;
    .end local v49    # "touchExplorationEnabled":Z
    .end local v50    # "touchExplorationGrantedServices":Ljava/lang/String;
    :catchall_2d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_dd

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_dd
    throw v3

    :catchall_2e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_de

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_de
    throw v3

    :catchall_2f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_df

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_df
    throw v3

    :catchall_30
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_e0

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_e0
    throw v3

    :catchall_31
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_e1

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_e1
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_32
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_33
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_34
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_35
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_36
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_37
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_38
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_e2
    :try_start_62
    const-string v3, "user_setup_complete"

    const v4, 0x7f040029

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_39

    goto/16 :goto_3

    :catchall_39
    move-exception v3

    if-eqz v45, :cond_e3

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_e3
    throw v3

    :catchall_3a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_e4

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_e4
    throw v3

    :catchall_3b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_e5

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_e5
    throw v3

    :catchall_3c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_e6

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_e6
    throw v3

    :catchall_3d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_e7

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_e7
    throw v3

    :catchall_3e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_e8

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_e8
    throw v3

    :catchall_3f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_e9

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_e9
    throw v3

    .restart local v30    # "deviceType":Ljava/lang/String;
    .restart local v32    # "isTablet":Z
    .restart local v43    # "sales_code":Ljava/lang/String;
    :cond_ea
    :try_start_63
    const-string v3, "my_profile_enabled"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_40

    goto/16 :goto_4

    .end local v32    # "isTablet":Z
    :catchall_40
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_eb

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_eb
    throw v3

    .end local v30    # "deviceType":Ljava/lang/String;
    .end local v43    # "sales_code":Ljava/lang/String;
    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_41
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_42
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_ec

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ec
    throw v3

    .restart local v30    # "deviceType":Ljava/lang/String;
    .restart local v32    # "isTablet":Z
    .restart local v38    # "productName":Ljava/lang/String;
    .restart local v43    # "sales_code":Ljava/lang/String;
    :catchall_43
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_ed

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ed
    throw v3

    :catchall_44
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_45
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_ee

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ee
    throw v3

    .end local v30    # "deviceType":Ljava/lang/String;
    .end local v32    # "isTablet":Z
    .end local v38    # "productName":Ljava/lang/String;
    .end local v43    # "sales_code":Ljava/lang/String;
    :catchall_46
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_ef

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ef
    throw v3

    :catchall_47
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_f0

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_f0
    throw v3

    :catchall_48
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_f1

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_f1
    throw v3

    :catchall_49
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_f2

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_f2
    throw v3

    :catchall_4a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_f3

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_f3
    throw v3

    .restart local v44    # "shortcutValue":I
    :cond_f4
    :try_start_64
    const-string v3, "set_shortcuts_mode"

    const v4, 0x7f05001e

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_4b

    goto/16 :goto_5

    :catchall_4b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_f5

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_f5
    throw v3

    .restart local v47    # "stmt_system2":Landroid/database/sqlite/SQLiteStatement;
    :catchall_4c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v47, :cond_f6

    invoke-virtual/range {v47 .. v47}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_f6
    throw v3

    .restart local v34    # "new_value":I
    .restart local v36    # "old_value":I
    :cond_f7
    const/4 v3, 0x2

    move/from16 v0, v36

    if-ne v0, v3, :cond_96

    const/16 v34, 0x1

    goto/16 :goto_6

    :catchall_4d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_f8

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_f8
    throw v3

    .end local v34    # "new_value":I
    .end local v36    # "old_value":I
    :catchall_4e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_f9

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_f9
    throw v3

    .end local v44    # "shortcutValue":I
    .end local v47    # "stmt_system2":Landroid/database/sqlite/SQLiteStatement;
    :catchall_4f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_fa

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_fa
    throw v3

    :catchall_50
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_fb

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_fb
    throw v3

    :cond_fc
    :try_start_65
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v45

    const-string v3, "install_non_market_apps"

    const v4, 0x7f04000b

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_51

    goto/16 :goto_7

    :catchall_51
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_fd

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_fd
    throw v3

    :catchall_52
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_fe

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_fe
    throw v3

    :catchall_53
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_ff

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ff
    throw v3

    .end local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v46    # "stmt_system":Landroid/database/sqlite/SQLiteStatement;
    :catchall_54
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v46, :cond_100

    invoke-virtual/range {v46 .. v46}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_100
    throw v3

    .end local v46    # "stmt_system":Landroid/database/sqlite/SQLiteStatement;
    .restart local v45    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_101
    :try_start_66
    const-string v3, "lock_screen_show_notifications"

    const v4, 0x7f050018

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_55

    goto/16 :goto_8

    :catchall_55
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_102

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_102
    throw v3

    :catchall_56
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_103

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_103
    throw v3

    :catchall_57
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_104

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_104
    throw v3

    :catchall_58
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_105

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_105
    throw v3

    :catchall_59
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_106

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_106
    throw v3

    :catchall_5a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_107

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_107
    throw v3

    :catchall_5b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_108

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_108
    throw v3

    :catchall_5c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_109

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_109
    throw v3

    :catchall_5d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_10a

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_10a
    throw v3

    :cond_10b
    :try_start_67
    const-string v3, "lock_additional_weather"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "weather_cover"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_5e

    goto/16 :goto_9

    :catchall_5e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_10c

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_10c
    throw v3

    :cond_10d
    :try_start_68
    const-string v3, "time_key"

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_5f

    goto/16 :goto_a

    :catchall_5f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_10e

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_10e
    throw v3

    .restart local v34    # "new_value":I
    .restart local v36    # "old_value":I
    :cond_10f
    const/4 v3, 0x2

    move/from16 v0, v36

    if-ne v0, v3, :cond_bb

    const/16 v34, 0x1

    goto/16 :goto_b

    :catchall_60
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v45, :cond_110

    invoke-virtual/range {v45 .. v45}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_110
    throw v3
.end method

.method public softResetSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    new-instance v0, Lcom/android/providers/settings/ResetSettingsRecord;

    invoke-direct {v0}, Lcom/android/providers/settings/ResetSettingsRecord;-><init>()V

    .local v0, "resetSettings":Lcom/android/providers/settings/ResetSettingsRecord;
    invoke-virtual {v0}, Lcom/android/providers/settings/ResetSettingsRecord;->getRecords()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->recordSettings:Ljava/lang/String;

    const-string v1, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteSettingsRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->recordSettings:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->recordSettings:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method
