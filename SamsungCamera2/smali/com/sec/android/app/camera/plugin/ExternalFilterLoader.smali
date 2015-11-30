.class public Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
.super Ljava/lang/Object;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final EFFECT_NAME:Ljava/lang/String; = "name"

.field private static final EXT_RES_PATH:Ljava/lang/String; = "/data/DownFilters/Res/"

.field private static final FILE_NAME:Ljava/lang/String; = "filename"

.field private static final FILTER_PROJECTION:[Ljava/lang/String;

.field private static final FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field private static final HANDLER:Ljava/lang/String; = "handler"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final INDEX_EFFECT_NAME:I = 0x1

.field private static final INDEX_FILE_NAME:I = 0x2

.field private static final INDEX_FILTER_TYPE:I = 0x5

.field private static final INDEX_HANDLER:I = 0xb

.field private static final INDEX_HEIGHT:I = 0xa

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MVENDOR:I = 0x4

.field private static final INDEX_PACKAGE_NAME:I = 0xc

.field private static final INDEX_POSX:I = 0x7

.field private static final INDEX_POSY:I = 0x8

.field private static final INDEX_TITLE:I = 0x6

.field private static final INDEX_VERSION:I = 0x3

.field private static final INDEX_WIDTH:I = 0x9

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final POSX:Ljava/lang/String; = "posx"

.field private static final POSY:Ljava/lang/String; = "posy"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VENDOR:Ljava/lang/String; = "vendor"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field private static final _ID:Ljava/lang/String; = "_ID"

.field private static mContext:Landroid/content/Context;

.field private static mDualExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mDualFilterExist:Z

.field private mFilterDBObserver:Landroid/database/ContentObserver;

.field private mFilterExist:Z

.field private mIsDBChanged:Z

.field private mIsExternalMenuView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    .line 64
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "filename"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vendor"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "filter_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "posx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "posy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "handler"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "package_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterExist:Z

    .line 58
    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualFilterExist:Z

    .line 59
    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsDBChanged:Z

    .line 60
    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsExternalMenuView:Z

    .line 80
    new-instance v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;-><init>(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    .line 92
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 95
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterExist:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualFilterExist:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsDBChanged:Z

    return p1
.end method


# virtual methods
.method public clear(Z)V
    .locals 2
    .param p1, "destory"    # Z

    .prologue
    const/4 v1, 0x0

    .line 188
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    iput-boolean v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterExist:Z

    .line 191
    iput-boolean v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualFilterExist:Z

    .line 192
    if-eqz p1, :cond_0

    .line 194
    iput-boolean v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsExternalMenuView:Z

    .line 195
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mContext:Landroid/content/Context;

    .line 197
    :cond_0
    return-void
.end method

.method public getExternalEffectCount()I
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalEffectResourcePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/DownFilters/Res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalEffects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExternalEffectsId(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 297
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    if-ltz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getExternalEffectsName(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 303
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    add-int/lit16 v1, p1, -0x1f40

    if-ltz v1, :cond_1

    add-int/lit16 v1, p1, -0x1f40

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 304
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    .end local v0    # "title":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 307
    .restart local v0    # "title":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalFilterForSet(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 335
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "fullName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getExternalFilterFullName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 321
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    if-ltz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalFilterHandler(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getHandler()Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method

.method public getExternalFilterHeight(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getHeight()I

    move-result v0

    .line 376
    :cond_0
    return v0
.end method

.method public getExternalFilterName(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 313
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    add-int/lit16 v1, p1, -0x1f40

    if-ltz v1, :cond_0

    add-int/lit16 v1, p1, -0x1f40

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ".so"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 317
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExternalFilterPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 328
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    if-ltz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalFilterPosx(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPosx()I

    move-result v0

    .line 355
    :cond_0
    return v0
.end method

.method public getExternalFilterPosy(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPosy()I

    move-result v0

    .line 362
    :cond_0
    return v0
.end method

.method public getExternalFilterType(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 344
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFilterType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilterWidth(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getWidth()I

    move-result v0

    .line 369
    :cond_0
    return v0
.end method

.method public isExternalEffect(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 348
    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2328

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternalMenuView()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsExternalMenuView:Z

    return v0
.end method

.method public isFilterDBChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 220
    iget-boolean v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsDBChanged:Z

    if-eqz v1, :cond_0

    .line 221
    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsDBChanged:Z

    .line 222
    const/4 v0, 0x1

    .line 224
    :cond_0
    return v0
.end method

.method public isFilterLoaded()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterExist:Z

    return v0
.end method

.method public isValidExternalId(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    add-int/lit16 v1, p1, -0x1f40

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit16 v1, p1, -0x1f40

    if-ltz v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 395
    :cond_1
    add-int/lit16 v1, p1, -0x1f40

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int/lit16 v1, p1, -0x1f40

    if-gez v1, :cond_0

    .line 398
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadExternalFilters()Z
    .locals 21

    .prologue
    .line 98
    monitor-enter p0

    const/16 v17, 0x0

    .line 101
    .local v17, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 103
    const/16 v19, 0x0

    .line 104
    .local v19, "filterCount":I
    :cond_0
    :goto_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 107
    .local v3, "id":I
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "effectName":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v1, "Unnamed filter"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "filterName":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v1, "Unnamed filter"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 115
    .local v8, "version":I
    const/4 v1, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "vendor":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v1, "Unknown vendor"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const/4 v1, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 119
    .local v16, "filter_type":Ljava/lang/String;
    if-eqz v16, :cond_0

    const-string v1, "Unknown FilterType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "title":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v1, "Unknown title"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 126
    .local v10, "posx":I
    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 128
    .local v11, "posy":I
    const/16 v1, 0x9

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 130
    .local v12, "width":I
    const/16 v1, 0xa

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 132
    .local v13, "height":I
    const/16 v1, 0xb

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 133
    .local v14, "handler":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const/16 v1, 0xc

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 136
    .local v15, "packageName":Ljava/lang/String;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], effectName["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], filterName["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], version["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], vendor["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], filter_type["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], title["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], posx["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], posy["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], width["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], height["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], handler["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], packageName["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v20, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v19

    add-int/lit16 v4, v0, 0x1f40

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v16}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v19, v19, 0x1

    .line 158
    goto/16 :goto_0

    .line 159
    .end local v3    # "id":I
    .end local v5    # "vendor":Ljava/lang/String;
    .end local v6    # "effectName":Ljava/lang/String;
    .end local v7    # "filterName":Ljava/lang/String;
    .end local v8    # "version":I
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "posx":I
    .end local v11    # "posy":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v14    # "handler":Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "filter_type":Ljava/lang/String;
    :cond_1
    if-nez v19, :cond_4

    .line 165
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    if-eqz v17, :cond_2

    .line 181
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .end local v19    # "filterCount":I
    :cond_2
    :goto_1
    const/4 v1, 0x0

    :cond_3
    :goto_2
    monitor-exit p0

    return v1

    .line 173
    .restart local v19    # "filterCount":I
    :cond_4
    const/4 v1, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterExist:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    const/4 v1, 0x1

    .line 180
    if-eqz v17, :cond_3

    .line 181
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 98
    .end local v19    # "filterCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 177
    :catch_0
    move-exception v18

    .line 178
    .local v18, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    if-eqz v17, :cond_2

    .line 181
    :try_start_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 180
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    if-eqz v17, :cond_5

    .line 181
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public registerObserver(Lcom/sec/android/app/camera/Camera;)V
    .locals 4
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    return-void
.end method

.method public setExternalMenuView(Z)V
    .locals 0
    .param p1, "isExternalMenu"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mIsExternalMenuView:Z

    .line 217
    return-void
.end method

.method public unRegisterObserver(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 205
    return-void
.end method
