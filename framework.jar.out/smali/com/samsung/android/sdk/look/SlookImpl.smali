.class public Lcom/samsung/android/sdk/look/SlookImpl;
.super Ljava/lang/Object;
.source "SlookImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/SlookImpl$VERSION_CODES;
    }
.end annotation


# static fields
.field private static final AIRBUTTON:I = 0x1

.field private static final COCKTAIL_BAR:I = 0x6

.field public static final DEBUG:Z = true

.field private static final FORCE_ENABLE_COCKTAIL_PACKAGE_LIST:[Ljava/lang/String;

.field private static final SDK_INT:I

.field private static final SMARTCLIP:I = 0x2

.field private static final SPEN_HOVER_ICON:I = 0x4

.field private static final WRITINGBUDDY:I = 0x3

.field private static sCocktailLevel:I

.field private static sUspLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const-string v0, "ro.slook.ver"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    sput v1, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    sput v1, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.android.app.catchme"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/sdk/look/SlookImpl;->FORCE_ENABLE_COCKTAIL_PACKAGE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionCode()I
    .locals 1

    .prologue
    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    return v0
.end method

.method public static isFeatureEnabled(I)Z
    .locals 12
    .param p0, "type"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v8, v9

    :cond_0
    :goto_0
    return v8

    :pswitch_1
    sget v10, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    if-nez v10, :cond_0

    :pswitch_2
    sget v10, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-ne v10, v11, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .local v7, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v7, :cond_1

    :try_start_0
    const-string v10, "com.sec.feature.spen_usp"

    invoke-interface {v7, v10}, Landroid/content/pm/IPackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    sget v10, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    move v8, v9

    goto :goto_0

    .restart local v7    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Package manager has died"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    :pswitch_3
    sget v10, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-ne v10, v11, :cond_3

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .restart local v7    # "pm":Landroid/content/pm/IPackageManager;
    if-eqz v7, :cond_3

    :try_start_1
    const-string v10, "com.sec.feature.cocktailbar"

    invoke-interface {v7, v10}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v8

    :goto_1
    sput v10, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    sget v10, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-ne v10, v8, :cond_3

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v10

    const-string v11, "normal"

    invoke-static {v10, v11}, Lcom/samsung/android/cocktail/CocktailFeatures;->isSupportCategory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v2, 0x1

    .local v2, "disableCocktail":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "currentPackageName":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/sdk/look/SlookImpl;->FORCE_ENABLE_COCKTAIL_PACKAGE_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v2, 0x0

    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    const/4 v10, 0x0

    sput v10, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "currentPackageName":Ljava/lang/String;
    .end local v2    # "disableCocktail":Z
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    :cond_3
    sget v10, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-eq v10, v8, :cond_0

    move v8, v9

    goto :goto_0

    .restart local v7    # "pm":Landroid/content/pm/IPackageManager;
    :cond_4
    move v10, v9

    goto :goto_1

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "currentPackageName":Ljava/lang/String;
    .restart local v2    # "disableCocktail":Z
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "currentPackageName":Ljava/lang/String;
    .end local v2    # "disableCocktail":Z
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Package manager has died"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
