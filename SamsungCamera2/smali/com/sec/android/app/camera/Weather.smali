.class public Lcom/sec/android/app/camera/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# static fields
.field public static final CITYID_CURRENT_LOCATION:Ljava/lang/String; = "cityId:current"

.field public static final COL_AUTO_REFRESH_TIME:Ljava/lang/String; = "AUTO_REFRESH_TIME"

.field public static final COL_REAL_LOCATION:Ljava/lang/String; = "REAL_LOCATION"

.field public static final COL_TODAY_ICON_NUM:Ljava/lang/String; = "TODAY_ICON_NUM"

.field public static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "accuweather"

.field public static final DAEMON_CMAWEATHER:Ljava/lang/String; = "Cmaweather"

.field public static final DAEMON_KWEATHER:Ljava/lang/String; = "kweather"

.field public static final DAEMON_SINAWEATHER:Ljava/lang/String; = "sinaweather"

.field public static final DAEMON_WEATHERNEWS:Ljava/lang/String; = "weathernewsjp"

.field private static final KEY_APP_SERVICE_STATUS:Ljava/lang/String; = "aw_daemon_service_key_app_service_status"

.field private static final MSG_WEATHER_DATA_UPDATED:I = 0x12c1

.field private static final MSG_WEATHER_SETTING_CHANGED:I = 0x12c0

.field private static final TAG:Ljava/lang/String; = "CameraWeather"


# instance fields
.field private ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final CAMERA_SERVICE_CODE:I

.field public CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

.field public SETTING_URI:Landroid/net/Uri;

.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mCityId:J

.field private mContextualWeather:I

.field private mHandler:Landroid/os/Handler;

.field private mWeatherIcon:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 3
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->CAMERA_SERVICE_CODE:I

    .line 72
    const-string v0, "accuweather"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/Weather;->mCityId:J

    .line 82
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    .line 89
    iput-object p1, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/camera/Weather;->initCscFeature()V

    .line 93
    new-instance v0, Lcom/sec/android/app/camera/Weather$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Weather$1;-><init>(Lcom/sec/android/app/camera/Weather;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method private static AppServiceOff(II)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "code"    # I

    .prologue
    .line 182
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p0, v0

    .line 183
    return p0
.end method

.method private static AppServiceOn(II)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "code"    # I

    .prologue
    .line 177
    or-int/2addr p0, p1

    .line 178
    return p0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/Weather;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Weather;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/Weather;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/Weather;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method private initCscFeature()V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "accuweather"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    .line 113
    :cond_0
    const-string v0, "kweather"

    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "com.sec.android.widgetapp.ap.hero.kweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 115
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 116
    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->SETTING_URI:Landroid/net/Uri;

    .line 117
    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    .line 138
    :goto_0
    const-string v0, "CameraWeather"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCPName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 118
    :cond_1
    const-string v0, "sinaweather"

    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string v0, "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 120
    const-string v0, "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.REFRESH"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "Cmaweather"

    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 123
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 124
    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->SETTING_URI:Landroid/net/Uri;

    .line 125
    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    goto :goto_0

    .line 126
    :cond_3
    const-string v0, "weathernewsjp"

    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 128
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 129
    const-string v0, "content://com.sec.android.daemonapp.ap.weathernewsjp.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->SETTING_URI:Landroid/net/Uri;

    .line 130
    const-string v0, "content://com.sec.android.daemonapp.ap.weathernewsjp.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    goto :goto_0

    .line 132
    :cond_4
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 133
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 134
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->SETTING_URI:Landroid/net/Uri;

    .line 135
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Weather;->CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 158
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    const/4 v1, 0x1

    .line 162
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapanFeature()Z
    .locals 2

    .prologue
    .line 169
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    .line 173
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKoreaFeature()Z
    .locals 2

    .prologue
    .line 145
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    const/4 v1, 0x1

    .line 151
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setContextualWeather(I)V
    .locals 7
    .param p1, "weatherIconNum"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 329
    const-string v0, "kweather"

    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    packed-switch p1, :pswitch_data_0

    .line 381
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    .line 578
    :goto_0
    const-string v0, "CameraWeather"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contextual Tag Weather: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void

    .line 333
    :pswitch_0
    iput v3, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 340
    :pswitch_1
    iput v4, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 354
    :pswitch_2
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 377
    :pswitch_3
    iput v6, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 384
    :cond_0
    const-string v0, "sinaweather"

    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 440
    :cond_1
    const-string v0, "Cmaweather"

    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    packed-switch p1, :pswitch_data_1

    .line 484
    :pswitch_4
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 443
    :pswitch_5
    iput v3, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 453
    :pswitch_6
    iput v4, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 469
    :pswitch_7
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 481
    :pswitch_8
    iput v6, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 487
    :cond_2
    const-string v0, "weathernewsjp"

    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 488
    sparse-switch p1, :sswitch_data_0

    .line 514
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 491
    :sswitch_0
    iput v3, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 497
    :sswitch_1
    iput v4, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 505
    :sswitch_2
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 511
    :sswitch_3
    iput v6, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 518
    :cond_3
    packed-switch p1, :pswitch_data_2

    .line 574
    :pswitch_9
    iput v2, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 527
    :pswitch_a
    iput v3, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 538
    :pswitch_b
    iput v4, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 552
    :pswitch_c
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 566
    :pswitch_d
    iput v6, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto :goto_0

    .line 571
    :pswitch_e
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    goto/16 :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 441
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 488
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_3
        0x6a -> :sswitch_2
        0x6b -> :sswitch_2
        0x6c -> :sswitch_2
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_2
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0x73 -> :sswitch_3
        0x74 -> :sswitch_3
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2
        0x77 -> :sswitch_2
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_2
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x80 -> :sswitch_2
        0x81 -> :sswitch_2
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_1
        0x8c -> :sswitch_2
        0xa0 -> :sswitch_3
        0xaa -> :sswitch_3
        0xb5 -> :sswitch_3
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0xca -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_3
        0xcd -> :sswitch_3
        0xce -> :sswitch_1
        0xcf -> :sswitch_1
        0xd0 -> :sswitch_1
        0xd1 -> :sswitch_1
        0xd2 -> :sswitch_1
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_1
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_1
        0xd7 -> :sswitch_3
        0xd8 -> :sswitch_3
        0xd9 -> :sswitch_3
        0xda -> :sswitch_1
        0xdb -> :sswitch_1
        0xdc -> :sswitch_1
        0xdd -> :sswitch_1
        0xde -> :sswitch_1
        0xdf -> :sswitch_1
        0xe0 -> :sswitch_1
        0xe1 -> :sswitch_1
        0xe2 -> :sswitch_1
        0xe3 -> :sswitch_1
        0xe4 -> :sswitch_3
        0xe5 -> :sswitch_3
        0xe6 -> :sswitch_3
        0xe7 -> :sswitch_1
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_3
        0x104 -> :sswitch_3
        0x10e -> :sswitch_3
        0x119 -> :sswitch_3
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_1
        0x12f -> :sswitch_3
        0x130 -> :sswitch_2
        0x132 -> :sswitch_2
        0x134 -> :sswitch_2
        0x135 -> :sswitch_3
        0x137 -> :sswitch_2
        0x139 -> :sswitch_1
        0x13a -> :sswitch_3
        0x13b -> :sswitch_3
        0x13c -> :sswitch_2
        0x13d -> :sswitch_1
        0x140 -> :sswitch_2
        0x141 -> :sswitch_1
        0x142 -> :sswitch_3
        0x143 -> :sswitch_2
        0x144 -> :sswitch_2
        0x145 -> :sswitch_2
        0x146 -> :sswitch_3
        0x147 -> :sswitch_3
        0x148 -> :sswitch_2
        0x149 -> :sswitch_2
        0x154 -> :sswitch_3
        0x15e -> :sswitch_2
        0x169 -> :sswitch_3
        0x173 -> :sswitch_3
        0x190 -> :sswitch_3
        0x191 -> :sswitch_3
        0x192 -> :sswitch_3
        0x193 -> :sswitch_3
        0x195 -> :sswitch_3
        0x196 -> :sswitch_3
        0x197 -> :sswitch_3
        0x199 -> :sswitch_3
        0x19b -> :sswitch_3
        0x19d -> :sswitch_3
        0x19e -> :sswitch_3
        0x1a4 -> :sswitch_3
        0x1a5 -> :sswitch_3
        0x1a6 -> :sswitch_3
        0x1a7 -> :sswitch_3
        0x1a8 -> :sswitch_3
        0x1a9 -> :sswitch_3
        0x1aa -> :sswitch_3
        0x1ab -> :sswitch_3
        0x1ae -> :sswitch_3
        0x1c2 -> :sswitch_3
        0x1f4 -> :sswitch_0
        0x226 -> :sswitch_0
        0x228 -> :sswitch_1
        0x229 -> :sswitch_2
        0x22e -> :sswitch_2
        0x232 -> :sswitch_1
        0x233 -> :sswitch_2
        0x238 -> :sswitch_2
        0x23c -> :sswitch_1
        0x23d -> :sswitch_2
        0x246 -> :sswitch_1
        0x247 -> :sswitch_2
        0x258 -> :sswitch_0
        0x352 -> :sswitch_2
        0x353 -> :sswitch_2
        0x354 -> :sswitch_2
        0x355 -> :sswitch_2
        0x356 -> :sswitch_3
        0x357 -> :sswitch_2
        0x35d -> :sswitch_2
        0x35e -> :sswitch_2
        0x35f -> :sswitch_2
        0x360 -> :sswitch_3
        0x361 -> :sswitch_2
        0x367 -> :sswitch_2
        0x368 -> :sswitch_2
        0x369 -> :sswitch_2
        0x36a -> :sswitch_3
        0x371 -> :sswitch_2
        0x372 -> :sswitch_2
        0x373 -> :sswitch_2
        0x374 -> :sswitch_3
    .end sparse-switch

    .line 518
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public Connect()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 190
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_app_service_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 193
    .local v2, "mAppServiceStatus":I
    and-int/lit8 v3, v2, 0x10

    if-eq v3, v6, :cond_0

    .line 194
    invoke-static {v2, v6}, Lcom/sec/android/app/camera/Weather;->AppServiceOn(II)I

    move-result v2

    .line 195
    const-string v3, "START"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aw_daemon_service_key_app_service_status"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    const-string v3, "PACKAGE"

    const-string v4, "com.sec.android.app.camera"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v3, "CP"

    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    new-instance v3, Lcom/sec/android/app/camera/Weather$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/Weather$2;-><init>(Lcom/sec/android/app/camera/Weather;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Weather;->updateWeatherInfo()V

    .line 238
    return-void

    .line 232
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public Disconnect()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 244
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aw_daemon_service_key_app_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 247
    .local v1, "mAppServiceStatus":I
    and-int/lit8 v2, v1, 0x10

    if-ne v2, v5, :cond_0

    .line 248
    invoke-static {v1, v5}, Lcom/sec/android/app/camera/Weather;->AppServiceOff(II)I

    move-result v1

    .line 249
    const-string v2, "START"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aw_daemon_service_key_app_service_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    const-string v2, "PACKAGE"

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v2, "CP"

    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public IsWeatherEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 582
    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aw_daemon_service_key_app_service_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 583
    .local v0, "mAppServiceStatus":I
    and-int/lit8 v2, v0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 584
    .local v1, "mIsWeatherDateAvailable":Z
    :cond_0
    const-string v2, "CameraWeather"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsWeatherEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return v1
.end method

.method public getAutoRefresh(Landroid/content/Context;)I
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 636
    const/4 v6, 0x0

    .line 637
    .local v6, "autorefresh":I
    if-nez p1, :cond_0

    .line 638
    const-string v1, ""

    const-string v2, "getAutoRefresh: context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 656
    .end local v6    # "autorefresh":I
    .local v7, "autorefresh":I
    :goto_0
    return v7

    .line 641
    .end local v7    # "autorefresh":I
    .restart local v6    # "autorefresh":I
    :cond_0
    const-string v1, "sinaweather"

    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    const-string v1, ""

    const-string v2, "getAutoRefresh : sina weather don\'t support autorefresh"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 643
    .end local v6    # "autorefresh":I
    .restart local v7    # "autorefresh":I
    goto :goto_0

    .line 645
    .end local v7    # "autorefresh":I
    .restart local v6    # "autorefresh":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 646
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 647
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "AUTO_REFRESH_TIME"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 649
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 650
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 651
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 653
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    move v7, v6

    .line 656
    .end local v6    # "autorefresh":I
    .restart local v7    # "autorefresh":I
    goto :goto_0
.end method

.method public getCityId()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/sec/android/app/camera/Weather;->mCityId:J

    return-wide v0
.end method

.method public getContextualWeather()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/sec/android/app/camera/Weather;->mContextualWeather:I

    return v0
.end method

.method public getDBCityId(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 588
    const-string v6, ""

    .line 589
    .local v6, "cityId":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 590
    const-string v1, ""

    const-string v2, "getCityId: context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 609
    .end local v6    # "cityId":Ljava/lang/String;
    .local v7, "cityId":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 593
    .end local v7    # "cityId":Ljava/lang/String;
    .restart local v6    # "cityId":Ljava/lang/String;
    :cond_0
    const-string v1, "sinaweather"

    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    const-string v1, ""

    const-string v2, "getDBCityId : sina weather don\'t support cityid"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 595
    .end local v6    # "cityId":Ljava/lang/String;
    .restart local v7    # "cityId":Ljava/lang/String;
    goto :goto_0

    .line 597
    .end local v7    # "cityId":Ljava/lang/String;
    .restart local v6    # "cityId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 598
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 599
    const-string v1, "Location=\"%s\""

    new-array v2, v10, [Ljava/lang/Object;

    const-string v5, "cityId:current"

    aput-object v5, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "loc":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v5, "REAL_LOCATION"

    aput-object v5, v2, v9

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 602
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 603
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 604
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 606
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v3    # "loc":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    move-object v7, v6

    .line 609
    .end local v6    # "cityId":Ljava/lang/String;
    .restart local v7    # "cityId":Ljava/lang/String;
    goto :goto_0
.end method

.method public getDBIconNum(Landroid/content/Context;)I
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 612
    const/4 v7, 0x0

    .line 613
    .local v7, "iconnum":I
    if-nez p1, :cond_0

    .line 614
    const-string v1, ""

    const-string v2, "getTodayIconNum: context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 633
    .end local v7    # "iconnum":I
    .local v8, "iconnum":I
    :goto_0
    return v8

    .line 617
    .end local v8    # "iconnum":I
    .restart local v7    # "iconnum":I
    :cond_0
    const-string v1, "sinaweather"

    iget-object v2, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    const-string v1, ""

    const-string v2, "getDBIconNum : sina weather don\'t support Iconnum"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 619
    .end local v7    # "iconnum":I
    .restart local v8    # "iconnum":I
    goto :goto_0

    .line 621
    .end local v8    # "iconnum":I
    .restart local v7    # "iconnum":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 622
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 623
    const-string v1, "Location=\"%s\""

    new-array v2, v10, [Ljava/lang/Object;

    const-string v5, "cityId:current"

    aput-object v5, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, "loc":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather;->CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v5, "TODAY_ICON_NUM"

    aput-object v5, v2, v9

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 626
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 627
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 628
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 630
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v3    # "loc":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    move v8, v7

    .line 633
    .end local v7    # "iconnum":I
    .restart local v8    # "iconnum":I
    goto :goto_0
.end method

.method public updateWeatherInfo()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 277
    iget-object v8, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_app_service_status"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 278
    .local v3, "mAppServiceStatus":I
    and-int/lit8 v8, v3, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_0

    const/4 v4, 0x1

    .line 279
    .local v4, "mIsWeatherDateAvailable":Z
    :goto_0
    const-string v8, "Cmaweather"

    iget-object v9, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v5, 0x63

    .line 281
    .local v5, "mUnknownWeatherIcon":I
    :goto_1
    if-nez v4, :cond_2

    .line 312
    :goto_2
    return-void

    .end local v4    # "mIsWeatherDateAvailable":Z
    .end local v5    # "mUnknownWeatherIcon":I
    :cond_0
    move v4, v7

    .line 278
    goto :goto_0

    .restart local v4    # "mIsWeatherDateAvailable":Z
    :cond_1
    move v5, v7

    .line 279
    goto :goto_1

    .line 285
    .restart local v5    # "mUnknownWeatherIcon":I
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Weather;->getDBIconNum(Landroid/content/Context;)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    .line 286
    const-string v7, "CameraWeather"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Weather Data : iconNum = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v7, "accuweather"

    iget-object v8, p0, Lcom/sec/android/app/camera/Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 289
    iget-object v7, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Weather;->getDBCityId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "cityId":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 291
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "cityId:"

    invoke-direct {v6, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v6, "token":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 293
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v7, "CameraWeather"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Weather Data : cityId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/Weather;->mCityId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "cityId":Ljava/lang/String;
    .end local v6    # "token":Ljava/util/StringTokenizer;
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/camera/Weather;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Weather;->getAutoRefresh(Landroid/content/Context;)I

    move-result v2

    .line 307
    .local v2, "interval":I
    if-nez v2, :cond_4

    .line 308
    iput v5, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    .line 311
    :cond_4
    iget v7, p0, Lcom/sec/android/app/camera/Weather;->mWeatherIcon:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/Weather;->setContextualWeather(I)V

    goto :goto_2

    .line 297
    .end local v2    # "interval":I
    .restart local v0    # "cityId":Ljava/lang/String;
    .restart local v6    # "token":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "CameraWeather"

    const-string v8, "wrong cityId format"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 301
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v7, "CameraWeather"

    const-string v8, "No element in database, it\'s not ready for using it"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
