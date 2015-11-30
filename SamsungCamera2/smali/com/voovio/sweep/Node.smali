.class Lcom/voovio/sweep/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field public m_fFOV:F

.field public m_nPosition:I

.field public m_oVoovio:Lcom/voovio/sweep/Voovio;

.field public m_ptPos:Lcom/voovio/voo3d/data/Vector3;

.field public m_vDir:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method public constructor <init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V
    .locals 1
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p2, "ptPos"    # Lcom/voovio/voo3d/data/Vector3;
    .param p3, "vDir"    # Lcom/voovio/voo3d/data/Vector3;
    .param p4, "fFOV"    # F

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    .line 8
    iput-object v0, p0, Lcom/voovio/sweep/Node;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 9
    iput-object v0, p0, Lcom/voovio/sweep/Node;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/Node;->m_fFOV:F

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/Node;->m_nPosition:I

    .line 17
    iput-object p1, p0, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    .line 18
    invoke-virtual {p2}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/Node;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 19
    invoke-virtual {p3}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/Node;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    .line 20
    iput p4, p0, Lcom/voovio/sweep/Node;->m_fFOV:F

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Lcom/voovio/sweep/Node;)Z
    .locals 2
    .param p1, "oNode"    # Lcom/voovio/sweep/Node;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, p1, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/voovio/sweep/Node;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p1, Lcom/voovio/sweep/Node;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->equals(Lcom/voovio/voo3d/data/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/voovio/sweep/Node;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p1, Lcom/voovio/sweep/Node;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->equals(Lcom/voovio/voo3d/data/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget v0, p0, Lcom/voovio/sweep/Node;->m_fFOV:F

    iget v1, p1, Lcom/voovio/sweep/Node;->m_fFOV:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)Z
    .locals 1
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p2, "ptPos"    # Lcom/voovio/voo3d/data/Vector3;
    .param p3, "vDir"    # Lcom/voovio/voo3d/data/Vector3;
    .param p4, "fFOV"    # F

    .prologue
    .line 35
    iget-object v0, p0, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    if-ne v0, p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/voovio/sweep/Node;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, p2}, Lcom/voovio/voo3d/data/Vector3;->equals(Lcom/voovio/voo3d/data/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/voovio/sweep/Node;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, p3}, Lcom/voovio/voo3d/data/Vector3;->equals(Lcom/voovio/voo3d/data/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget v0, p0, Lcom/voovio/sweep/Node;->m_fFOV:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
