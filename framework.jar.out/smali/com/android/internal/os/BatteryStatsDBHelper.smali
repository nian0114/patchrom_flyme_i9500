.class public Lcom/android/internal/os/BatteryStatsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x2

.field public static final ALL_ONLY_APP:I = 0x8

.field public static final ALL_ONLY_APP_CONSUMER_LIST:I = 0x80

.field public static final ALL_ONLY_APP_TOTAL:I = 0x20

.field private static final BATTERY_DELTA:Ljava/lang/String; = "Battery_Delta"

.field public static final BATTERY_PERCENTAGE:I = 0x40

.field private static final COLUMN_BATTERY_DELTA:I = 0x2

.field private static final COLUMN_BATTERY_PERC:I = 0x3

.field private static final COLUMN_CONSUME_NAMES:I = 0x1

.field private static final COLUMN_CONSUME_TIME:I = 0x0

.field private static final COLUMN_DAYCROSS:I = 0x1

.field private static final COLUMN_LAUNCH_TIME:I = 0x1

.field private static final COLUMN_LCD:I = 0x0

.field private static final COLUMN_NETWORK_USAGE:I = 0x5

.field private static final COLUMN_OFFPOWER:I = 0x3

.field private static final COLUMN_PACKAGE_NAME:I = 0x0

.field private static final COLUMN_POWER:I = 0x2

.field private static final COLUMN_SCREEN_USAGE:I = 0x6

.field private static final COLUMN_TIME:I = 0x1

.field private static final COLUMN_TIMESTAMP:I = 0x0

.field private static final COLUMN_TOTALPOWER:I = 0x4

.field private static final COLUMN_USAGE_TIME:I = 0x7

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DATABASE_NAME:Ljava/lang/String; = "powerManager"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final EXCESS_BATTERY_DRAIN_1HOUR:Ljava/lang/String; = "com.samsung.battery.drain.1hour"

.field public static final EXCESS_BATTERY_DRAIN_24HOURS:Ljava/lang/String; = "com.samsung.battery.drain.24hours"

.field private static final KEY_BATTERY_DELTA:Ljava/lang/String; = "batterydelta"

.field private static final KEY_BATTERY_PERC:Ljava/lang/String; = "batterypercent"

.field private static final KEY_BATT_TIME:Ljava/lang/String; = "battTime"

.field private static final KEY_DAYCROSSED:Ljava/lang/String; = "daycrossed"

.field private static final KEY_LAUNCH_TIME:Ljava/lang/String; = "launchtime"

.field private static final KEY_LCD:Ljava/lang/String; = "lcd_condition"

.field private static final KEY_NETWORK_USAGE:Ljava/lang/String; = "network_usage"

.field private static final KEY_OFFPOWER:Ljava/lang/String; = "offpower"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_POWER:Ljava/lang/String; = "power"

.field private static final KEY_SCREEN_USAGE:Ljava/lang/String; = "screen_usage"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field private static final KEY_TOTALPOWER:Ljava/lang/String; = "totalpower"

.field private static final KEY_USAGE_TIME:Ljava/lang/String; = "usage_time"

.field private static final LAUNCHED_PACKAGES:Ljava/lang/String; = "Launched_packages"

.field public static final LCD_OFF:I = 0x4

.field public static final LCD_OFF_ONLY_APP:I = 0x10

.field private static final META_DATA:Ljava/lang/String; = "android_metadata"

.field private static final MINUTES_OF_DAY:I = 0x5a0

.field private static final NAME_END:Ljava/lang/String; = "]"

.field private static final NAME_START:Ljava/lang/String; = "["

.field private static final NETWORK_USAGE:I = 0x20

.field public static final PACKAGE_NAMES:Ljava/lang/String; = "battery.draining.packages"

.field private static final POWER_CONSUMING_PACKAGES:Ljava/lang/String; = "power_consuming_packages"

.field private static final SCREEN_OFF:I = 0x8

.field private static final SCREEN_ON:I = 0x4

.field private static final SIGNATURE_END:Ljava/lang/String; = ")"

.field private static final SIGNATURE_START:Ljava/lang/String; = "("

.field private static final SYSTEM_APP:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BatteryStatsDBHelper"

.field private static final TOTAL_POWER:Ljava/lang/String; = "all"

.field private static launchedPackageSet:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper; = null

.field private static mContext:Landroid/content/Context; = null

.field private static final mNotificationId:I = 0x7b

.field private static notifiedPowerDrainingApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sBatteryCapacity:D


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mFakeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "powerManager"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsDBHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsDBHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mFakeReceiver:Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->registerReceiver()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTimeStr"    # Ljava/lang/String;
    .param p3, "names"    # Ljava/lang/String;

    .prologue
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Add Power Consuming Apps called "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "time"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "power_consuming_packages"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "newTime"    # I
    .param p2, "newTimeStr"    # Ljava/lang/String;
    .param p3, "oldTime"    # I
    .param p4, "oldTimeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    sub-int v1, p1, p3

    .local v1, "diff":I
    if-ltz v1, :cond_0

    .end local v1    # "diff":I
    :goto_0
    return v1

    .restart local v1    # "diff":I
    :cond_0
    const-string v4, ":"

    invoke-virtual {p4, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "times":[Ljava/lang/String;
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "dayNum":I
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x18

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3c

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int p1, v4, v5

    sub-int v2, p1, p3

    .local v2, "timeDiff":I
    const-string v4, "BatteryStatsDBHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " calculate Time Diff returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method private checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 58
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTimeStr"    # Ljava/lang/String;

    .prologue
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForPowerThreshold called : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .local v17, "c":Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "checkForPowerThreshold:: no tables found, closing cursor"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->timeStringToInt(Ljava/lang/String;)I

    move-result v22

    .local v22, "curTime":I
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .local v51, "sipperListForLastHour":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .local v50, "sipperListFor24Hours":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    const-wide/16 v56, 0x0

    .local v56, "totalPowerInLastHour":D
    const-wide/16 v48, 0x0

    .local v48, "screenUsageInLastHour":D
    const-wide/16 v54, 0x0

    .local v54, "totalPowerInLast24Hours":D
    const-wide/16 v46, 0x0

    .local v46, "screenUsageIn24Hour":D
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "name"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .local v36, "packageName":Ljava/lang/String;
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In checkForPowerThreshold, Package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android_metadata"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Launched_packages"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Battery_Delta"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->maintainDayData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .local v23, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TABLE IF EXISTS ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_5
    const-string v6, "all"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Calculating screen usage"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v30

    .local v30, "lastScreenPower":D
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToPrevious()Z

    :goto_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .local v53, "time":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->timeStringToInt(Ljava/lang/String;)I

    move-result v52

    .local v52, "thisTime":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, v52

    move-object/from16 v4, v53

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsDBHelper;->calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    const/16 v7, 0x3c

    if-ge v6, v7, :cond_7

    const/4 v6, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .local v20, "curScreenPower":D
    sub-double v24, v30, v20

    .local v24, "diff":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v24, v6

    if-ltz v6, :cond_6

    add-double v48, v48, v24

    :cond_6
    move-wide/from16 v30, v20

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_2

    .end local v20    # "curScreenPower":D
    .end local v24    # "diff":D
    .end local v52    # "thisTime":I
    .end local v53    # "time":Ljava/lang/String;
    :cond_7
    move-wide/from16 v46, v48

    :goto_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_9

    const/4 v6, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .restart local v20    # "curScreenPower":D
    sub-double v24, v30, v20

    .restart local v24    # "diff":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v24, v6

    if-ltz v6, :cond_8

    add-double v46, v46, v24

    :cond_8
    move-wide/from16 v30, v20

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_3

    .end local v20    # "curScreenPower":D
    .end local v24    # "diff":D
    :cond_9
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last hour screen usage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v48

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last day screen usage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v46

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .end local v30    # "lastScreenPower":D
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->maintainNotifiedAppList(ILjava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_b

    const/16 v28, 0x1

    .local v28, "isSystemUid":Z
    :goto_4
    new-instance v29, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v29, "lcdOffSipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v42, 0x0

    .local v42, "powerInLastHour":D
    const-wide/16 v34, 0x0

    .local v34, "lcdOffPowerInLastHour":D
    :goto_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .restart local v53    # "time":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->timeStringToInt(Ljava/lang/String;)I

    move-result v52

    .restart local v52    # "thisTime":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, v52

    move-object/from16 v4, v53

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsDBHelper;->calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    const/16 v7, 0x3c

    if-ge v6, v7, :cond_d

    const/4 v6, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .local v18, "curPower":D
    add-double v42, v42, v18

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_c

    .end local v18    # "curPower":D
    :goto_6
    add-double v34, v34, v18

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_5

    .end local v28    # "isSystemUid":Z
    .end local v29    # "lcdOffSipper":Lcom/android/internal/os/UidSipper;
    .end local v34    # "lcdOffPowerInLastHour":D
    .end local v42    # "powerInLastHour":D
    .end local v52    # "thisTime":I
    .end local v53    # "time":Ljava/lang/String;
    :cond_b
    const/16 v28, 0x0

    goto :goto_4

    .restart local v18    # "curPower":D
    .restart local v28    # "isSystemUid":Z
    .restart local v29    # "lcdOffSipper":Lcom/android/internal/os/UidSipper;
    .restart local v34    # "lcdOffPowerInLastHour":D
    .restart local v42    # "powerInLastHour":D
    .restart local v52    # "thisTime":I
    .restart local v53    # "time":Ljava/lang/String;
    :cond_c
    const-wide/16 v18, 0x0

    goto :goto_6

    .end local v18    # "curPower":D
    .end local v52    # "thisTime":I
    .end local v53    # "time":Ljava/lang/String;
    :cond_d
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForPowerThreshold:: lcdOffPowerInLastHour : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    add-double v56, v56, v42

    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForPowerThreshold:: Total Power in last hour : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v56

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v28, :cond_e

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added in Sipper List for last Hour :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-wide/from16 v40, v42

    .local v40, "powerInLast24Hours":D
    move-wide/from16 v32, v34

    .local v32, "lcdOffPowerIn24Hours":D
    :goto_7
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_10

    const/4 v6, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .restart local v18    # "curPower":D
    add-double v40, v40, v18

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_f

    .end local v18    # "curPower":D
    :goto_8
    add-double v32, v32, v18

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_7

    .restart local v18    # "curPower":D
    :cond_f
    const-wide/16 v18, 0x0

    goto :goto_8

    .end local v18    # "curPower":D
    :cond_10
    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    add-double v54, v54, v40

    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total Power in last 24 hours : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v54

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v28, :cond_11

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    move-object/from16 v0, v50

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added in Sipper List for 24 Hours :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .end local v23    # "cursor":Landroid/database/Cursor;
    .end local v28    # "isSystemUid":Z
    .end local v29    # "lcdOffSipper":Lcom/android/internal/os/UidSipper;
    .end local v32    # "lcdOffPowerIn24Hours":D
    .end local v34    # "lcdOffPowerInLastHour":D
    .end local v36    # "packageName":Ljava/lang/String;
    .end local v40    # "powerInLast24Hours":D
    .end local v42    # "powerInLastHour":D
    :cond_12
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    const-string v7, "Battery_Delta"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Battery Delta Database is empty, everything is in vain :("

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_13
    const/16 v16, 0x0

    .local v16, "batteryDeltaInLastHour":I
    :goto_9
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_14

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .restart local v53    # "time":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->timeStringToInt(Ljava/lang/String;)I

    move-result v52

    .restart local v52    # "thisTime":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, v52

    move-object/from16 v4, v53

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsDBHelper;->calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    const/16 v7, 0x3c

    if-ge v6, v7, :cond_14

    const/4 v6, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int v16, v16, v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_9

    .end local v52    # "thisTime":I
    .end local v53    # "time":Ljava/lang/String;
    :cond_14
    move/from16 v15, v16

    .local v15, "batteryDeltaInLast24Hours":I
    :goto_a
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_15

    const/4 v6, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/2addr v15, v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_a

    :cond_15
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    if-nez v16, :cond_16

    const/16 v16, 0x1

    :cond_16
    if-nez v15, :cond_17

    const/4 v15, 0x1

    :cond_17
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    .local v44, "sb":Ljava/lang/StringBuilder;
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .local v37, "powerConsumingAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_b
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/internal/os/UidSipper;

    .local v45, "sipper":Lcom/android/internal/os/UidSipper;
    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v6

    move/from16 v0, v16

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double v8, v56, v48

    div-double v38, v6, v8

    .local v38, "percentage":D
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " calculating percentage: totalPower"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " batteryDeltaInLastHour: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " totalPowerInLastHour: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v56

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " screenUsageInLastHour: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v48

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " percentage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v38

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v38, v6

    if-lez v6, :cond_18

    move-object/from16 v0, v45

    iget-object v6, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v45

    iget-object v7, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    move-object/from16 v0, v45

    iget-object v6, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v45

    iget-object v7, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has consumed more than 1% battery in last 1 hour"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v38    # "percentage":D
    .end local v45    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_19
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "BatteryStatsDBHelper"

    const-string v7, " Sending EXCESS_DRAIN broadcast"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Landroid/content/Intent;

    const-string v6, "com.samsung.battery.drain.1hour"

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v26, "i":Landroid/content/Intent;
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v14, v6, [Ljava/lang/String;

    .local v14, "appArray":[Ljava/lang/String;
    const-string v7, "battery.draining.packages"

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v14    # "appArray":[Ljava/lang/String;
    .end local v26    # "i":Landroid/content/Intent;
    :cond_1a
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_1b
    :goto_c
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/internal/os/UidSipper;

    .restart local v45    # "sipper":Lcom/android/internal/os/UidSipper;
    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v6

    int-to-double v8, v15

    mul-double/2addr v6, v8

    add-double v8, v54, v46

    div-double v38, v6, v8

    .restart local v38    # "percentage":D
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " calculating percentage: totalPower"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " batteryDeltaInLast24Hours: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " totalPowerInLast24Hours: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v54

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " screenUsageIn24Hour: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v46

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " percentage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v38

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpl-double v6, v38, v6

    if-lez v6, :cond_1b

    move-object/from16 v0, v45

    iget-object v6, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v45

    iget-object v7, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has consumed more than 8% battery in last 24 hours"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .end local v38    # "percentage":D
    .end local v45    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_1c
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "BatteryStatsDBHelper"

    const-string v7, " Sending EXCESS_DRAIN broadcast for 24 hours"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Landroid/content/Intent;

    const-string v6, "com.samsung.battery.drain.24hours"

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v26    # "i":Landroid/content/Intent;
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v14, v6, [Ljava/lang/String;

    .restart local v14    # "appArray":[Ljava/lang/String;
    const-string v7, "battery.draining.packages"

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static deleteDatabase()Z
    .locals 3

    .prologue
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/powerManager"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    .local v0, "ret":Z
    if-eqz v0, :cond_0

    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database has been deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database was not deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private formatTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xa

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "times":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "hour":I
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "min":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    if-ge v0, v5, :cond_0

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v5, :cond_1

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static generateLaunchedPackageSet(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->launchedPackageSet:Ljava/util/Set;

    const-string v1, "Launched_packages"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->launchedPackageSet:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private declared-synchronized getBatteryPercentageList()[B
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct {v11}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .local v11, "result":Lcom/android/internal/os/UidSipperImpl;
    new-instance v1, Lcom/android/internal/os/UidSipper;

    const-string v6, "Battery"

    invoke-direct {v1, v6}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v1, "sipper":Lcom/android/internal/os/UidSipper;
    const-string v12, "SELECT  * FROM Battery_Delta"

    .local v12, "selectQuery":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v6, 0x0

    invoke-virtual {v9, v12, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    move v3, v13

    .local v3, "lcdOn":Z
    :goto_1
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "time":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-double v4, v6

    .local v4, "batteryPerc":D
    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v2    # "time":Ljava/lang/String;
    .end local v3    # "lcdOn":Z
    .end local v4    # "batteryPerc":D
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v12    # "selectQuery":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v12    # "selectQuery":Ljava/lang/String;
    :cond_0
    move v3, v14

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-virtual {v11, v1}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .local v10, "out":Landroid/os/Parcel;
    invoke-virtual {v11, v10}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v8

    .local v8, "data":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8
.end method

.method private declared-synchronized getConsumerListOnlyApp()[B
    .locals 25

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "getConsumerListOnlyApp"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .local v14, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v19, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .local v19, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v8, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v9, 0x0

    invoke-virtual {v14, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .local v2, "c":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    .local v10, "allUidTotalPower":D
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_b

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "name"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .local v21, "val":Ljava/lang/String;
    const-string v8, "android_metadata"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Launched_packages"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Battery_Delta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "all"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "power_consuming_packages"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v10    # "allUidTotalPower":D
    .end local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v19    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v21    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v10    # "allUidTotalPower":D
    .restart local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v19    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v21    # "val":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT  * FROM ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .local v20, "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .local v12, "cursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v8, 0x0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .local v16, "lcdNtype":I
    and-int/lit8 v8, v16, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_2

    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "System app"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_2
    new-instance v3, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v3, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v22, 0x0

    .local v22, "totalPower":D
    const-wide/16 v6, 0x0

    .local v6, "power":D
    const/4 v15, 0x0

    .local v15, "isUsingNetwork":Z
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v8, 0x1

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "time":Ljava/lang/String;
    and-int/lit8 v8, v16, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    const/4 v5, 0x1

    .local v5, "lcdOn":Z
    :goto_2
    const/4 v8, 0x2

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    add-double v22, v22, v6

    and-int/lit8 v8, v16, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    :goto_3
    or-int/2addr v15, v8

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .end local v5    # "lcdOn":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .restart local v5    # "lcdOn":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "lcdOn":Z
    :cond_5
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v24, " power:"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v3, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    add-double v10, v10, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->isAppLaunchedWithinLastDay(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v3}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    :cond_6
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "added"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_8
    if-eqz v15, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_4

    .end local v3    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v6    # "power":D
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "isUsingNetwork":Z
    .end local v16    # "lcdNtype":I
    .end local v20    # "selectQuery":Ljava/lang/String;
    .end local v21    # "val":Ljava/lang/String;
    .end local v22    # "totalPower":D
    :cond_9
    const-wide/16 v8, 0x0

    cmpg-double v8, v10, v8

    if-gtz v8, :cond_a

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v20, "SELECT  * FROM power_consuming_packages"

    .restart local v20    # "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .restart local v12    # "cursor":Landroid/database/Cursor;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/UidSipperImpl;->initializeConsumerList()V

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_c

    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "time":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "names":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/UidSipperImpl;->addConsumerPackages(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .end local v4    # "time":Ljava/lang/String;
    .end local v17    # "names":Ljava/lang/String;
    :cond_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v18

    .local v18, "out":Landroid/os/Parcel;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->marshall()[B

    move-result-object v13

    .local v13, "data":[B
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v13
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-direct {v1, p0}, Lcom/android/internal/os/BatteryStatsDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    :cond_0
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->generateLaunchedPackageSet(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    return-object v1
.end method

.method private getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "selectQuery":Ljava/lang/String;
    invoke-virtual {p1, v11, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .end local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;-><init>(Lcom/android/internal/os/BatteryStatsDBHelper;Ljava/lang/String;DDJLcom/android/internal/os/BatteryStatsDBHelper$1;)V

    .restart local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private declared-synchronized getScreenOffUsageList(Z)[B
    .locals 32
    .param p1, "needOffList"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    .local v22, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v27, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v27 .. v27}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .local v27, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v11, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .local v4, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .local v18, "allUidTotalPower":D
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_e

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "name"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .local v29, "val":Ljava/lang/String;
    const-string v10, "android_metadata"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Launched_packages"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Battery_Delta"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "all"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "power_consuming_packages"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v4    # "c":Landroid/database/Cursor;
    .end local v18    # "allUidTotalPower":D
    .end local v22    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v27    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v29    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v18    # "allUidTotalPower":D
    .restart local v22    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v29    # "val":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT  * FROM ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .local v28, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .local v20, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v5, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v5, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v30, 0x0

    .local v30, "totalPower":D
    const-wide/16 v8, 0x0

    .local v8, "power":D
    const/16 v25, 0x0

    .local v25, "lcdNtype":I
    const/16 v24, 0x0

    .local v24, "isUsingNetwork":Z
    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_3

    const/16 v23, 0x1

    .local v23, "isSystemApp":Z
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-nez p1, :cond_6

    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/os/BatteryStatsDBHelper;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "time":Ljava/lang/String;
    and-int/lit8 v10, v25, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    const/4 v7, 0x1

    .local v7, "lcdOn":Z
    :goto_2
    const/4 v10, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    add-double v30, v30, v8

    and-int/lit8 v10, v25, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_3
    or-int v24, v24, v10

    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "lcdOn":Z
    :cond_2
    :goto_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .end local v23    # "isSystemApp":Z
    :cond_3
    const/16 v23, 0x0

    goto :goto_1

    .restart local v6    # "time":Ljava/lang/String;
    .restart local v23    # "isSystemApp":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .restart local v7    # "lcdOn":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "lcdOn":Z
    :cond_6
    and-int/lit8 v10, v25, 0x8

    const/16 v11, 0x8

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/os/BatteryStatsDBHelper;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "time":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v11, v5

    move-object v12, v6

    move-wide v14, v8

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    add-double v30, v30, v8

    and-int/lit8 v10, v25, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_5
    or-int v24, v24, v10

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .end local v6    # "time":Ljava/lang/String;
    :cond_8
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " power:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v30

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v5, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    add-double v18, v18, v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->isAppLaunchedWithinLastDay(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v5}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    :cond_9
    :goto_6
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_b
    if-eqz v24, :cond_9

    if-nez v23, :cond_9

    invoke-virtual {v5}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_6

    .end local v5    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v8    # "power":D
    .end local v20    # "cursor":Landroid/database/Cursor;
    .end local v23    # "isSystemApp":Z
    .end local v24    # "isUsingNetwork":Z
    .end local v25    # "lcdNtype":I
    .end local v28    # "selectQuery":Ljava/lang/String;
    .end local v29    # "val":Ljava/lang/String;
    .end local v30    # "totalPower":D
    :cond_c
    const-wide/16 v10, 0x0

    cmpg-double v10, v18, v10

    if-gtz v10, :cond_d

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    :cond_d
    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    :cond_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v26

    .local v26, "out":Landroid/os/Parcel;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {v26 .. v26}, Landroid/os/Parcel;->marshall()[B

    move-result-object v21

    .local v21, "data":[B
    invoke-virtual/range {v26 .. v26}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v21
.end method

.method private declared-synchronized getScreenOffUsageListOnlyApp(Z)[B
    .locals 31
    .param p1, "needOffList"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    .local v22, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v26, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v26 .. v26}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .local v26, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v11, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .local v4, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .local v18, "allUidTotalPower":D
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_e

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "name"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .local v30, "val":Ljava/lang/String;
    const-string v10, "android_metadata"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Launched_packages"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Battery_Delta"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "all"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "power_consuming_packages"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v4    # "c":Landroid/database/Cursor;
    .end local v18    # "allUidTotalPower":D
    .end local v22    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v26    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v30    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v18    # "allUidTotalPower":D
    .restart local v22    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v26    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v30    # "val":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT  * FROM ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .local v27, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .local v20, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .local v24, "lcdNtype":I
    and-int/lit8 v10, v24, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_2

    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "System app"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_2
    new-instance v5, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v5, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v28, 0x0

    .local v28, "totalPower":D
    const-wide/16 v8, 0x0

    .local v8, "power":D
    const/16 v23, 0x0

    .local v23, "isUsingNetwork":Z
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-nez p1, :cond_6

    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/os/BatteryStatsDBHelper;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "time":Ljava/lang/String;
    and-int/lit8 v10, v24, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    const/4 v7, 0x1

    .local v7, "lcdOn":Z
    :goto_2
    const/4 v10, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    add-double v28, v28, v8

    and-int/lit8 v10, v24, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_3
    or-int v23, v23, v10

    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "lcdOn":Z
    :cond_3
    :goto_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .restart local v6    # "time":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .restart local v7    # "lcdOn":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "lcdOn":Z
    :cond_6
    const/16 v10, 0x8

    move/from16 v0, v24

    if-ne v0, v10, :cond_3

    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/os/BatteryStatsDBHelper;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "time":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v11, v5

    move-object v12, v6

    move-wide v14, v8

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    add-double v28, v28, v8

    and-int/lit8 v10, v24, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_5
    or-int v23, v23, v10

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .end local v6    # "time":Ljava/lang/String;
    :cond_8
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " power:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v5, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    add-double v18, v18, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->isAppLaunchedWithinLastDay(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v5}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    :cond_9
    :goto_6
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_b
    if-eqz v23, :cond_9

    invoke-virtual {v5}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_6

    .end local v5    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v8    # "power":D
    .end local v20    # "cursor":Landroid/database/Cursor;
    .end local v23    # "isUsingNetwork":Z
    .end local v24    # "lcdNtype":I
    .end local v27    # "selectQuery":Ljava/lang/String;
    .end local v28    # "totalPower":D
    .end local v30    # "val":Ljava/lang/String;
    :cond_c
    const-wide/16 v10, 0x0

    cmpg-double v10, v18, v10

    if-gtz v10, :cond_d

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    :cond_d
    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    :cond_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v25

    .local v25, "out":Landroid/os/Parcel;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->marshall()[B

    move-result-object v21

    .local v21, "data":[B
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v21
.end method

.method private declared-synchronized getTotalUsageList()[B
    .locals 19

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v14, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct {v14}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .local v14, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v15, "SELECT  * FROM [all]"

    .local v15, "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v11, v15, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v3, Lcom/android/internal/os/UidSipper;

    const-string v8, "all"

    invoke-direct {v3, v8}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v3, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v16, 0x0

    .local v16, "totalPower":D
    const-wide/16 v6, 0x0

    .local v6, "power":D
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "time":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .local v12, "lcdNtype":I
    const/4 v8, 0x4

    if-ne v12, v8, :cond_0

    const/4 v5, 0x1

    .local v5, "lcdOn":Z
    :goto_1
    const/4 v8, 0x2

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    add-double v16, v16, v6

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "lcdOn":Z
    .end local v6    # "power":D
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "lcdNtype":I
    .end local v14    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v15    # "selectQuery":Ljava/lang/String;
    .end local v16    # "totalPower":D
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v4    # "time":Ljava/lang/String;
    .restart local v6    # "power":D
    .restart local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "lcdNtype":I
    .restart local v14    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v15    # "selectQuery":Ljava/lang/String;
    .restart local v16    # "totalPower":D
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .end local v4    # "time":Ljava/lang/String;
    .end local v12    # "lcdNtype":I
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    invoke-virtual {v14, v3}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Final set to all = "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .local v13, "out":Landroid/os/Parcel;
    invoke-virtual {v14, v13}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual {v13}, Landroid/os/Parcel;->marshall()[B

    move-result-object v10

    .local v10, "data":[B
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v10
.end method

.method private isAppLaunchedWithinLastDay(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->launchedPackageSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maintainDayData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTimeStr"    # Ljava/lang/String;
    .param p3, "TABLE_PROCESS"    # Ljava/lang/String;

    .prologue
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking to remove old data from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before adding this new one at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .local v13, "rowId":Ljava/lang/String;
    const/4 v11, 0x1

    .local v11, "cursorFinished":Z
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->timeStringToInt(Ljava/lang/String;)I

    move-result v9

    .local v9, "curTime":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/internal/os/BatteryStatsDBHelper;->timeStringToInt(Ljava/lang/String;)I

    move-result v12

    .local v12, "firstTime":I
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First entry has timestamp as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :goto_0
    if-nez v11, :cond_2

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v0, v12, v13}, Lcom/android/internal/os/BatteryStatsDBHelper;->calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I

    move-result v1

    const/16 v2, 0x5a0

    if-lt v1, v2, :cond_2

    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting entry for time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in table name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/internal/os/BatteryStatsDBHelper;->timeStringToInt(Ljava/lang/String;)I

    move-result v12

    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next entry\'s timestamp is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v12    # "firstTime":I
    :cond_0
    move-object/from16 v13, p2

    move v12, v9

    .restart local v12    # "firstTime":I
    goto :goto_0

    :cond_1
    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private maintainNotifiedAppList(ILjava/lang/String;)V
    .locals 8
    .param p1, "curTime"    # I
    .param p2, "curTimeStr"    # Ljava/lang/String;

    .prologue
    const-string v5, "BatteryStatsDBHelper"

    const-string v6, " maintainNotifiedAppList called "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "time":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsDBHelper;->timeStringToInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "thisTime":I
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/internal/os/BatteryStatsDBHelper;->calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I

    move-result v5

    const/16 v6, 0x3c

    if-le v5, v6, :cond_0

    const-string v5, "BatteryStatsDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing package name from notified list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "thisTime":I
    .end local v4    # "time":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "send.battery.drain.broadcast"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mFakeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private timeStringToInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "times":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3c

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v3, v4

    .end local v2    # "times":[Ljava/lang/String;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "cal":Ljava/util/Calendar;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    mul-int/lit8 v3, v3, 0x18

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3c

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addAppLaunch(Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "cal":Ljava/util/Calendar;
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, "day":I
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .local v3, "hour":I
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .local v4, "min":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "time":Ljava/lang/String;
    mul-int/lit8 v7, v2, 0x18

    add-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x3c

    add-int v1, v7, v4

    .local v1, "curTime":I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "launchtime"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Launched_packages"

    const-string v9, "packageName = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "packageName"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Launched_packages"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    sget-object v7, Lcom/android/internal/os/BatteryStatsDBHelper;->launchedPackageSet:Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Launched_packages"

    invoke-direct {p0, v7, v5, v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->maintainDayData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "curTime":I
    .end local v2    # "day":I
    .end local v3    # "hour":I
    .end local v4    # "min":I
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method declared-synchronized addBatteryDelta(ZLjava/lang/String;IILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "writeForScreenChange"    # Z
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "batteryDelta"    # I
    .param p4, "currentBatteryPercent"    # I
    .param p5, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .local v1, "screenCondition":Z
    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x4

    .local v0, "lcdCondition":I
    :goto_1
    const-string v3, "Battery_Delta"

    invoke-direct {p0, p5, p2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->maintainDayData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "lcd_condition"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "battTime"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "batterydelta"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "batterypercent"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "Battery_Delta"

    const/4 v4, 0x0

    invoke-virtual {p5, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "lcdCondition":I
    .end local v1    # "screenCondition":Z
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .restart local v1    # "screenCondition":Z
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .end local v1    # "screenCondition":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized addStatsToDB(ZLjava/lang/String;Ljava/util/ArrayList;II)V
    .locals 34
    .param p1, "writeForScreenChange"    # Z
    .param p2, "time"    # Ljava/lang/String;
    .param p4, "batteryDelta"    # I
    .param p5, "currentBatteryPercent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsDumper$PowerObject;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p3, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_0
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-nez v2, :cond_3

    const/16 v26, 0x1

    .local v26, "screenCondition":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz v26, :cond_5

    const/4 v15, 0x4

    .local v15, "lcdCondition":I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    .local v11, "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->powerUid:D

    move-wide/from16 v30, v0

    .local v30, "totalPower":D
    iget-wide v0, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->networkUsage:J

    move-wide/from16 v18, v0

    .local v18, "networkUsage":J
    iget-wide v0, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->screenUsage:D

    move-wide/from16 v28, v0

    .local v28, "screenUsage":D
    iget-wide v0, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->usageTime:J

    move-wide/from16 v32, v0

    .local v32, "uidUsageTime":J
    move v12, v15

    .local v12, "finalLcdCondition":I
    iget-object v2, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    move-result-object v14

    .local v14, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    if-eqz v14, :cond_8

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->totalPower:D
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$100(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D

    move-result-wide v16

    .local v16, "lastPower":D
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->offPower:D
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$200(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D

    move-result-wide v22

    .local v22, "offPower":D
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : lastpower = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-double v8, v30, v16

    .local v8, "diff":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v8, v2

    if-ltz v2, :cond_7

    if-nez v26, :cond_0

    add-double v22, v22, v8

    :cond_0
    move-wide/from16 v24, v8

    .local v24, "power":D
    const-string v3, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[diff] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v26, :cond_6

    const-string v2, " on"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->networkUsage:J
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$300(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)J

    move-result-wide v2

    sub-long v20, v18, v2

    .local v20, "networkUseDiff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-eqz v2, :cond_1

    or-int/lit8 v12, v12, 0x20

    .end local v8    # "diff":D
    .end local v16    # "lastPower":D
    .end local v20    # "networkUseDiff":J
    :cond_1
    :goto_5
    iget-boolean v2, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->isSystem:Z

    if-eqz v2, :cond_2

    or-int/lit8 v12, v12, 0x10

    :cond_2
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .local v27, "values":Landroid/content/ContentValues;
    const-string v2, "lcd_condition"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "time"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "power"

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "offpower"

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "totalpower"

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "network_usage"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "screen_usage"

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "usage_time"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v7, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .end local v11    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v12    # "finalLcdCondition":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v15    # "lcdCondition":I
    .end local v18    # "networkUsage":J
    .end local v22    # "offPower":D
    .end local v24    # "power":D
    .end local v27    # "values":Landroid/content/ContentValues;
    .end local v28    # "screenUsage":D
    .end local v30    # "totalPower":D
    .end local v32    # "uidUsageTime":J
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStatsToDB IllegalStateException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :goto_6
    monitor-exit p0

    return-void

    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v26    # "screenCondition":Z
    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_4
    sget-boolean v26, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v26    # "screenCondition":Z
    :cond_5
    const/16 v15, 0x8

    goto/16 :goto_1

    .restart local v8    # "diff":D
    .restart local v11    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v12    # "finalLcdCondition":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .restart local v15    # "lcdCondition":I
    .restart local v16    # "lastPower":D
    .restart local v18    # "networkUsage":J
    .restart local v22    # "offPower":D
    .restart local v24    # "power":D
    .restart local v28    # "screenUsage":D
    .restart local v30    # "totalPower":D
    .restart local v32    # "uidUsageTime":J
    :cond_6
    :try_start_5
    const-string v2, " off"

    goto/16 :goto_3

    .end local v24    # "power":D
    :cond_7
    const-wide/16 v24, 0x0

    .restart local v24    # "power":D
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[strange] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .end local v8    # "diff":D
    .end local v11    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v12    # "finalLcdCondition":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v15    # "lcdCondition":I
    .end local v16    # "lastPower":D
    .end local v18    # "networkUsage":J
    .end local v22    # "offPower":D
    .end local v24    # "power":D
    .end local v28    # "screenUsage":D
    .end local v30    # "totalPower":D
    .end local v32    # "uidUsageTime":J
    :catchall_0
    move-exception v2

    :try_start_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v26    # "screenCondition":Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v12    # "finalLcdCondition":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .restart local v15    # "lcdCondition":I
    .restart local v18    # "networkUsage":J
    .restart local v26    # "screenCondition":Z
    .restart local v28    # "screenUsage":D
    .restart local v30    # "totalPower":D
    .restart local v32    # "uidUsageTime":J
    :cond_8
    const-wide/16 v24, 0x0

    .restart local v24    # "power":D
    const-wide/16 v22, 0x0

    .restart local v22    # "offPower":D
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-eqz v2, :cond_9

    or-int/lit8 v12, v12, 0x20

    :cond_9
    :try_start_7
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[noLastSipper] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v11    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v12    # "finalLcdCondition":I
    .end local v14    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v18    # "networkUsage":J
    .end local v22    # "offPower":D
    .end local v24    # "power":D
    .end local v28    # "screenUsage":D
    .end local v30    # "totalPower":D
    .end local v32    # "uidUsageTime":J
    :cond_a
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->addBatteryDelta(ZLjava/lang/String;IILandroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6
.end method

.method createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "TABLE_PROCESS"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lcd_condition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DOUBLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "offpower"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DOUBLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "totalpower"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DOUBLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "network_usage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screen_usage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DOUBLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "usage_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "CREATE_POWER_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized getAverageLevelDropPerHour(Ljava/lang/String;)D
    .locals 24
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SELECT * FROM ["

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "]"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "selectQuery":Ljava/lang/String;
    const-string v15, "BatteryStatsDBHelper"

    const-string v18, "getAverageLevelDropPerHour:: start"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour:: for package:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v6, 0x0

    .local v6, "appUsageTime":J
    const-wide/16 v12, 0x0

    .local v12, "power":D
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x7

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .local v4, "appTotalTime":J
    move-wide v6, v4

    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour:: start loop appTotalTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x2

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x7

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .local v16, "tempTime":J
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop tempTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop before appTotalTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop before appUsageTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v15, v16, v4

    if-lez v15, :cond_0

    add-long v6, v6, v16

    :cond_0
    move-wide/from16 v4, v16

    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop after appUsageTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop after appTotalTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x2

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    add-double v12, v12, v18

    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop after power:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .end local v4    # "appTotalTime":J
    .end local v6    # "appUsageTime":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "power":D
    .end local v14    # "selectQuery":Ljava/lang/String;
    .end local v16    # "tempTime":J
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v15, "BatteryStatsDBHelper"

    const-string v18, "getAverageLevelDropPerHour::  Exception"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v10, 0x0

    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-wide v10

    .restart local v6    # "appUsageTime":J
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "power":D
    .restart local v14    # "selectQuery":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AverageLevelDropCalculation : Package = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Power = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Usage Time = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, 0x0

    cmp-long v15, v6, v18

    if-nez v15, :cond_2

    const-wide/16 v6, 0x1

    :cond_2
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " getAverageLevelDropPerHour sBatteryCapacity : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-wide v20, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "appUsageTime : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v12

    const-wide v20, 0x40ac200000000000L    # 3600.0

    mul-double v18, v18, v20

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    long-to-double v0, v6

    move-wide/from16 v20, v0

    sget-wide v22, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    mul-double v20, v20, v22

    div-double v10, v18, v20

    .local v10, "i":D
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  returning i:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .end local v6    # "appUsageTime":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":D
    .end local v12    # "power":D
    .end local v14    # "selectQuery":Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15
.end method

.method declared-synchronized getAverageTimeOfPackagePerLevel(Ljava/lang/String;)J
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELECT  * FROM ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "selectQuery":Ljava/lang/String;
    const-string v14, "BatteryStatsDBHelper"

    const-string v15, "getAverageTimeOfPackagePerLevel:: start"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel:: for package:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v4, 0x0

    .local v4, "appUsageTime":J
    const-wide/16 v10, 0x0

    .local v10, "power":D
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x7

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .local v2, "appTotalTime":J
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel:: start loop appTotalTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x2

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x7

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .local v12, "tempTime":J
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop tempTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop before appTotalTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop before appUsageTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v14, v2, v12

    add-long/2addr v4, v14

    move-wide v2, v12

    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop after appUsageTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop after appTotalTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x2

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v10, v14

    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop after power:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .end local v2    # "appTotalTime":J
    .end local v4    # "appUsageTime":J
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "selectQuery":Ljava/lang/String;
    .end local v10    # "power":D
    .end local v12    # "tempTime":J
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .restart local v4    # "appUsageTime":J
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "selectQuery":Ljava/lang/String;
    .restart local v10    # "power":D
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-wide/16 v14, 0x0

    cmpl-double v14, v10, v14

    if-nez v14, :cond_1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    :cond_1
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel:: appUsageTime:  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sBatteryCapacity :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-wide v16, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " power: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-double v14, v4

    sget-wide v16, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v10

    div-double v14, v14, v16

    double-to-long v8, v14

    .local v8, "i":J
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  returning i:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v8
.end method

.method public declared-synchronized getBatteryTotalDelta(I)I
    .locals 6
    .param p1, "screenCondition"    # I

    .prologue
    const/4 v5, 0x2

    monitor-enter p0

    :try_start_0
    const-string v1, "SELECT  * FROM Battery_Delta"

    .local v1, "selectQuery":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .local v2, "totalDelta":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-ne p1, v5, :cond_3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "selectQuery":Ljava/lang/String;
    .end local v2    # "totalDelta":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getUsageList(I)[B
    .locals 4
    .param p1, "screenCondition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong screen condition. Please check BatteryStatsDBHandler.java"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageList(Z)[B

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_1
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageList(Z)[B

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data(only app)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting summation of lcd all data(only app)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getTotalUsageList()[B

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting battery percentage data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getBatteryPercentageList()[B

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app) with power consumer list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getConsumerListOnlyApp()[B

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-string v0, "CREATE TABLE Battery_Delta(lcd_condition INTEGER,battTime TEXT,batterydelta INTEGER,batterypercent INTEGER)"

    .local v0, "CREATE_BATTERY_DELTA_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE Launched_packages(packageName TEXT,launchtime TEXT)"

    .local v1, "createLaunchedAppTable":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE power_consuming_packages(time TEXT,packageName TEXT)"

    .local v2, "createPowerConsumingPackageTable":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
