.class public Lcom/ck/services/statistics/DexLoader;
.super Ljava/lang/Object;
.source "DexLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DexLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadClass(Ldalvik/system/DexClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "loader"    # Ldalvik/system/DexClassLoader;
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/DexClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "DexLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ClassNotFoundException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadDex(Landroid/content/Context;Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "dexLoader":Ldalvik/system/DexClassLoader;
    new-instance v0, Ldalvik/system/DexClassLoader;

    .line 20
    .end local v0    # "dexLoader":Ldalvik/system/DexClassLoader;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 19
    invoke-direct {v0, p1, v1, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 21
    .restart local v0    # "dexLoader":Ldalvik/system/DexClassLoader;
    return-object v0
.end method
