.class public Lcom/sec/android/app/camera/SoundShotConverter;
.super Ljava/lang/Object;
.source "SoundShotConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundShotConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToMP4(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "inFilePath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    const-string v2, "SoundShotConverter"

    const-string v3, "inFilePath does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 33
    :goto_0
    return-object v0

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/SoundShotConverter;->getOutputFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "outFilePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/camera/SoundShotConverter;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    const-string v2, "SoundShotConverter"

    const-string v3, "Output file already exists."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p0, v0}, Lcom/sec/android/secvision/sef/SEFConverter;->convertToMP4(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getOutputFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "originalPath"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v1, ".mp4"

    .line 42
    .local v1, "newExtension":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "lastDot":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static isExist(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
