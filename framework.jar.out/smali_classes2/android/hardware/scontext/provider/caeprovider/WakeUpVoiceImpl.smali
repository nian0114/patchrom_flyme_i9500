.class public Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "WakeUpVoiceImpl.java"


# static fields
.field private static final MAXIMUM_BUFFER_SIZE:I = 0x1fffe

.field private static final MAXIMUM_RETRY_TIMES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "scontext.provider.caeprovider.WakeUpVoiceImpl"


# instance fields
.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # I
    .param p3, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p3}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->mMode:I

    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getManager()Lcom/samsung/android/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    return-void
.end method

.method private divideReferenceData(I[B)Z
    .locals 6
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .local v2, "res":Z
    if-nez p2, :cond_0

    move v3, v2

    .end local v2    # "res":Z
    .local v3, "res":I
    :goto_0
    return v3

    .end local v3    # "res":I
    .restart local v2    # "res":Z
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const v4, 0x1fffe

    .local v4, "size":I
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    :cond_1
    new-array v1, v4, [B

    .local v1, "dividedData":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->sendReferenceDataToCAE(I[B)Z

    move-result v2

    goto :goto_1

    .end local v1    # "dividedData":[B
    :cond_2
    move v3, v2

    .restart local v3    # "res":I
    goto :goto_0
.end method

.method private sendReferenceDataToCAE(I[B)Z
    .locals 7
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .local v1, "res":Z
    if-eqz p2, :cond_0

    iget v2, p0, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->mMode:I

    if-ne v2, v6, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    .local v0, "cnt":I
    :cond_2
    if-ne p1, v5, :cond_4

    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v3, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4, p2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    move-result v1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ne v1, v5, :cond_5

    const-string v2, "scontext.provider.caeprovider.WakeUpVoiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReferenceDataToCAE() : data_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "scontext.provider.caeprovider.WakeUpVoiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReferenceDataToCAE() : data_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    :cond_4
    if-ne p1, v6, :cond_3

    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v3, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4, p2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setReferenceData(I[B)Z
    .locals 4
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .local v0, "res":Z
    if-nez p2, :cond_0

    move v1, v0

    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_0
    return v1

    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_0
    array-length v2, p2

    const v3, 0x1fffe

    if-ge v2, v3, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->sendReferenceDataToCAE(I[B)Z

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1    # "res":I
    goto :goto_0

    .end local v1    # "res":I
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->divideReferenceData(I[B)Z

    move-result v0

    goto :goto_1
.end method
