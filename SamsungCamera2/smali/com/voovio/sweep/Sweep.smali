.class public final Lcom/voovio/sweep/Sweep;
.super Ljava/lang/Object;
.source "Sweep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/Sweep$DecodeImageRunnable;,
        Lcom/voovio/sweep/Sweep$NodeInfo;
    }
.end annotation


# static fields
.field static final DEFAULT_FORWARD:F = 300.0f

.field static final DEFAULT_FOV_V:F = 50.0f

.field static final DEFAULT_IMAGE_ASPECT:F = 1.5f

.field static final DEFAULT_IMAGE_HEIGHT:I = 0x2aa

.field static final DEFAULT_IMAGE_WIDTH:I = 0x400

.field public static KEYWORD:Ljava/lang/String; = null

.field static final NUM_EX_THDS:I = 0x4

.field static POT_TEXTURES:Z = false

.field static final RADIUS_OFFSET_H:F = -150.0f

.field static final RADIUS_OFFSET_V:F = -50.0f

.field static final SWEEP_STATE_COMPLETE:I = 0x3

.field static final SWEEP_STATE_ERROR:I = -0x1

.field static final SWEEP_STATE_LOADING:I = 0x1

.field static final SWEEP_STATE_READY:I = 0x2

.field static final SWEEP_STATE_VOID:I

.field public static VERSION:Ljava/lang/String;


# instance fields
.field m_aTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Transition;",
            ">;"
        }
    .end annotation
.end field

.field m_aVoovios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field m_fFOV:F

.field m_fRadiusOffset:F

.field m_nHeight:I

.field m_nImageHeight:I

.field m_nImageWidth:I

.field m_nOrientation:I

.field m_nState:I

.field m_nWidth:I

.field m_oExecutorService:Ljava/util/concurrent/ExecutorService;

.field m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

.field m_strSEFFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "1.9.5e 13/08/2014"

    sput-object v0, Lcom/voovio/sweep/Sweep;->VERSION:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/voovio/sweep/Sweep;->POT_TEXTURES:Z

    .line 784
    const-string v0, "Voovio_Sweep_VirtualTour"

    sput-object v0, Lcom/voovio/sweep/Sweep;->KEYWORD:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_oExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 93
    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;

    .line 95
    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 96
    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 102
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    .line 103
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    .line 106
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    .line 107
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    .line 108
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    .line 111
    const/high16 v0, -0x3cea0000    # -150.0f

    iput v0, p0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    .line 114
    new-instance v0, Lcom/voovio/sweep/VoovioGeometry;

    invoke-direct {v0}, Lcom/voovio/sweep/VoovioGeometry;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    .line 120
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    .line 122
    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    .line 123
    return-void
.end method

.method public static final TradeOffHeuristic(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;
    .locals 8
    .param p0, "vT"    # Lcom/voovio/voo3d/data/Vector3;
    .param p1, "fSteps"    # F

    .prologue
    const/high16 v7, 0x43c80000    # 400.0f

    const/high16 v6, 0x43960000    # 300.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    .line 182
    .local v1, "vTH":Lcom/voovio/voo3d/data/Vector3;
    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_0

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x432f0000    # 175.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    .line 183
    :cond_0
    iput v6, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 184
    iput v4, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v4, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 187
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v3, 0x43160000    # 150.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 188
    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float v0, v6, v2

    .line 190
    .local v0, "fDiff":F
    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 193
    .end local v0    # "fDiff":F
    :cond_2
    return-object v1
.end method

.method public static Voovio_Sweep_VirtualTour()V
    .locals 0

    .prologue
    .line 785
    return-void
.end method

.method private adjustAngle(F)F
    .locals 13
    .param p1, "fAngle"    # F

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 384
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-le v7, v8, :cond_1

    const/high16 v6, 0x44800000    # 1024.0f

    .line 385
    .local v6, "fWidth":F
    :goto_0
    const-wide v8, 0x4051800000000000L    # 70.0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float v2, v12, v7

    .line 386
    .local v2, "fFOVh2":F
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-ge v7, v8, :cond_0

    .line 387
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 388
    .local v0, "fAspect":F
    float-to-double v8, v0

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 391
    .end local v0    # "fAspect":F
    :cond_0
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v12

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    add-float v4, v7, v8

    .line 392
    .local v4, "fR1":F
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v12

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget v10, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v1, v7, v8

    .line 393
    .local v1, "fF2":F
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    add-float v5, v1, v7

    .line 398
    .local v5, "fR2":F
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    div-float v7, v6, v7

    div-float v8, v4, v5

    mul-float/2addr v7, v8

    mul-float v3, v7, p1

    .line 403
    .local v3, "fNewAngle":F
    return v3

    .line 384
    .end local v1    # "fF2":F
    .end local v2    # "fFOVh2":F
    .end local v3    # "fNewAngle":F
    .end local v4    # "fR1":F
    .end local v5    # "fR2":F
    .end local v6    # "fWidth":F
    :cond_1
    const/high16 v6, 0x43e30000    # 454.0f

    goto :goto_0
.end method

.method private appendVoovio(I)V
    .locals 7
    .param p1, "baSize"    # I

    .prologue
    .line 296
    new-instance v0, Lcom/voovio/sweep/Voovio;

    iget v2, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iget v3, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iget v4, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iget v5, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v6, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/voovio/sweep/Voovio;-><init>(Lcom/voovio/sweep/Sweep;FIIII)V

    .line 297
    .local v0, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nId:I

    .line 298
    iput p1, v0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    .line 300
    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public static final createSweep([IIII[Lcom/voovio/sweep/Template;[Lcom/voovio/voo3d/data/Vector3;[F)Lcom/voovio/sweep/Sweep;
    .locals 10
    .param p0, "imgSizes"    # [I
    .param p1, "imgWidth"    # I
    .param p2, "imgHeight"    # I
    .param p3, "orientation"    # I
    .param p4, "templates"    # [Lcom/voovio/sweep/Template;
    .param p5, "vectors"    # [Lcom/voovio/voo3d/data/Vector3;
    .param p6, "data"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/voovio/sweep/SweepException;
        }
    .end annotation

    .prologue
    .line 200
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 201
    new-instance v5, Lcom/voovio/sweep/SweepException;

    const-string v6, "Parameters exception: The number of Images must be at least 1"

    invoke-direct {v5, v6}, Lcom/voovio/sweep/SweepException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_0
    array-length v5, p4

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 204
    new-instance v5, Lcom/voovio/sweep/SweepException;

    const-string v6, "Parameters exception: The number of Templates must be equal to the number of Photos minus one"

    invoke-direct {v5, v6}, Lcom/voovio/sweep/SweepException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 206
    :cond_1
    int-to-float v5, p1

    int-to-float v6, p2

    div-float v0, v5, v6

    .line 208
    .local v0, "aspect":F
    new-instance v3, Lcom/voovio/sweep/Sweep;

    invoke-direct {v3}, Lcom/voovio/sweep/Sweep;-><init>()V

    .line 209
    .local v3, "oSweep":Lcom/voovio/sweep/Sweep;
    iput p3, v3, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    .line 212
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    .line 213
    const v5, 0x43aa8000    # 341.0f

    const-wide v6, 0x3fdbecde60000000L    # 0.4363323152065277

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float v1, v5, v6

    .line 215
    .local v1, "fF":F
    const/16 v5, 0x400

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    .line 216
    iget v5, v3, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    .line 217
    const v5, 0x42e52ee0

    const/high16 v6, 0x3f000000    # 0.5f

    iget v7, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    .line 226
    .end local v1    # "fF":F
    :goto_0
    iput p1, v3, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    .line 227
    iput p2, v3, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    .line 230
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4

    const/high16 v5, -0x3cea0000    # -150.0f

    :goto_1
    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    .line 233
    iget-object v5, v3, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    invoke-virtual {v5, v3}, Lcom/voovio/sweep/VoovioGeometry;->Create(Lcom/voovio/sweep/Sweep;)V

    .line 236
    const/4 v5, 0x0

    aget v5, p0, v5

    invoke-virtual {v3, v5}, Lcom/voovio/sweep/Sweep;->append(I)V

    .line 237
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    array-length v5, p0

    if-lt v2, v5, :cond_5

    .line 276
    :cond_2
    const/4 v5, 0x3

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nState:I

    .line 278
    return-object v3

    .line 220
    .end local v2    # "i":I
    :cond_3
    const/16 v5, 0x2aa

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    .line 221
    iget v5, v3, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    .line 222
    const/high16 v5, 0x42480000    # 50.0f

    iput v5, v3, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    goto :goto_0

    .line 230
    :cond_4
    const/high16 v5, -0x3db80000    # -50.0f

    goto :goto_1

    .line 238
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v5, v2, -0x1

    aget-object v5, p4, v5

    if-eqz v5, :cond_2

    .line 240
    add-int/lit8 v5, v2, -0x1

    aget-object v5, p4, v5

    invoke-virtual {v5}, Lcom/voovio/sweep/Template;->isRotation()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 241
    if-eqz p5, :cond_7

    add-int/lit8 v5, v2, -0x1

    aget-object v5, p5, v5

    if-eqz v5, :cond_7

    .line 242
    aget v5, p0, v2

    add-int/lit8 v6, v2, -0x1

    aget-object v6, p5, v6

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-int/lit8 v7, v2, -0x1

    aget-object v7, p5, v7

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-int/lit8 v8, v2, -0x1

    aget v8, p6, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/voovio/sweep/Sweep;->appendFromTurnMatchingData(IFFF)V

    .line 237
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 243
    :cond_7
    if-eqz p6, :cond_8

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_8

    .line 244
    aget v5, p0, v2

    add-int/lit8 v6, v2, -0x1

    aget v6, p6, v6

    invoke-virtual {v3, v5, v6}, Lcom/voovio/sweep/Sweep;->appendFromAngle(IF)V

    goto :goto_3

    .line 246
    :cond_8
    aget v6, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v7, p4, v5

    if-eqz p6, :cond_9

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    :goto_4
    invoke-virtual {v3, v6, v7, v5}, Lcom/voovio/sweep/Sweep;->appendFromTemplate(ILcom/voovio/sweep/Template;F)V

    goto :goto_3

    :cond_9
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_4

    .line 250
    :cond_a
    if-eqz p5, :cond_c

    add-int/lit8 v5, v2, -0x1

    aget-object v5, p5, v5

    if-eqz v5, :cond_c

    .line 251
    aget v6, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v7, p5, v5

    if-eqz p6, :cond_b

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    :goto_5
    invoke-virtual {v3, v6, v7, v5}, Lcom/voovio/sweep/Sweep;->appendFromTranslation(ILcom/voovio/voo3d/data/Vector3;F)V

    .line 256
    const/4 v5, 0x1

    if-le v2, v5, :cond_6

    .line 257
    iget-object v5, v3, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Transition;

    .line 258
    .local v4, "oTransition":Lcom/voovio/sweep/Transition;
    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 260
    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->TranslateRearPortalToVoovioOrigin()V

    goto :goto_3

    .line 251
    .end local v4    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_b
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_5

    .line 269
    :cond_c
    aget v6, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v7, p4, v5

    if-eqz p6, :cond_d

    add-int/lit8 v5, v2, -0x1

    aget v5, p6, v5

    :goto_6
    invoke-virtual {v3, v6, v7, v5}, Lcom/voovio/sweep/Sweep;->appendFromTemplate(ILcom/voovio/sweep/Template;F)V

    goto :goto_3

    :cond_d
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_6
.end method


# virtual methods
.method append(I)V
    .locals 3
    .param p1, "baSize"    # I

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    .line 308
    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    .line 309
    .local v0, "oVoovio":Lcom/voovio/sweep/Voovio;
    invoke-virtual {v0}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 311
    const/4 v1, 0x2

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    .line 312
    return-void
.end method

.method appendFromAngle(IF)V
    .locals 8
    .param p1, "baSize"    # I
    .param p2, "fAngle"    # F

    .prologue
    .line 410
    invoke-direct {p0, p2}, Lcom/voovio/sweep/Sweep;->adjustAngle(F)F

    move-result v0

    .line 413
    .local v0, "fNewAngle":F
    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    .line 416
    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 417
    .local v1, "nVoovios":I
    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 418
    .local v3, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    .line 420
    .local v4, "oVoovio1":Lcom/voovio/sweep/Voovio;
    new-instance v2, Lcom/voovio/sweep/Transition;

    invoke-direct {v2, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 421
    .local v2, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    .line 422
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    .line 424
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v5, v6

    invoke-virtual {v2, v5}, Lcom/voovio/sweep/Transition;->FromAngle(F)V

    .line 425
    invoke-virtual {v2, p2}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    .line 427
    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 431
    invoke-virtual {v4}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 432
    return-void
.end method

.method appendFromTemplate(ILcom/voovio/sweep/Template;F)V
    .locals 6
    .param p1, "baSize"    # I
    .param p2, "oTemplate"    # Lcom/voovio/sweep/Template;
    .param p3, "fTransitionData"    # F

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    .line 321
    if-eqz p2, :cond_1

    .line 323
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    .local v0, "nVoovios":I
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    .line 325
    .local v2, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 327
    .local v3, "oVoovio1":Lcom/voovio/sweep/Voovio;
    new-instance v1, Lcom/voovio/sweep/Transition;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 328
    .local v1, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    .line 329
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    .line 331
    invoke-virtual {v1, p2}, Lcom/voovio/sweep/Transition;->FromTemplate(Lcom/voovio/sweep/Template;)V

    .line 333
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v4

    if-nez v4, :cond_2

    .line 335
    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setWalkingSteps(F)V

    .line 340
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 344
    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 346
    .end local v0    # "nVoovios":I
    .end local v1    # "oTransition":Lcom/voovio/sweep/Transition;
    .end local v2    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .end local v3    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_1
    return-void

    .line 336
    .restart local v0    # "nVoovios":I
    .restart local v1    # "oTransition":Lcom/voovio/sweep/Transition;
    .restart local v2    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .restart local v3    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_2
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_0

    .line 337
    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    goto :goto_0
.end method

.method appendFromTranslation(ILcom/voovio/voo3d/data/Vector3;F)V
    .locals 6
    .param p1, "baSize"    # I
    .param p2, "vT"    # Lcom/voovio/voo3d/data/Vector3;
    .param p3, "fTransitionData"    # F

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    .line 355
    if-eqz p2, :cond_1

    .line 359
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 360
    .local v0, "nVoovios":I
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    .line 361
    .local v2, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 363
    .local v3, "oVoovio1":Lcom/voovio/sweep/Voovio;
    new-instance v1, Lcom/voovio/sweep/Transition;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 364
    .local v1, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    .line 365
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    .line 367
    invoke-static {p2, p3}, Lcom/voovio/sweep/Sweep;->TradeOffHeuristic(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object p2

    .line 368
    invoke-virtual {v1, p2}, Lcom/voovio/sweep/Transition;->FromTranslation(Lcom/voovio/voo3d/data/Vector3;)V

    .line 370
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 371
    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setWalkingSteps(F)V

    .line 373
    :cond_0
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 377
    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 379
    .end local v0    # "nVoovios":I
    .end local v1    # "oTransition":Lcom/voovio/sweep/Transition;
    .end local v2    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .end local v3    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_1
    return-void
.end method

.method appendFromTurnMatchingData(IFFF)V
    .locals 22
    .param p1, "baSize"    # I
    .param p2, "fX"    # F
    .param p3, "fY"    # F
    .param p4, "fAngle"    # F

    .prologue
    .line 438
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const/high16 v17, 0x43660000    # 230.0f

    cmpl-float v16, v16, v17

    if-lez v16, :cond_0

    .line 439
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/Sweep;->appendFromAngle(IF)V

    .line 485
    :goto_0
    return-void

    .line 444
    :cond_0
    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v10, v16, v17

    .line 445
    .local v10, "fW2":F
    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->tan(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    div-float v5, v16, v17

    .line 447
    .local v5, "fF":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    move/from16 v16, v0

    add-float v11, v5, v16

    .line 448
    .local v11, "fd":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v10, v11

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->atan(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v6, v16, v17

    .line 449
    .local v6, "fFovH":F
    mul-float v16, v10, v10

    mul-float v17, v11, v11

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v8, v0

    .line 451
    .local v8, "fRadius":F
    mul-float v16, v6, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v9, v16, v17

    .line 454
    .local v9, "fScale":F
    mul-float v16, v9, p2

    div-float v16, v16, v8

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v7, v0

    .line 458
    .local v7, "fNewAngle":F
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/voovio/sweep/Sweep;->adjustAngle(F)F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v4, v0

    .line 460
    .local v4, "fAngleDegAdjusted":F
    mul-float v16, v7, v4

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-ltz v16, :cond_1

    sub-float v16, v7, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const/high16 v17, 0x41a00000    # 20.0f

    cmpl-float v16, v16, v17

    if-lez v16, :cond_2

    .line 461
    :cond_1
    move v7, v4

    .line 462
    const/16 p3, 0x0

    .line 466
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/voovio/sweep/Sweep;->appendVoovio(I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 470
    .local v12, "nVoovios":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, -0x2

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/voovio/sweep/Voovio;

    .line 471
    .local v14, "oVoovio0":Lcom/voovio/sweep/Voovio;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/voovio/sweep/Voovio;

    .line 473
    .local v15, "oVoovio1":Lcom/voovio/sweep/Voovio;
    new-instance v13, Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 474
    .local v13, "oTransition":Lcom/voovio/sweep/Transition;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    .line 475
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;I)V

    .line 477
    neg-float v0, v9

    move/from16 v16, v0

    mul-float v16, v16, p3

    move/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Lcom/voovio/sweep/Transition;->FromAngle(FF)V

    .line 478
    move/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v14}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    .line 484
    invoke-virtual {v15}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    goto/16 :goto_0
.end method

.method public clone()Lcom/voovio/sweep/Sweep;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 128
    new-instance v2, Lcom/voovio/sweep/Sweep;

    invoke-direct {v2}, Lcom/voovio/sweep/Sweep;-><init>()V

    .line 130
    .local v2, "oSweep":Lcom/voovio/sweep/Sweep;
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    iput-object v7, v2, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    .line 132
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    .line 133
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    .line 135
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    .line 136
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    .line 137
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    .line 139
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_fRadiusOffset:F

    .line 141
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iput-object v7, v2, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    .line 143
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    .line 145
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nState:I

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_0

    .line 156
    const/4 v3, 0x0

    .line 158
    .local v3, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 174
    return-object v2

    .line 149
    .end local v1    # "len":I
    .end local v3    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_0
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Voovio;

    invoke-virtual {v7}, Lcom/voovio/sweep/Voovio;->clone()Lcom/voovio/sweep/Voovio;

    move-result-object v4

    .line 150
    .local v4, "oVoovio":Lcom/voovio/sweep/Voovio;
    iput-object v2, v4, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 152
    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v4    # "oVoovio":Lcom/voovio/sweep/Voovio;
    .restart local v1    # "len":I
    .restart local v3    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_1
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Transition;

    invoke-virtual {v7}, Lcom/voovio/sweep/Transition;->clone()Lcom/voovio/sweep/Transition;

    move-result-object v3

    .line 160
    iput-object v2, v3, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 162
    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    .line 163
    .local v5, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voovio/sweep/Voovio;

    .line 165
    .local v6, "oVoovio1":Lcom/voovio/sweep/Voovio;
    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aput-object v5, v7, v9

    .line 166
    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aput-object v6, v7, v10

    .line 168
    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aput-object v3, v7, v9

    .line 169
    iget-object v7, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aput-object v3, v7, v10

    .line 171
    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/voovio/sweep/Sweep;->clone()Lcom/voovio/sweep/Sweep;

    move-result-object v0

    return-object v0
.end method

.method createHighResTextures(Lcom/voovio/sweep/ResourceManager;ILandroid/graphics/Bitmap$Config;)V
    .locals 21
    .param p1, "oResourceManager"    # Lcom/voovio/sweep/ResourceManager;
    .param p2, "nHighResSampleSize"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    const/4 v3, 0x0

    .line 612
    .local v3, "bPortrait":Z
    :goto_0
    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    .line 613
    .local v11, "imageWidth":I
    :goto_1
    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    .line 615
    .local v10, "imageHeight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 617
    .local v15, "nImages":I
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v8, v19, v20

    .line 618
    .local v8, "fScale":F
    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v19, v19, v8

    move/from16 v0, v19

    float-to-int v14, v0

    .line 619
    .local v14, "nHighResWidth":I
    int-to-float v0, v10

    move/from16 v19, v0

    mul-float v19, v19, v8

    move/from16 v0, v19

    float-to-int v13, v0

    .line 621
    .local v13, "nHighResHeight":I
    move-object/from16 v0, p3

    invoke-static {v14, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 623
    .local v6, "bmImage":Landroid/graphics/Bitmap;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 625
    .local v7, "currentAPIVersion":I
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 626
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 627
    move/from16 v0, p2

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 629
    const/16 v19, 0x13

    move/from16 v0, v19

    if-lt v7, v0, :cond_0

    .line 630
    move-object/from16 v0, v17

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 632
    :cond_0
    const/high16 v12, -0x80000000

    .line 633
    .local v12, "maxSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-lt v9, v15, :cond_4

    .line 638
    new-array v4, v12, [B

    .line 641
    .local v4, "baImage":[B
    const/4 v9, 0x0

    :goto_4
    if-lt v9, v15, :cond_6

    .line 654
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 655
    const/4 v4, 0x0

    .line 659
    return-void

    .line 611
    .end local v3    # "bPortrait":Z
    .end local v4    # "baImage":[B
    .end local v6    # "bmImage":Landroid/graphics/Bitmap;
    .end local v7    # "currentAPIVersion":I
    .end local v8    # "fScale":F
    .end local v9    # "i":I
    .end local v10    # "imageHeight":I
    .end local v11    # "imageWidth":I
    .end local v12    # "maxSize":I
    .end local v13    # "nHighResHeight":I
    .end local v14    # "nHighResWidth":I
    .end local v15    # "nImages":I
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 612
    .restart local v3    # "bPortrait":Z
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    goto :goto_1

    .line 613
    .restart local v11    # "imageWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    goto :goto_2

    .line 634
    .restart local v6    # "bmImage":Landroid/graphics/Bitmap;
    .restart local v7    # "currentAPIVersion":I
    .restart local v8    # "fScale":F
    .restart local v9    # "i":I
    .restart local v10    # "imageHeight":I
    .restart local v12    # "maxSize":I
    .restart local v13    # "nHighResHeight":I
    .restart local v14    # "nHighResWidth":I
    .restart local v15    # "nImages":I
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    move/from16 v18, v0

    .line 635
    .local v18, "size":I
    move/from16 v0, v18

    if-le v0, v12, :cond_5

    .line 636
    move/from16 v12, v18

    .line 633
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 642
    .end local v18    # "size":I
    .restart local v4    # "baImage":[B
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/voovio/sweep/Voovio;

    .line 644
    .local v16, "oVoovio":Lcom/voovio/sweep/Voovio;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4, v9}, Lcom/voovio/sweep/ImageProvider;->getImageDataByIndex(Ljava/lang/String;[BI)V

    .line 646
    const/16 v19, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 647
    .local v5, "bmDecodedImage":Landroid/graphics/Bitmap;
    if-eq v5, v6, :cond_7

    .line 648
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 649
    :cond_7
    move-object v6, v5

    .line 651
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/voovio/sweep/Voovio;->CreateHighResTexture(Landroid/graphics/Bitmap;)V

    .line 641
    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method

.method createLowResTextures(Lcom/voovio/sweep/ResourceManager;I)V
    .locals 24
    .param p1, "oResourceManager"    # Lcom/voovio/sweep/ResourceManager;
    .param p2, "nLowResSampleSize"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    const/4 v4, 0x0

    .line 522
    .local v4, "bPortrait":Z
    :goto_0
    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    .line 523
    .local v14, "imageWidth":I
    :goto_1
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    .line 525
    .local v13, "imageHeight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 527
    .local v15, "nImages":I
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 528
    .local v11, "fScale":F
    int-to-float v0, v14

    move/from16 v22, v0

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 529
    .local v17, "nLowResWidth":I
    int-to-float v0, v13

    move/from16 v22, v0

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 532
    .local v16, "nLowResHeight":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 533
    .local v7, "currentAPIVersion":I
    const/16 v22, 0x13

    move/from16 v0, v22

    if-ge v7, v0, :cond_4

    .line 534
    sget-object v22, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 535
    .local v6, "bmImage":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 536
    .local v18, "oCanvas":Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 538
    .local v19, "oS":Landroid/graphics/Matrix;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-lt v12, v15, :cond_3

    .line 549
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 603
    .end local v6    # "bmImage":Landroid/graphics/Bitmap;
    .end local v18    # "oCanvas":Landroid/graphics/Canvas;
    .end local v19    # "oS":Landroid/graphics/Matrix;
    :goto_4
    return-void

    .line 521
    .end local v4    # "bPortrait":Z
    .end local v7    # "currentAPIVersion":I
    .end local v11    # "fScale":F
    .end local v12    # "i":I
    .end local v13    # "imageHeight":I
    .end local v14    # "imageWidth":I
    .end local v15    # "nImages":I
    .end local v16    # "nLowResHeight":I
    .end local v17    # "nLowResWidth":I
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 522
    .restart local v4    # "bPortrait":Z
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    goto :goto_1

    .line 523
    .restart local v14    # "imageWidth":I
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    goto :goto_2

    .line 539
    .restart local v6    # "bmImage":Landroid/graphics/Bitmap;
    .restart local v7    # "currentAPIVersion":I
    .restart local v11    # "fScale":F
    .restart local v12    # "i":I
    .restart local v13    # "imageHeight":I
    .restart local v15    # "nImages":I
    .restart local v16    # "nLowResHeight":I
    .restart local v17    # "nLowResWidth":I
    .restart local v18    # "oCanvas":Landroid/graphics/Canvas;
    .restart local v19    # "oS":Landroid/graphics/Matrix;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/sweep/Voovio;

    .line 541
    .local v20, "oVoovio":Lcom/voovio/sweep/Voovio;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->getImage(Lcom/voovio/sweep/Voovio;)Z

    .line 543
    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 544
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 546
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/voovio/sweep/Voovio;->CreateLowResTexture(Landroid/graphics/Bitmap;)V

    .line 538
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 551
    .end local v6    # "bmImage":Landroid/graphics/Bitmap;
    .end local v12    # "i":I
    .end local v18    # "oCanvas":Landroid/graphics/Canvas;
    .end local v19    # "oS":Landroid/graphics/Matrix;
    .end local v20    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_4
    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_oExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 552
    new-instance v22, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    const/4 v5, 0x1

    .line 557
    .local v5, "bPreloadedSweepImages":Z
    :goto_5
    if-nez v5, :cond_5

    .line 558
    new-instance v22, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 559
    :cond_5
    new-instance v22, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 560
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    const/16 v22, 0x4

    move/from16 v0, v22

    if-lt v12, v0, :cond_7

    .line 567
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 568
    .local v8, "decompressed":I
    const/4 v12, 0x0

    :goto_7
    if-lt v12, v8, :cond_9

    .line 574
    const/4 v12, 0x0

    move v9, v8

    .end local v8    # "decompressed":I
    .local v9, "decompressed":I
    :goto_8
    if-lt v12, v15, :cond_a

    .line 591
    const/4 v12, 0x0

    :goto_9
    const/16 v22, 0x4

    move/from16 v0, v22

    if-lt v12, v0, :cond_b

    .line 594
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 595
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 597
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_oExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 598
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Sweep;->m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;

    goto/16 :goto_4

    .line 554
    .end local v5    # "bPreloadedSweepImages":Z
    .end local v9    # "decompressed":I
    .end local v12    # "i":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    .line 561
    .restart local v5    # "bPreloadedSweepImages":Z
    .restart local v12    # "i":I
    :cond_7
    if-nez v5, :cond_8

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 560
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 569
    .restart local v8    # "decompressed":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v22, v0

    new-instance v23, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;-><init>(Lcom/voovio/sweep/Sweep;ILcom/voovio/sweep/ResourceManager;I)V

    invoke-interface/range {v22 .. v23}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 568
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 576
    .end local v8    # "decompressed":I
    .restart local v9    # "decompressed":I
    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/AbstractMap$SimpleEntry;

    .line 577
    .local v21, "result":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 579
    .restart local v6    # "bmImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/sweep/Voovio;

    .line 580
    .restart local v20    # "oVoovio":Lcom/voovio/sweep/Voovio;
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/voovio/sweep/Voovio;->CreateLowResTexture(Landroid/graphics/Bitmap;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 583
    if-ge v9, v15, :cond_c

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v22, v0

    new-instance v23, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "decompressed":I
    .restart local v8    # "decompressed":I
    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;-><init>(Lcom/voovio/sweep/Sweep;ILcom/voovio/sweep/ResourceManager;I)V

    invoke-interface/range {v22 .. v23}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    .end local v6    # "bmImage":Landroid/graphics/Bitmap;
    .end local v20    # "oVoovio":Lcom/voovio/sweep/Voovio;
    .end local v21    # "result":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    :goto_a
    add-int/lit8 v12, v12, 0x1

    move v9, v8

    .end local v8    # "decompressed":I
    .restart local v9    # "decompressed":I
    goto/16 :goto_8

    .line 585
    :catch_0
    move-exception v10

    move v8, v9

    .line 586
    .end local v9    # "decompressed":I
    .restart local v8    # "decompressed":I
    .local v10, "e":Ljava/lang/InterruptedException;
    :goto_b
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    .line 592
    .end local v8    # "decompressed":I
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v9    # "decompressed":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Bitmap;

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    .line 585
    .end local v9    # "decompressed":I
    .restart local v6    # "bmImage":Landroid/graphics/Bitmap;
    .restart local v8    # "decompressed":I
    .restart local v20    # "oVoovio":Lcom/voovio/sweep/Voovio;
    .restart local v21    # "result":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    :catch_1
    move-exception v10

    goto :goto_b

    .end local v8    # "decompressed":I
    .restart local v9    # "decompressed":I
    :cond_c
    move v8, v9

    .end local v9    # "decompressed":I
    .restart local v8    # "decompressed":I
    goto :goto_a
.end method

.method public getImageAspect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 686
    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-le v0, v1, :cond_0

    const-string v0, "horizontal"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vertical"

    goto :goto_0
.end method

.method public getImageAspectRatio()F
    .locals 2

    .prologue
    .line 692
    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    return v0
.end method

.method getNeighbours(Lcom/voovio/sweep/Voovio;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "oCurrentVoovio"    # Lcom/voovio/sweep/Voovio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voovio/sweep/Voovio;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p2, "aSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/voovio/sweep/Voovio;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 492
    const/4 v6, 0x0

    iput v6, p1, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    .line 493
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 497
    .local v4, "nVoovios":I
    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    iget v7, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    sub-int v7, v4, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 498
    .local v2, "nLimit":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-le v0, v2, :cond_0

    .line 513
    return-void

    .line 499
    :cond_0
    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    sub-int v1, v6, v0

    .line 500
    .local v1, "nLeft":I
    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    add-int v3, v6, v0

    .line 502
    .local v3, "nRight":I
    if-ge v3, v4, :cond_1

    .line 503
    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    .line 504
    .local v5, "oVoovio":Lcom/voovio/sweep/Voovio;
    iput v0, v5, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    .line 505
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    .end local v5    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_1
    if-ltz v1, :cond_2

    .line 508
    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    .line 509
    .restart local v5    # "oVoovio":Lcom/voovio/sweep/Voovio;
    iput v0, v5, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    .line 510
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v5    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNodesInfo()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Sweep$NodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v2, "aNodeInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/voovio/sweep/Sweep$NodeInfo;>;"
    const/high16 v4, 0x42c80000    # 100.0f

    .line 701
    .local v4, "fD":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 702
    .local v9, "nTransitions":I
    if-lez v9, :cond_7

    .line 703
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    if-lt v8, v0, :cond_0

    .line 706
    new-instance v10, Lcom/voovio/geometry/Matrix;

    invoke-direct {v10}, Lcom/voovio/geometry/Matrix;-><init>()V

    .line 708
    .local v10, "oM":Lcom/voovio/geometry/Matrix;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    .line 710
    .local v18, "ptPortalOut":Lcom/voovio/voo3d/data/Vector3;
    const/16 v16, 0x0

    .local v16, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v15, 0x0

    .line 713
    .local v15, "oPrevTransition":Lcom/voovio/sweep/Transition;
    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_1

    .line 754
    invoke-static/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 772
    .end local v8    # "i":I
    .end local v10    # "oM":Lcom/voovio/geometry/Matrix;
    .end local v15    # "oPrevTransition":Lcom/voovio/sweep/Transition;
    .end local v16    # "oTransition":Lcom/voovio/sweep/Transition;
    .end local v18    # "ptPortalOut":Lcom/voovio/voo3d/data/Vector3;
    :goto_2
    return-object v2

    .line 704
    .restart local v8    # "i":I
    :cond_0
    new-instance v19, Lcom/voovio/sweep/Sweep$NodeInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/Sweep$NodeInfo;-><init>(Lcom/voovio/sweep/Sweep;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 714
    .restart local v10    # "oM":Lcom/voovio/geometry/Matrix;
    .restart local v15    # "oPrevTransition":Lcom/voovio/sweep/Transition;
    .restart local v16    # "oTransition":Lcom/voovio/sweep/Transition;
    .restart local v18    # "ptPortalOut":Lcom/voovio/voo3d/data/Vector3;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "oTransition":Lcom/voovio/sweep/Transition;
    check-cast v16, Lcom/voovio/sweep/Transition;

    .line 716
    .restart local v16    # "oTransition":Lcom/voovio/sweep/Transition;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voovio/sweep/Sweep$NodeInfo;

    .line 717
    .local v13, "oNodeInfo_i":Lcom/voovio/sweep/Sweep$NodeInfo;
    add-int/lit8 v19, v8, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/voovio/sweep/Sweep$NodeInfo;

    .line 720
    .local v14, "oNodeInfo_i1":Lcom/voovio/sweep/Sweep$NodeInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v3

    .line 722
    .local v3, "fAngle":F
    invoke-virtual {v10}, Lcom/voovio/geometry/Matrix;->identity()V

    .line 723
    invoke-virtual {v10, v3}, Lcom/voovio/geometry/Matrix;->rotate(F)V

    .line 725
    const/16 v19, 0x0

    cmpl-float v19, v3, v19

    if-nez v19, :cond_4

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    iput v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_nType:I

    .line 726
    iput v3, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fAngle:F

    .line 728
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    .line 729
    invoke-virtual/range {v16 .. v16}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v19

    if-nez v19, :cond_2

    .line 730
    if-lez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/voovio/sweep/Transition;

    move-object/from16 v15, v19

    .line 731
    :goto_4
    if-nez v15, :cond_6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v17, v0

    .line 732
    .local v17, "ptO":Lcom/voovio/voo3d/data/Vector3;
    :goto_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 733
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    .line 735
    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v19

    move/from16 v0, v19

    iput v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    .line 738
    .end local v17    # "ptO":Lcom/voovio/voo3d/data/Vector3;
    :cond_2
    iget-object v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lcom/voovio/geometry/Matrix;->transformPoint(Lcom/voovio/geometry/Point;Lcom/voovio/geometry/Point;)V

    .line 740
    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v20, v0

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v21, v0

    mul-float v21, v21, v4

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->x:F

    .line 741
    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v20, v0

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v21, v0

    mul-float v21, v21, v4

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->y:F

    .line 744
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v20, v0

    sub-float v5, v19, v20

    .line 745
    .local v5, "fDeltaX":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v20, v0

    sub-float v6, v19, v20

    .line 747
    .local v6, "fDeltaZ":F
    const/16 v19, 0x0

    cmpl-float v19, v3, v19

    if-nez v19, :cond_3

    const/16 v19, 0x0

    cmpl-float v19, v6, v19

    if-eqz v19, :cond_3

    .line 748
    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v19, v19, v4

    mul-float v19, v19, v6

    div-float v7, v19, v5

    .line 749
    .local v7, "fLateral":F
    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v20, v0

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v7

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->x:F

    .line 750
    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v20, v0

    iget-object v0, v14, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v21, v0

    mul-float v21, v21, v7

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->y:F

    .line 713
    .end local v7    # "fLateral":F
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 725
    .end local v5    # "fDeltaX":F
    .end local v6    # "fDeltaZ":F
    :cond_4
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 730
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 731
    :cond_6
    iget-object v0, v15, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v17, v0

    goto/16 :goto_5

    .line 757
    .end local v3    # "fAngle":F
    .end local v8    # "i":I
    .end local v10    # "oM":Lcom/voovio/geometry/Matrix;
    .end local v13    # "oNodeInfo_i":Lcom/voovio/sweep/Sweep$NodeInfo;
    .end local v14    # "oNodeInfo_i1":Lcom/voovio/sweep/Sweep$NodeInfo;
    .end local v15    # "oPrevTransition":Lcom/voovio/sweep/Transition;
    .end local v16    # "oTransition":Lcom/voovio/sweep/Transition;
    .end local v18    # "ptPortalOut":Lcom/voovio/voo3d/data/Vector3;
    :cond_7
    new-instance v11, Lcom/voovio/sweep/Sweep$NodeInfo;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/voovio/sweep/Sweep$NodeInfo;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 758
    .local v11, "oNodeInfo0":Lcom/voovio/sweep/Sweep$NodeInfo;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_nType:I

    .line 759
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fAngle:F

    .line 760
    const/high16 v19, 0x43960000    # 300.0f

    move/from16 v0, v19

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    .line 761
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v12, Lcom/voovio/sweep/Sweep$NodeInfo;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/voovio/sweep/Sweep$NodeInfo;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 764
    .local v12, "oNodeInfo1":Lcom/voovio/sweep/Sweep$NodeInfo;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_nType:I

    .line 765
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fAngle:F

    .line 766
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    .line 767
    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    iget-object v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v20, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v21, v0

    mul-float v21, v21, v4

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->x:F

    .line 768
    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    iget-object v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v20, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v21, v0

    mul-float v21, v21, v4

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/geometry/Point;->y:F

    .line 769
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public getTransition(I)Lcom/voovio/sweep/Transition;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 778
    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Transition;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSEFFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "strSEFFile"    # Ljava/lang/String;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    .line 669
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
