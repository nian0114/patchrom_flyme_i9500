.class public final Lcom/voovio/sweep/SweepView;
.super Landroid/widget/RelativeLayout;
.source "SweepView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/SweepView$OnSweepViewListener;
    }
.end annotation


# static fields
.field public static final AD_DIR_BACKWARD_CONTINUOUS:I = 0x5

.field public static final AD_DIR_BACKWARD_STEP:I = 0x1

.field public static final AD_DIR_FORWARD_CONTINUOUS:I = 0x4

.field public static final AD_DIR_FORWARD_STEP:I = 0x0

.field public static final AD_DIR_LEFT_CONTINUOUS:I = 0x6

.field public static final AD_DIR_LEFT_STEP:I = 0x2

.field public static final AD_DIR_RIGHT_CONTINUOUS:I = 0x7

.field public static final AD_DIR_RIGHT_STEP:I = 0x3

.field public static final AD_POS_END:I = 0x7fffffff

.field public static final AD_POS_NEXT:I = 0x7ffffffe

.field public static final AD_POS_PREV:I = -0x7fffffff

.field public static final AD_POS_START:I = -0x80000000

.field public static final DIRECTION_BACKWARD:B = 0x2t

.field public static final DIRECTION_FORWARD:B = 0x1t

.field public static final DIRECTION_LEFT:B = 0x4t

.field public static final DIRECTION_NONE:B = 0x0t

.field public static final DIRECTION_RIGHT:B = 0x8t

.field private static final OPERATION_NAVIGATION:I = 0x0

.field private static final OPERATION_ZOOM:I = 0x1

.field static final m_movAveragePeriod:F = 40.0f

.field static final smoothFactor:F = 0.1f


# instance fields
.field private GRADIENT_SIZE:I

.field private m_aAuxMatrix:[F

.field m_aEdges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Edge;",
            ">;"
        }
    .end annotation
.end field

.field m_aKeyEdges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Edge;",
            ">;"
        }
    .end annotation
.end field

.field m_aNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Node;",
            ">;"
        }
    .end annotation
.end field

.field private m_bAutoDrive:Z

.field private m_bAvailableDirections:B

.field private m_bFastMove:Z

.field private m_bFirstDraw:Z

.field private m_bGLViewReady:Z

.field private m_bPreloadImages:Z

.field private m_bPreloadImagesOnGPU:Z

.field private m_bResumed:Z

.field private m_bStart:Z

.field private m_fAngleStepX:F

.field private m_fAngleStepY:F

.field private m_fAutodriveVelocityForward:F

.field private m_fAutodriveVelocitySideward:F

.field m_fCurEdgeFactor:F

.field private m_fCurFOV:F

.field private m_fFastMoveVelocityForward:F

.field private m_fFastMoveVelocitySideward:F

.field private m_fFovStep:F

.field private m_fMaxFOV:F

.field private m_fMinFOV:F

.field private m_fMoveDirection:F

.field private m_fbAlphaGradient:Ljava/nio/FloatBuffer;

.field private m_iALoc_3:I

.field private m_iAlphaLoc_1:I

.field private m_iBLoc_3:I

.field private m_iInvGradLoc_2:I

.field private m_iMatrixLoc_1:I

.field private m_iMatrixLoc_2:I

.field private m_iMatrixLoc_3:I

.field private m_iP1Loc_2:I

.field private m_iP1Loc_3:I

.field private m_iP2Loc_2:I

.field private m_iP2Loc_3:I

.field private m_iPositionLoc_2:I

.field private m_iPositionLoc_3:I

.field private m_iProg1Id:I

.field private m_iProg2Id:I

.field private m_iProg3Id:I

.field private m_iTexLoc_1:I

.field private m_iTexLoc_2:I

.field private m_iTexLoc_3:I

.field private m_iUVCoordsLoc_1:I

.field private m_iUVCoordsLoc_2:I

.field private m_iUVCoordsLoc_3:I

.field private m_iVertexLoc_1:I

.field private m_iVertexLoc_2:I

.field private m_iVertexLoc_3:I

.field m_lastRealTimeMeasurement_ms:J

.field m_movAverageDeltaTime_ms:F

.field private m_nAutodriveOnStart:I

.field m_nCurEdgeIndex:I

.field private m_nCurrentPosition:I

.field private m_nHighResSampleSize:I

.field private m_nLastPostedPosition:I

.field private m_nLowResSampleSize:I

.field private m_nMaxPosition:I

.field private m_nOperation:I

.field private m_nZoomCurStep:I

.field private m_nZoomSteps:I

.field private m_oAutodriveRunnable:Ljava/lang/Runnable;

.field private m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;

.field m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

.field m_oCurEdge:Lcom/voovio/sweep/Edge;

.field m_oCurVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oDirectionsChangedEventRunnable:Ljava/lang/Runnable;

.field private m_oGLView:Landroid/opengl/GLSurfaceView;

.field private m_oHandler:Landroid/os/Handler;

.field private m_oImageChangedEventRunnable:Ljava/lang/Runnable;

.field private m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

.field private m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

.field private m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

.field m_oPrevEdge:Lcom/voovio/sweep/Edge;

.field private m_oRenderLock:Ljava/lang/Object;

.field private m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

.field private m_oSetGLViewportRunnable:Ljava/lang/Runnable;

.field private m_oStopAutodriveRunnable:Ljava/lang/Runnable;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field private m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

.field private m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

.field private m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

.field m_smoothedDeltaRealTime_ms:F

.field private m_strFShader:Ljava/lang/String;

.field private m_strVShader1:Ljava/lang/String;

.field private m_strVShader2:Ljava/lang/String;

.field private m_strVShader3:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/voovio/sweep/SweepView;-><init>(Landroid/content/Context;Lcom/voovio/sweep/ImageProvider;)V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voovio/sweep/ImageProvider;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oImageProvider"    # Lcom/voovio/sweep/ImageProvider;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 340
    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    .line 52
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    .line 55
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    .line 56
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    .line 59
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 62
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 65
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 68
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    .line 71
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    .line 78
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 82
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bFastMove:Z

    .line 84
    const/high16 v2, 0x43fa0000    # 500.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fFastMoveVelocityForward:F

    .line 85
    const/high16 v2, 0x42960000    # 75.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fFastMoveVelocitySideward:F

    .line 104
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    .line 105
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    .line 106
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    .line 108
    const/high16 v2, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    .line 109
    const/high16 v2, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    .line 113
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 114
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    .line 118
    const/high16 v2, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    .line 119
    const/high16 v2, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    .line 120
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 122
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    .line 123
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    .line 125
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    .line 126
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    .line 127
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    .line 131
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    .line 135
    const/high16 v2, 0x418c0000    # 17.5f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    .line 136
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    .line 137
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    .line 145
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    .line 149
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    .line 150
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 151
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    .line 155
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oDirectionsChangedEventRunnable:Ljava/lang/Runnable;

    .line 159
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportRunnable:Ljava/lang/Runnable;

    .line 160
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oStopAutodriveRunnable:Ljava/lang/Runnable;

    .line 163
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    .line 164
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bResumed:Z

    .line 165
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    .line 167
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bPreloadImages:Z

    .line 170
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    .line 172
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_nHighResSampleSize:I

    .line 173
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_nLowResSampleSize:I

    .line 174
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 177
    const/16 v2, 0x28

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    .line 178
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_fbAlphaGradient:Ljava/nio/FloatBuffer;

    .line 181
    const-string v2, "attribute vec4 a_vertex;\nattribute vec2 a_uvcoords;\nuniform mat4 u_MVPMatrix;\nuniform float u_alpha;\nvarying vec2 v_uvcoords;\nvarying float v_alpha;\nvoid main()\n{\ngl_Position = u_MVPMatrix * a_vertex;\nv_alpha = u_alpha;\nv_uvcoords = a_uvcoords;\n}\n"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_strVShader1:Ljava/lang/String;

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "const int gradientSize = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    const-string v3, "attribute float a_position;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 197
    const-string v3, "attribute vec4 a_vertex;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    const-string v3, "attribute vec2 a_uvcoords;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    const-string v3, "uniform mat4 u_MVPMatrix;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    const-string v3, "uniform float u_alphaGradient["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "];\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string v3, "uniform int u_p1;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    const-string v3, "uniform int u_p2;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 203
    const-string v3, "uniform int u_inverseGradient;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 204
    const-string v3, "varying vec2 v_uvcoords;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 205
    const-string v3, "varying float v_alpha;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    const-string v3, "float getAlpha(int pos)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 207
    const-string v3, "{\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 208
    const-string v3, "float fAlpha = 1.0;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    const-string v3, "if ( u_inverseGradient == 0 && pos <= u_p2)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    const-string v3, "fAlpha = u_alphaGradient[pos-u_p1];\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 211
    const-string v3, "else if ( u_inverseGradient == 1 && pos >= u_p1)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    const-string v3, "fAlpha = u_alphaGradient[u_p2-pos];\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 213
    const-string v3, "return fAlpha;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    const-string v3, "void main()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    const-string v3, "{\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 217
    const-string v3, "gl_Position = u_MVPMatrix * a_vertex;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 218
    const-string v3, "v_alpha = getAlpha(int(a_position));\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    const-string v3, "v_uvcoords = a_uvcoords;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_strVShader2:Ljava/lang/String;

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "const int gradientSize = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 224
    const-string v3, "attribute float a_position;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 225
    const-string v3, "attribute vec4 a_vertex;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    const-string v3, "attribute vec2 a_uvcoords;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    const-string v3, "uniform mat4 u_MVPMatrix;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    const-string v3, "uniform float u_alphaGradient["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "];\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    const-string v3, "uniform int u_p1;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    const-string v3, "uniform int u_p2;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 231
    const-string v3, "uniform float u_a;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    const-string v3, "uniform float u_b;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 233
    const-string v3, "varying vec2 v_uvcoords;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    const-string v3, "varying float v_alpha;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 235
    const-string v3, "float getAlpha(int pos)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    const-string v3, "{\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    const-string v3, "float fAlpha;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    const-string v3, "if ( pos >= u_p1 && pos <= u_p2 ) {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    const-string v3, "fAlpha = u_a * float(pos) + u_b;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    const-string v3, "if ( pos < u_p1 + gradientSize ) {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    const-string v3, "if ( u_p1 == 0 )\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    const-string v3, "fAlpha *= u_alphaGradient[pos-u_p1];\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    const-string v3, "else {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    const-string v3, "float fAlphaI = u_a * float(u_p1+gradientSize) + u_b;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 245
    const-string v3, "fAlpha = fAlphaI + (1.0 - fAlphaI) * u_alphaGradient[u_p1+gradientSize-pos-1];\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    const-string v3, "} else if ( pos > u_p2 - gradientSize ) {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    const-string v3, "if ( u_p1 == 0 ) {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    const-string v3, "float fAlphaI = u_a * float(u_p2-gradientSize) + u_b;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    const-string v3, "fAlpha = fAlphaI + (1.0 - fAlphaI) * u_alphaGradient[pos-u_p2+gradientSize-1];\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    const-string v3, "} else\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    const-string v3, "fAlpha *= u_alphaGradient[u_p2-pos];\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    const-string v3, "} else\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 255
    const-string v3, "fAlpha = 1.0;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 256
    const-string v3, "return fAlpha;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    const-string v3, "void main()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    const-string v3, "{\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 260
    const-string v3, "gl_Position = u_MVPMatrix * a_vertex;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 261
    const-string v3, "v_alpha = getAlpha(int(a_position));\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    const-string v3, "v_uvcoords = a_uvcoords;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_strVShader3:Ljava/lang/String;

    .line 266
    const-string v2, "precision mediump float;\nvarying vec2 v_uvcoords;\nvarying float v_alpha;\nuniform sampler2D u_texId;\nvoid main()\n{\ngl_FragColor = texture2D(u_texId, v_uvcoords);\ngl_FragColor.a = v_alpha;\n}\n"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_strFShader:Ljava/lang/String;

    .line 277
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_1:I

    .line 279
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_1:I

    .line 280
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_1:I

    .line 281
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iAlphaLoc_1:I

    .line 282
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_1:I

    .line 285
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    .line 286
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_2:I

    .line 287
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_2:I

    .line 288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_2:I

    .line 289
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_2:I

    .line 290
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_2:I

    .line 291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_2:I

    .line 292
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iInvGradLoc_2:I

    .line 293
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_2:I

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_3:I

    .line 298
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_3:I

    .line 299
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_3:I

    .line 300
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_3:I

    .line 301
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_3:I

    .line 302
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_3:I

    .line 303
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iALoc_3:I

    .line 304
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iBLoc_3:I

    .line 305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_3:I

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    .line 310
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    .line 311
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    .line 313
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    .line 315
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    .line 316
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    .line 317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 327
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    .line 342
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    .line 345
    new-instance v2, Landroid/opengl/GLSurfaceView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/voovio/sweep/SweepView;->addView(Landroid/view/View;)V

    .line 353
    new-instance v2, Lcom/voovio/sweep/ResourceManager;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/voovio/sweep/ResourceManager;-><init>(Lcom/voovio/sweep/ImageProvider;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 356
    new-instance v2, Lcom/voovio/voo3d/scenegraph/Camera3D;

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x461c4000    # 10000.0f

    invoke-direct/range {v2 .. v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;-><init>(IIFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    .line 359
    new-instance v2, Lcom/voovio/sweep/FrustumLimiter;

    invoke-direct {v2}, Lcom/voovio/sweep/FrustumLimiter;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    .line 362
    const/16 v2, 0x10

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    .line 365
    new-instance v2, Lcom/voovio/sweep/SweepView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/voovio/sweep/SweepView$1;-><init>(Lcom/voovio/sweep/SweepView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    .line 372
    new-instance v2, Lcom/voovio/sweep/SweepView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/voovio/sweep/SweepView$2;-><init>(Lcom/voovio/sweep/SweepView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    .line 379
    new-instance v2, Lcom/voovio/sweep/SweepView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/voovio/sweep/SweepView$3;-><init>(Lcom/voovio/sweep/SweepView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    .line 386
    new-instance v2, Lcom/voovio/sweep/SweepView$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/voovio/sweep/SweepView$4;-><init>(Lcom/voovio/sweep/SweepView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oDirectionsChangedEventRunnable:Ljava/lang/Runnable;

    .line 393
    new-instance v2, Lcom/voovio/sweep/SweepView$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/voovio/sweep/SweepView$5;-><init>(Lcom/voovio/sweep/SweepView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportRunnable:Ljava/lang/Runnable;

    .line 399
    new-instance v2, Lcom/voovio/sweep/SweepView$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/voovio/sweep/SweepView$6;-><init>(Lcom/voovio/sweep/SweepView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oStopAutodriveRunnable:Ljava/lang/Runnable;

    .line 406
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    .line 409
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    .line 410
    .local v9, "fM":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    new-array v8, v2, [F

    .line 411
    .local v8, "aAlphas":[F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    if-lt v10, v2, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 415
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 416
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 414
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_fbAlphaGradient:Ljava/nio/FloatBuffer;

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_fbAlphaGradient:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    .line 421
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    .line 422
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    .line 423
    return-void

    .line 412
    :cond_0
    const v2, -0x42b33333    # -0.05f

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x4005bf0a8b145769L    # Math.E

    const-wide v12, -0x403ccccccccccccdL    # -0.15

    int-to-float v11, v10

    sub-float/2addr v11, v9

    float-to-double v14, v11

    mul-double/2addr v12, v14

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v8, v10

    .line 411
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/SweepView$OnSweepViewListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/voovio/sweep/SweepView;)I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    return v0
.end method

.method static synthetic access$10(Lcom/voovio/sweep/SweepView;)I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nLowResSampleSize:I

    return v0
.end method

.method static synthetic access$11(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    return-void
.end method

.method static synthetic access$12(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->start()V

    return-void
.end method

.method static synthetic access$13(Lcom/voovio/sweep/SweepView;I)V
    .locals 0

    .prologue
    .line 1217
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V

    return-void
.end method

.method static synthetic access$15(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraValues()V

    return-void
.end method

.method static synthetic access$16(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    return-void
.end method

.method static synthetic access$17(Lcom/voovio/sweep/SweepView;)F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    return v0
.end method

.method static synthetic access$18(Lcom/voovio/sweep/SweepView;)F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    return v0
.end method

.method static synthetic access$19(Lcom/voovio/sweep/SweepView;F)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    return-void
.end method

.method static synthetic access$2(Lcom/voovio/sweep/SweepView;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    return v0
.end method

.method static synthetic access$20(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    .prologue
    .line 1316
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V

    return-void
.end method

.method static synthetic access$21(Lcom/voovio/sweep/SweepView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$22(Lcom/voovio/sweep/SweepView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$23(Lcom/voovio/sweep/SweepView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$3(Lcom/voovio/sweep/SweepView;)B
    .locals 1

    .prologue
    .line 327
    iget-byte v0, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    return v0
.end method

.method static synthetic access$4(Lcom/voovio/sweep/SweepView;Lcom/voovio/voo3d/view/Viewport;)V
    .locals 0

    .prologue
    .line 1330
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setGLViewport(Lcom/voovio/voo3d/view/Viewport;)V

    return-void
.end method

.method static synthetic access$5(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    .prologue
    .line 1635
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/voovio/sweep/SweepView;)Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    return v0
.end method

.method static synthetic access$7(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/ResourceManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/voovio/sweep/SweepView;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nHighResSampleSize:I

    return v0
.end method

.method static synthetic access$9(Lcom/voovio/sweep/SweepView;)Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;
    .locals 3
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p2, "ptPos"    # Lcom/voovio/voo3d/data/Vector3;
    .param p3, "vDir"    # Lcom/voovio/voo3d/data/Vector3;
    .param p4, "fFOV"    # F
    .param p5, "nType"    # I

    .prologue
    .line 825
    new-instance v1, Lcom/voovio/sweep/Node;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 826
    .local v1, "oNode":Lcom/voovio/sweep/Node;
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    new-instance v0, Lcom/voovio/sweep/Edge;

    invoke-direct {v0, v1, v1, p5}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    .line 829
    .local v0, "oEdge":Lcom/voovio/sweep/Edge;
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    .line 831
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    return-object v0
.end method

.method private computeAvailableDirections()V
    .locals 3

    .prologue
    .line 845
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    .line 847
    .local v0, "bAvailableDirections":B
    iget-byte v1, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    if-eq v0, v1, :cond_0

    .line 848
    iput-byte v0, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    .line 850
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oDirectionsChangedEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 853
    :cond_0
    return-void
.end method

.method private computeCurrentPosition()V
    .locals 4

    .prologue
    .line 839
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v0, v0, Lcom/voovio/sweep/Node;->m_nPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v2, v2, Lcom/voovio/sweep/Node;->m_nPosition:I

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 840
    return-void
.end method

.method private computePath()V
    .locals 32

    .prologue
    .line 558
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 562
    const/16 v22, 0x0

    .local v22, "oNode0":Lcom/voovio/sweep/Node;
    const/16 v23, 0x0

    .line 563
    .local v23, "oNode1":Lcom/voovio/sweep/Node;
    const/16 v20, 0x0

    .line 564
    .local v20, "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v5, 0x0

    .local v5, "oVoovio0":Lcom/voovio/sweep/Voovio;
    const/16 v25, 0x0

    .line 565
    .local v25, "oVoovio1":Lcom/voovio/sweep/Voovio;
    const/16 v24, 0x0

    .local v24, "oPrevTransition":Lcom/voovio/sweep/Transition;
    const/16 v21, 0x0

    .line 567
    .local v21, "oNextTransition":Lcom/voovio/sweep/Transition;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v6

    .line 568
    .local v6, "ptPos":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v28

    .line 570
    .local v28, "vDir":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v4, v4, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    int-to-float v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float v16, v4, v7

    .line 571
    .local v16, "fW2":F
    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v7, v7, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v7, v7

    mul-float/2addr v4, v7

    float-to-double v8, v4

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v7, v7, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    mul-float/2addr v4, v7

    const v7, 0x3c8efa35

    mul-float/2addr v4, v7

    float-to-double v0, v4

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->tan(D)D

    move-result-wide v30

    div-double v8, v8, v30

    double-to-float v12, v8

    .line 572
    .local v12, "fF":F
    div-float v4, v16, v12

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v13, v8

    .line 574
    .local v13, "fFovH2":F
    new-instance v26, Lcom/voovio/voo3d/data/Vector3;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move/from16 v0, v16

    neg-float v8, v0

    move-object/from16 v0, v26

    invoke-direct {v0, v4, v7, v8}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    .line 575
    .local v26, "ptLeft":Lcom/voovio/voo3d/data/Vector3;
    new-instance v27, Lcom/voovio/voo3d/data/Vector3;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-direct {v0, v4, v7, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    .line 577
    .local v27, "ptRight":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 579
    .local v19, "nVoovios":I
    const/4 v4, 0x1

    move/from16 v0, v19

    if-le v0, v4, :cond_9

    .line 580
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 796
    .end local v17    # "i":I
    :goto_1
    invoke-static {v6}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 797
    invoke-static/range {v28 .. v28}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 800
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    .line 801
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 802
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    .line 804
    const/high16 v14, 0x42700000    # 60.0f

    .line 806
    .local v14, "fMultiplier":F
    const/16 v20, 0x0

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 810
    .local v18, "nEdges":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    .line 818
    if-eqz v20, :cond_0

    .line 819
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v4, v4, Lcom/voovio/sweep/Node;->m_nPosition:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    .line 820
    :cond_0
    return-void

    .line 581
    .end local v14    # "fMultiplier":F
    .end local v18    # "nEdges":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    check-cast v5, Lcom/voovio/sweep/Voovio;

    .line 582
    .restart local v5    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v4, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v7, 0x1

    aget-object v24, v4, v7

    .line 583
    iget-object v4, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v7, 0x0

    aget-object v21, v4, v7

    .line 585
    if-eqz v21, :cond_7

    .line 586
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v7, 0x1

    aget-object v25, v4, v7

    .line 588
    invoke-virtual/range {v21 .. v21}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 590
    if-eqz v24, :cond_2

    .line 591
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    const/4 v7, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v4}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 615
    :goto_3
    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v20

    .line 616
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    .line 617
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual/range {v21 .. v21}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v10

    .line 621
    .local v10, "fAngleY":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v15, v10, v4

    .line 624
    .local v15, "fSign":F
    new-instance v22, Lcom/voovio/sweep/Node;

    .end local v22    # "oNode0":Lcom/voovio/sweep/Node;
    iget-object v4, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6, v4, v7}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 625
    .restart local v22    # "oNode0":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    const/4 v4, 0x0

    cmpg-float v4, v15, v4

    if-gez v4, :cond_3

    move-object/from16 v4, v26

    :goto_4
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 628
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    .line 629
    invoke-virtual/range {v28 .. v28}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 630
    mul-float v4, v15, v13

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    .line 632
    new-instance v23, Lcom/voovio/sweep/Node;

    .end local v23    # "oNode1":Lcom/voovio/sweep/Node;
    iget v4, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v5, v6, v1, v4}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 633
    .restart local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v20, Lcom/voovio/sweep/Edge;

    .end local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    .line 636
    .restart local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    new-instance v22, Lcom/voovio/sweep/Node;

    .end local v22    # "oNode0":Lcom/voovio/sweep/Node;
    iget v4, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-direct {v0, v5, v6, v1, v4}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 643
    .restart local v22    # "oNode0":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    const/4 v7, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v4}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 647
    const/4 v4, 0x0

    cmpg-float v4, v15, v4

    if-gez v4, :cond_4

    move-object/from16 v4, v27

    :goto_5
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 648
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    .line 649
    invoke-virtual/range {v28 .. v28}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 650
    neg-float v4, v15

    mul-float/2addr v4, v13

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    .line 652
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 653
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 655
    new-instance v23, Lcom/voovio/sweep/Node;

    .end local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, v25

    iget v4, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 656
    .restart local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    new-instance v20, Lcom/voovio/sweep/Edge;

    .end local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    .line 659
    .restart local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    .line 660
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    const/4 v7, 0x0

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 667
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    const/4 v7, 0x0

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 669
    new-instance v22, Lcom/voovio/sweep/Node;

    .end local v22    # "oNode0":Lcom/voovio/sweep/Node;
    move-object/from16 v0, v25

    iget v4, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 670
    .restart local v22    # "oNode0":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v23, Lcom/voovio/sweep/Node;

    .end local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v25

    iget v7, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v6, v4, v7}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 673
    .restart local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    new-instance v20, Lcom/voovio/sweep/Edge;

    .end local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    .line 676
    .restart local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .end local v10    # "fAngleY":F
    .end local v15    # "fSign":F
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 593
    :cond_2
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v7, 0x0

    aget-object v4, v4, v7

    const/4 v7, 0x0

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v4}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_3

    .restart local v10    # "fAngleY":F
    .restart local v15    # "fSign":F
    :cond_3
    move-object/from16 v4, v27

    .line 627
    goto/16 :goto_4

    :cond_4
    move-object/from16 v4, v26

    .line 647
    goto/16 :goto_5

    .line 682
    .end local v10    # "fAngleY":F
    .end local v15    # "fSign":F
    :cond_5
    if-eqz v24, :cond_6

    .line 684
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    const/4 v7, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v4}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 691
    :goto_7
    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v20

    .line 692
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    .line 693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v22, Lcom/voovio/sweep/Node;

    .end local v22    # "oNode0":Lcom/voovio/sweep/Node;
    iget-object v4, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6, v4, v7}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 698
    .restart local v22    # "oNode0":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance v23, Lcom/voovio/sweep/Node;

    .end local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v7, 0x0

    aget-object v4, v4, v7

    const/4 v7, 0x0

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v4, v7, v8}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 701
    .restart local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    new-instance v20, Lcom/voovio/sweep/Edge;

    .end local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    .line 704
    .restart local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    new-instance v22, Lcom/voovio/sweep/Node;

    .end local v22    # "oNode0":Lcom/voovio/sweep/Node;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v7, 0x0

    aget-object v4, v4, v7

    const/4 v7, 0x0

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v4, v7, v8}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 711
    .restart local v22    # "oNode0":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v23, Lcom/voovio/sweep/Node;

    .end local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v7, 0x0

    aget-object v4, v4, v7

    const/4 v7, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v25

    iget v8, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4, v7, v8}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 714
    .restart local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance v20, Lcom/voovio/sweep/Edge;

    .end local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    .line 717
    .restart local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    .line 718
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 720
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 687
    :cond_6
    iget-object v4, v5, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v4}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_7

    .line 724
    :cond_7
    invoke-virtual/range {v24 .. v24}, Lcom/voovio/sweep/Transition;->isTranslation()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 726
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    const/4 v7, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v4}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 729
    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v20

    .line 730
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    new-instance v22, Lcom/voovio/sweep/Node;

    .end local v22    # "oNode0":Lcom/voovio/sweep/Node;
    iget-object v4, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6, v4, v7}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 736
    .restart local v22    # "oNode0":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    iget v4, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v7, 0x43160000    # 150.0f

    add-float/2addr v4, v7

    iput v4, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 739
    new-instance v23, Lcom/voovio/sweep/Node;

    .end local v23    # "oNode1":Lcom/voovio/sweep/Node;
    iget-object v4, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6, v4, v7}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 740
    .restart local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    new-instance v20, Lcom/voovio/sweep/Edge;

    .end local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    .line 743
    .restart local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v20

    .line 750
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 757
    :cond_8
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    const/4 v7, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v4}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 759
    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v20

    .line 760
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 767
    .end local v17    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    check-cast v5, Lcom/voovio/sweep/Voovio;

    .line 768
    .restart local v5    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v4, v5, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v4}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 771
    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v20

    .line 772
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    new-instance v22, Lcom/voovio/sweep/Node;

    .end local v22    # "oNode0":Lcom/voovio/sweep/Node;
    iget-object v4, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6, v4, v7}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 778
    .restart local v22    # "oNode0":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    iget v4, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v7, 0x43960000    # 300.0f

    add-float/2addr v4, v7

    iput v4, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 781
    new-instance v23, Lcom/voovio/sweep/Node;

    .end local v23    # "oNode1":Lcom/voovio/sweep/Node;
    iget-object v4, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6, v4, v7}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    .line 782
    .restart local v23    # "oNode1":Lcom/voovio/sweep/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    new-instance v20, Lcom/voovio/sweep/Edge;

    .end local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    .line 785
    .restart local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v5, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v20

    .line 791
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    .line 792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 811
    .restart local v14    # "fMultiplier":F
    .restart local v17    # "i":I
    .restart local v18    # "nEdges":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    check-cast v20, Lcom/voovio/sweep/Edge;

    .line 812
    .restart local v20    # "oEdge":Lcom/voovio/sweep/Edge;
    move-object/from16 v0, v20

    iget v4, v0, Lcom/voovio/sweep/Edge;->m_nType:I

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    .line 814
    .local v11, "fAutodriveVelocity":F
    :goto_8
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    if-nez v17, :cond_c

    const/4 v4, 0x0

    :goto_9
    iput v4, v7, Lcom/voovio/sweep/Node;->m_nPosition:I

    .line 815
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v7, v7, Lcom/voovio/sweep/Node;->m_nPosition:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/voovio/sweep/Edge;->m_fValue:F

    mul-float/2addr v8, v14

    div-float/2addr v8, v11

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v4, Lcom/voovio/sweep/Node;->m_nPosition:I

    .line 810
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 812
    .end local v11    # "fAutodriveVelocity":F
    :cond_b
    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    goto :goto_8

    .line 814
    .restart local v11    # "fAutodriveVelocity":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    add-int/lit8 v8, v17, -0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Edge;

    iget-object v4, v4, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v4, v4, Lcom/voovio/sweep/Node;->m_nPosition:I

    goto :goto_9
.end method

.method private drawScene(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 20
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 1979
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bResumed:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v2, :cond_1

    .line 1980
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 1982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v2, v4, v7}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    .line 1984
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bResumed:Z

    .line 1987
    :cond_1
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eqz v2, :cond_3

    .line 1990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v0, v2, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v16, v0

    .line 1991
    .local v16, "oVoovio0":Lcom/voovio/sweep/Voovio;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget-object v0, v2, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v17, v0

    .line 1993
    .local v17, "oVoovio1":Lcom/voovio/sweep/Voovio;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v2, v2, Lcom/voovio/sweep/Edge;->m_nType:I

    if-nez v2, :cond_5

    .line 1994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_4

    .line 1995
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V

    .line 1997
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1998
    const/16 v2, 0x302

    const/16 v4, 0x303

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 2000
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V

    .line 2002
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 2068
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    if-eqz v2, :cond_3

    .line 2069
    const/high16 v2, 0x418c0000    # 17.5f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    .line 2070
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    .line 2071
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    .line 2073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v2, :cond_2

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v4, Lcom/voovio/sweep/SweepView$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/voovio/sweep/SweepView$11;-><init>(Lcom/voovio/sweep/SweepView;)V

    .line 2078
    const-wide/16 v10, 0x10

    .line 2074
    invoke-virtual {v2, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2081
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    .line 2084
    .end local v16    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .end local v17    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_3
    return-void

    .line 2008
    .restart local v16    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .restart local v17    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V

    goto :goto_0

    .line 2012
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_6

    .line 2013
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V

    .line 2015
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 2016
    const/16 v2, 0x302

    const/16 v4, 0x303

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 2018
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v4, v4, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawTransitionOverlappingArea(Lcom/voovio/sweep/Voovio;FLcom/voovio/sweep/Transition;)V

    .line 2020
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0

    .line 2023
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V

    .line 2025
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 2026
    const/16 v2, 0x302

    const/16 v4, 0x303

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget v0, v2, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v19, v0

    .line 2032
    .local v19, "slices":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v4, 0x1

    aget-object v15, v2, v4

    .line 2033
    .local v15, "oPrevTransition":Lcom/voovio/sweep/Transition;
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v15, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 2034
    .local v3, "oPrevVoovio":Lcom/voovio/sweep/Voovio;
    :goto_1
    if-eqz v3, :cond_7

    .line 2035
    invoke-virtual {v15}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_a

    const/4 v13, 0x1

    .line 2036
    .local v13, "bIsLeft":Z
    :goto_2
    iget v2, v15, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v18, v0

    .line 2037
    .local v18, "overlapping":I
    if-eqz v13, :cond_b

    .line 2038
    sub-int v5, v19, v18

    .line 2039
    .local v5, "p1":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    add-int v6, v5, v2

    .line 2045
    .local v6, "p2":I
    :goto_3
    iget-object v4, v3, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    if-eqz v13, :cond_c

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/voovio/sweep/SweepView;->drawAlphaGradientStrip(Lcom/voovio/sweep/Voovio;[FIII)V

    .line 2048
    .end local v5    # "p1":I
    .end local v6    # "p2":I
    .end local v13    # "bIsLeft":Z
    .end local v18    # "overlapping":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v4, 0x0

    aget-object v14, v2, v4

    .line 2049
    .local v14, "oNextTransition":Lcom/voovio/sweep/Transition;
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v14, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v4, 0x1

    aget-object v8, v2, v4

    .line 2050
    .local v8, "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :goto_5
    if-eqz v8, :cond_8

    .line 2051
    invoke-virtual {v14}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_e

    const/4 v13, 0x1

    .line 2052
    .restart local v13    # "bIsLeft":Z
    :goto_6
    iget v2, v14, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v18, v0

    .line 2053
    .restart local v18    # "overlapping":I
    if-eqz v13, :cond_f

    .line 2054
    sub-int v5, v19, v18

    .line 2055
    .restart local v5    # "p1":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    add-int v6, v5, v2

    .line 2061
    .restart local v6    # "p2":I
    :goto_7
    iget-object v9, v8, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    if-eqz v13, :cond_10

    const/4 v12, 0x1

    :goto_8
    move-object/from16 v7, p0

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/voovio/sweep/SweepView;->drawAlphaGradientStrip(Lcom/voovio/sweep/Voovio;[FIII)V

    .line 2064
    .end local v5    # "p1":I
    .end local v6    # "p2":I
    .end local v13    # "bIsLeft":Z
    .end local v18    # "overlapping":I
    :cond_8
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_0

    .line 2033
    .end local v3    # "oPrevVoovio":Lcom/voovio/sweep/Voovio;
    .end local v8    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    .end local v14    # "oNextTransition":Lcom/voovio/sweep/Transition;
    :cond_9
    const/4 v3, 0x0

    goto :goto_1

    .line 2035
    .restart local v3    # "oPrevVoovio":Lcom/voovio/sweep/Voovio;
    :cond_a
    const/4 v13, 0x0

    goto :goto_2

    .line 2041
    .restart local v13    # "bIsLeft":Z
    .restart local v18    # "overlapping":I
    :cond_b
    move/from16 v6, v18

    .line 2042
    .restart local v6    # "p2":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    sub-int v5, v6, v2

    .restart local v5    # "p1":I
    goto :goto_3

    .line 2045
    :cond_c
    const/4 v7, 0x0

    goto :goto_4

    .line 2049
    .end local v5    # "p1":I
    .end local v6    # "p2":I
    .end local v13    # "bIsLeft":Z
    .end local v18    # "overlapping":I
    .restart local v14    # "oNextTransition":Lcom/voovio/sweep/Transition;
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 2051
    .restart local v8    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :cond_e
    const/4 v13, 0x0

    goto :goto_6

    .line 2057
    .restart local v13    # "bIsLeft":Z
    .restart local v18    # "overlapping":I
    :cond_f
    move/from16 v6, v18

    .line 2058
    .restart local v6    # "p2":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    sub-int v5, v6, v2

    .restart local v5    # "p1":I
    goto :goto_7

    .line 2061
    :cond_10
    const/4 v12, 0x0

    goto :goto_8
.end method

.method private fillRenderMatrices()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2089
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v2

    .line 2090
    .local v2, "oTempMatrix":Lcom/voovio/voo3d/data/Matrix4;
    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    .line 2091
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    .line 2092
    invoke-static {v2}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 2094
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v0, v3, v5

    .line 2095
    .local v0, "oNextTransition":Lcom/voovio/sweep/Transition;
    if-eqz v0, :cond_0

    .line 2096
    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    invoke-virtual {v3, v4}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    .line 2098
    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v3, v6

    .line 2099
    .local v1, "oPrevTransition":Lcom/voovio/sweep/Transition;
    if-eqz v1, :cond_1

    .line 2100
    iget-object v3, v1, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v4, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    invoke-virtual {v3, v4}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    .line 2101
    :cond_1
    return-void
.end method

.method private getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B
    .locals 7
    .param p1, "oSrcEdge"    # Lcom/voovio/sweep/Edge;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 858
    const/4 v0, 0x0

    .line 860
    .local v0, "bAvailableDirections":B
    if-eqz p1, :cond_3

    .line 861
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 864
    .local v1, "nLastIndex":I
    move-object v2, p1

    .line 866
    .local v2, "oEdge":Lcom/voovio/sweep/Edge;
    :goto_0
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fValue:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-lt v3, v1, :cond_4

    .line 870
    :cond_0
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-eq v3, v1, :cond_1

    .line 871
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nType:I

    if-ne v3, v6, :cond_6

    .line 872
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    .line 873
    const/4 v3, 0x4

    int-to-byte v0, v3

    .line 881
    :cond_1
    :goto_1
    shl-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    .line 884
    move-object v2, p1

    .line 886
    :goto_2
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fValue:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-gtz v3, :cond_7

    .line 890
    :cond_2
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-eqz v3, :cond_3

    .line 891
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nType:I

    if-ne v3, v6, :cond_9

    .line 892
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8

    .line 893
    or-int/lit8 v3, v0, 0x8

    int-to-byte v0, v3

    .line 901
    .end local v1    # "nLastIndex":I
    .end local v2    # "oEdge":Lcom/voovio/sweep/Edge;
    :cond_3
    :goto_3
    return v0

    .line 867
    .restart local v1    # "nLastIndex":I
    .restart local v2    # "oEdge":Lcom/voovio/sweep/Edge;
    :cond_4
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    iget v4, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "oEdge":Lcom/voovio/sweep/Edge;
    check-cast v2, Lcom/voovio/sweep/Edge;

    .restart local v2    # "oEdge":Lcom/voovio/sweep/Edge;
    goto :goto_0

    .line 874
    :cond_5
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 875
    const/16 v3, 0x8

    int-to-byte v0, v3

    .line 876
    goto :goto_1

    .line 877
    :cond_6
    int-to-byte v0, v6

    goto :goto_1

    .line 887
    :cond_7
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    iget v4, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "oEdge":Lcom/voovio/sweep/Edge;
    check-cast v2, Lcom/voovio/sweep/Edge;

    .restart local v2    # "oEdge":Lcom/voovio/sweep/Edge;
    goto :goto_2

    .line 894
    :cond_8
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 895
    or-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    .line 896
    goto :goto_3

    .line 897
    :cond_9
    or-int/lit8 v3, v0, 0x2

    int-to-byte v0, v3

    goto :goto_3
.end method

.method private getCurrentCameraDirection(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 3
    .param p1, "vDir"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    const/4 v2, 0x0

    .line 1056
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v0, v0, Lcom/voovio/sweep/Node;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p1, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1057
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_fAngle01X:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_fAngle01X:F

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v1, v1, Lcom/voovio/sweep/Edge;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    .line 1061
    :cond_1
    return-void
.end method

.method private getNextKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;
    .locals 5
    .param p1, "oEdge"    # Lcom/voovio/sweep/Edge;

    .prologue
    .line 1597
    const/4 v1, 0x0

    .line 1599
    .local v1, "oNextKeyEdge":Lcom/voovio/sweep/Edge;
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1600
    .local v2, "totalEdges":I
    iget v3, p1, Lcom/voovio/sweep/Edge;->m_nIndex:I

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_1

    .line 1601
    iget v0, p1, Lcom/voovio/sweep/Edge;->m_nIndex:I

    .line 1603
    .local v0, "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1604
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "oNextKeyEdge":Lcom/voovio/sweep/Edge;
    check-cast v1, Lcom/voovio/sweep/Edge;

    .line 1605
    .restart local v1    # "oNextKeyEdge":Lcom/voovio/sweep/Edge;
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_1

    iget-boolean v3, v1, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    if-eqz v3, :cond_0

    .line 1608
    .end local v0    # "index":I
    :cond_1
    return-object v1
.end method

.method private getPrevKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;
    .locals 3
    .param p1, "oEdge"    # Lcom/voovio/sweep/Edge;

    .prologue
    .line 1614
    const/4 v1, 0x0

    .line 1616
    .local v1, "oPrevKeyEdge":Lcom/voovio/sweep/Edge;
    iget v2, p1, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-lez v2, :cond_1

    .line 1617
    iget v0, p1, Lcom/voovio/sweep/Edge;->m_nIndex:I

    .line 1619
    .local v0, "index":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1620
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "oPrevKeyEdge":Lcom/voovio/sweep/Edge;
    check-cast v1, Lcom/voovio/sweep/Edge;

    .line 1621
    .restart local v1    # "oPrevKeyEdge":Lcom/voovio/sweep/Edge;
    if-lez v0, :cond_1

    iget-boolean v2, v1, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    if-eqz v2, :cond_0

    .line 1624
    .end local v0    # "index":I
    :cond_1
    return-object v1
.end method

.method private setAutodrive(Z)V
    .locals 6
    .param p1, "bAutodrive"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v5, 0x42652ee0

    .line 1636
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 1637
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1638
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    .line 1641
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->hasAutodrive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1642
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 1643
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 1645
    const/16 v3, 0xc

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    .line 1646
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    .line 1648
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    .line 1649
    .local v0, "vDstDir":Lcom/voovio/voo3d/data/Vector3;
    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->getCurrentCameraDirection(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1651
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v4, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v0, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    .line 1652
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v0, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    .line 1654
    invoke-static {v0}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1657
    iput v2, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    .line 1658
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 1660
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v3, :cond_1

    .line 1661
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    :goto_0
    invoke-interface {v3, v1}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    .line 1665
    .end local v0    # "vDstDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eq p1, v1, :cond_2

    .line 1666
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    invoke-interface {v1, p1}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onAutodriveStateChanged(Z)V

    .line 1668
    :cond_2
    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    .line 1669
    return-void

    .restart local v0    # "vDstDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_3
    move v1, v2

    .line 1661
    goto :goto_0
.end method

.method private setCurrentEdge(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1218
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    .line 1220
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Edge;

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    .line 1221
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    .line 1223
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v1, v1, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v1, v1, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    if-eq v0, v1, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v0, v0, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 1225
    :cond_0
    return-void

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    goto :goto_0
.end method

.method private setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 4
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 1233
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 1236
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1239
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    if-nez v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 1243
    :cond_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->fillRenderMatrices()V

    .line 1244
    return-void
.end method

.method private setGLViewport(Lcom/voovio/voo3d/view/Viewport;)V
    .locals 4
    .param p1, "oViewport"    # Lcom/voovio/voo3d/view/Viewport;

    .prologue
    .line 1332
    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1333
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v0, :cond_0

    .line 1051
    :goto_0
    return-void

    .line 1035
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    .line 1038
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1040
    :try_start_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    .line 1042
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    .line 1043
    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 1044
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V

    .line 1046
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraValues()V

    .line 1047
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    .line 1049
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->startAutodriveIfNeeded()V

    .line 1038
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startAutodriveIfNeeded()V
    .locals 4

    .prologue
    .line 1203
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    if-ltz v0, :cond_0

    .line 1204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    .line 1205
    new-instance v0, Lcom/voovio/sweep/SweepView$10;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$10;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    .line 1211
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1213
    :cond_0
    return-void
.end method

.method private updateCameraValues()V
    .locals 8

    .prologue
    .line 1066
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    .line 1067
    .local v1, "ptPos":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    .line 1070
    .local v2, "vDir":Lcom/voovio/voo3d/data/Vector3;
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v3, v3, Lcom/voovio/sweep/Node;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1071
    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_vV01:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 1072
    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_vV01:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 1073
    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_vV01:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 1076
    invoke-direct {p0, v2}, Lcom/voovio/sweep/SweepView;->getCurrentCameraDirection(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1079
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_fFOV:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v4, v4, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v4, v4, Lcom/voovio/sweep/Node;->m_fFOV:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 1080
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_fFOV:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v5, v5, Lcom/voovio/sweep/Node;->m_fFOV:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v6, v6, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v6, v6, Lcom/voovio/sweep/Node;->m_fFOV:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 1082
    .local v0, "fFOV":F
    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    .line 1083
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v3, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 1087
    .end local v0    # "fFOV":F
    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v4, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 1088
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 1090
    invoke-static {v1}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1091
    invoke-static {v2}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1092
    return-void
.end method

.method private updateCameraViewport()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1249
    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->getWidth()I

    move-result v1

    .line 1250
    .local v1, "clientWidth":I
    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->getHeight()I

    move-result v0

    .line 1253
    .local v0, "clientHeight":I
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v2

    .line 1254
    .local v2, "oViewport":Lcom/voovio/voo3d/view/Viewport;
    invoke-virtual {v2, v4}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    .line 1255
    invoke-virtual {v2, v4}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    .line 1256
    invoke-virtual {v2, v1}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    .line 1257
    invoke-virtual {v2, v0}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    .line 1258
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v3, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setViewport(Lcom/voovio/voo3d/view/Viewport;)V

    .line 1261
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V

    .line 1262
    return-void
.end method

.method private updateGLViewport(Z)V
    .locals 2
    .param p1, "bQueueEvent"    # Z

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->updateViewportForCamera(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 1319
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    if-eqz v0, :cond_0

    .line 1320
    if-eqz p1, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1326
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setGLViewport(Lcom/voovio/voo3d/view/Viewport;)V

    goto :goto_0
.end method

.method private updateScene()V
    .locals 14

    .prologue
    const v13, 0x3c8efa35

    const/4 v12, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1697
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    if-nez v7, :cond_16

    .line 1698
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float v0, v7, v8

    .line 1700
    .local v0, "fFactor":F
    iget-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bFastMove:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v7, :cond_4

    :cond_0
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eqz v7, :cond_4

    .line 1701
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 1704
    .local v4, "maxIndex":I
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_fValue:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    if-ne v7, v8, :cond_6

    .line 1714
    :cond_2
    const/4 v3, 0x0

    .line 1715
    .local v3, "fVelocity":F
    iget-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bFastMove:Z

    if-eqz v7, :cond_9

    .line 1716
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_nType:I

    if-nez v7, :cond_8

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fFastMoveVelocityForward:F

    .line 1721
    :cond_3
    :goto_1
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    mul-float/2addr v7, v3

    mul-float v2, v7, v0

    .line 1723
    .local v2, "fValue":F
    const/4 v1, 0x0

    .line 1724
    .local v1, "fPrevEdgeFactor":F
    const/4 v5, 0x0

    .line 1725
    .local v5, "oPrevEdge":Lcom/voovio/sweep/Edge;
    :goto_2
    cmpl-float v7, v2, v10

    if-nez v7, :cond_c

    .line 1780
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V

    .line 1782
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraValues()V

    .line 1783
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    .line 1810
    .end local v0    # "fFactor":F
    .end local v1    # "fPrevEdgeFactor":F
    .end local v2    # "fValue":F
    .end local v3    # "fVelocity":F
    .end local v4    # "maxIndex":I
    .end local v5    # "oPrevEdge":Lcom/voovio/sweep/Edge;
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    if-eq v7, v8, :cond_5

    .line 1811
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x2

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1812
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    .line 1814
    :cond_5
    return-void

    .line 1705
    .restart local v0    # "fFactor":F
    .restart local v4    # "maxIndex":I
    :cond_6
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_7

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    if-ge v7, v4, :cond_7

    .line 1706
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    .line 1707
    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    goto :goto_0

    .line 1708
    :cond_7
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v11

    if-nez v7, :cond_1

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    if-lez v7, :cond_1

    .line 1709
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    .line 1710
    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    goto :goto_0

    .line 1716
    .restart local v3    # "fVelocity":F
    :cond_8
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fFastMoveVelocitySideward:F

    goto :goto_1

    .line 1717
    :cond_9
    iget-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v7, :cond_3

    .line 1718
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_nType:I

    if-nez v7, :cond_a

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    :goto_4
    goto :goto_1

    :cond_a
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    goto :goto_4

    .line 1728
    .restart local v1    # "fPrevEdgeFactor":F
    .restart local v2    # "fValue":F
    .restart local v5    # "oPrevEdge":Lcom/voovio/sweep/Edge;
    :cond_b
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_f

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    if-ge v7, v4, :cond_f

    .line 1729
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    .line 1730
    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 1727
    :cond_c
    :goto_5
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_fValue:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    if-ne v7, v8, :cond_b

    .line 1738
    :cond_d
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    if-ne v7, v8, :cond_10

    .line 1739
    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 1740
    iget-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v7, :cond_e

    .line 1741
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oStopAutodriveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1742
    :cond_e
    iput-boolean v12, p0, Lcom/voovio/sweep/SweepView;->m_bFastMove:Z

    .line 1744
    const/4 v2, 0x0

    .line 1745
    goto/16 :goto_2

    .line 1731
    :cond_f
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v11

    if-nez v7, :cond_c

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    if-lez v7, :cond_c

    .line 1732
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    .line 1733
    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    goto :goto_5

    .line 1748
    :cond_10
    if-eqz v5, :cond_11

    .line 1749
    iget v7, v5, Lcom/voovio/sweep/Edge;->m_nType:I

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v8, v8, Lcom/voovio/sweep/Edge;->m_nType:I

    if-ne v7, v8, :cond_12

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_12

    .line 1750
    sub-float v7, v1, v9

    iget v8, v5, Lcom/voovio/sweep/Edge;->m_fValue:F

    mul-float v2, v7, v8

    .line 1757
    :cond_11
    :goto_6
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v8, v8, Lcom/voovio/sweep/Edge;->m_fValue:F

    div-float v8, v2, v8

    add-float/2addr v7, v8

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 1760
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_14

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_14

    .line 1761
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 1762
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    .line 1764
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    .line 1765
    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    goto/16 :goto_2

    .line 1751
    :cond_12
    iget v7, v5, Lcom/voovio/sweep/Edge;->m_nType:I

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v8, v8, Lcom/voovio/sweep/Edge;->m_nType:I

    if-ne v7, v8, :cond_13

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_13

    .line 1752
    iget v7, v5, Lcom/voovio/sweep/Edge;->m_fValue:F

    mul-float v2, v1, v7

    goto :goto_6

    .line 1754
    :cond_13
    const/4 v2, 0x0

    goto :goto_6

    .line 1768
    :cond_14
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v11

    if-nez v7, :cond_15

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_15

    .line 1769
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 1770
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    .line 1772
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    .line 1773
    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    goto/16 :goto_2

    .line 1776
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1786
    .end local v0    # "fFactor":F
    .end local v1    # "fPrevEdgeFactor":F
    .end local v2    # "fValue":F
    .end local v3    # "fVelocity":F
    .end local v4    # "maxIndex":I
    .end local v5    # "oPrevEdge":Lcom/voovio/sweep/Edge;
    :cond_16
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 1787
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    if-ne v7, v8, :cond_17

    .line 1788
    iput v12, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    goto/16 :goto_3

    .line 1791
    :cond_17
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    invoke-virtual {v7, v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->addFov(F)V

    .line 1793
    invoke-direct {p0, v12}, Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V

    .line 1795
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v6

    .line 1797
    .local v6, "vDir":Lcom/voovio/voo3d/data/Vector3;
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v7, v7, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v7}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1798
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    mul-float/2addr v7, v13

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v7, v8}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 1799
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    mul-float/2addr v7, v13

    sget-object v8, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v7, v8}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 1801
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v8, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v9, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v10, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 1803
    invoke-static {v6}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 1805
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    goto/16 :goto_3
.end method

.method private updateViewportForCamera(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    .locals 24
    .param p1, "oCamera"    # Lcom/voovio/voo3d/scenegraph/Camera3D;

    .prologue
    .line 1267
    invoke-virtual/range {p1 .. p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v13

    .line 1269
    .local v13, "oViewport":Lcom/voovio/voo3d/view/Viewport;
    invoke-virtual/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->getWidth()I

    move-result v3

    .line 1270
    .local v3, "clientWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->getHeight()I

    move-result v2

    .line 1271
    .local v2, "clientHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v7

    .line 1273
    .local v7, "fFOV":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1274
    int-to-float v0, v3

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v9, v18, v19

    .line 1275
    .local v9, "fScaleX":F
    int-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v10, v18, v19

    .line 1276
    .local v10, "fScaleY":F
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1278
    .local v8, "fScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v14, v0

    .line 1279
    .local v14, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v11, v0

    .line 1282
    .local v11, "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v4, v18, v19

    .line 1283
    .local v4, "fAspectSweep":F
    int-to-float v0, v3

    move/from16 v18, v0

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 1284
    .local v5, "fAspectViewport":F
    const/high16 v18, 0x3f000000    # 0.5f

    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v18, v18, v19

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    div-float v6, v18, v19

    .line 1286
    .local v6, "fF":F
    cmpg-float v18, v4, v5

    if-gez v18, :cond_1

    .line 1287
    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v6

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v12, v0

    .line 1288
    .local v12, "h_new":F
    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, v4

    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v18, v18, v19

    div-float v18, v18, v12

    move/from16 v0, v18

    float-to-int v14, v0

    .line 1290
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1291
    move v11, v2

    .line 1301
    .end local v12    # "h_new":F
    :goto_0
    sub-int v18, v3, v14

    div-int/lit8 v16, v18, 0x2

    .line 1302
    .local v16, "x":I
    sub-int v18, v2, v11

    div-int/lit8 v17, v18, 0x2

    .line 1305
    .local v17, "y":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    .line 1306
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    .line 1307
    invoke-virtual {v13, v14}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    .line 1308
    invoke-virtual {v13, v11}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    .line 1310
    invoke-virtual/range {p1 .. p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updatePerspectiveProjection()V

    .line 1312
    .end local v4    # "fAspectSweep":F
    .end local v5    # "fAspectViewport":F
    .end local v6    # "fF":F
    .end local v8    # "fScale":F
    .end local v9    # "fScaleX":F
    .end local v10    # "fScaleY":F
    .end local v11    # "h":I
    .end local v14    # "w":I
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_0
    return-void

    .line 1294
    .restart local v4    # "fAspectSweep":F
    .restart local v5    # "fAspectViewport":F
    .restart local v6    # "fF":F
    .restart local v8    # "fScale":F
    .restart local v9    # "fScaleX":F
    .restart local v10    # "fScaleY":F
    .restart local v11    # "h":I
    .restart local v14    # "w":I
    :cond_1
    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v6

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    mul-float v18, v18, v4

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v15, v0

    .line 1295
    .local v15, "w_new":F
    mul-int v18, v3, v3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v19, v15, v4

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v11, v0

    .line 1297
    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1298
    move v14, v3

    goto :goto_0
.end method


# virtual methods
.method public autodriveDirectional(I)Z
    .locals 11
    .param p1, "dir"    # I

    .prologue
    const/high16 v10, -0x40800000    # -1.0f

    const v6, 0x7ffffffe

    const v5, -0x7fffffff

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1396
    iget-byte v9, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    shr-int/lit8 v9, v9, 0x4

    int-to-byte v1, v9

    .line 1397
    .local v1, "bNextDirection":B
    iget-byte v9, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    and-int/lit8 v9, v9, 0xf

    int-to-byte v2, v9

    .line 1399
    .local v2, "bPreviousDirection":B
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move v5, v8

    .line 1591
    :goto_1
    return v5

    .line 1401
    :pswitch_0
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_1

    move v5, v7

    .line 1402
    goto :goto_1

    .line 1403
    :cond_1
    invoke-virtual {p0, v6}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    .line 1407
    :pswitch_1
    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_2

    move v5, v7

    .line 1408
    goto :goto_1

    .line 1409
    :cond_2
    invoke-virtual {p0, v5}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    .line 1413
    :pswitch_2
    and-int/lit8 v9, v1, 0x4

    if-nez v9, :cond_3

    and-int/lit8 v9, v2, 0x4

    if-nez v9, :cond_3

    move v5, v7

    .line 1414
    goto :goto_1

    .line 1416
    :cond_3
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_6

    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_6

    .line 1417
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v9, v9, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-ge v7, v9, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    invoke-virtual {p0, v5}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    .line 1419
    :cond_6
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_7

    :goto_2
    invoke-virtual {p0, v6}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    :cond_7
    move v6, v5

    goto :goto_2

    .line 1424
    :pswitch_3
    and-int/lit8 v9, v1, 0x8

    if-nez v9, :cond_8

    and-int/lit8 v9, v2, 0x8

    if-nez v9, :cond_8

    move v5, v7

    .line 1425
    goto :goto_1

    .line 1427
    :cond_8
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_b

    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_b

    .line 1428
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v9, v9, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-ge v7, v9, :cond_a

    :cond_9
    move v5, v6

    :cond_a
    invoke-virtual {p0, v5}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    .line 1430
    :cond_b
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_c

    :goto_3
    invoke-virtual {p0, v6}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    :cond_c
    move v6, v5

    goto :goto_3

    .line 1435
    :pswitch_4
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_d

    move v5, v7

    .line 1436
    goto :goto_1

    .line 1438
    :cond_d
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    .line 1439
    .local v4, "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v3, 0x0

    .line 1441
    .local v3, "bStop":Z
    :cond_e
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getNextKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    .line 1442
    if-eqz v4, :cond_f

    .line 1443
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    .line 1444
    .local v0, "bAvailableDirections":B
    shr-int/lit8 v5, v0, 0x4

    int-to-byte v1, v5

    .line 1445
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_f

    .line 1446
    const/4 v3, 0x1

    .line 1448
    .end local v0    # "bAvailableDirections":B
    :cond_f
    if-eqz v4, :cond_10

    if-eqz v3, :cond_e

    .line 1450
    :cond_10
    if-eqz v4, :cond_0

    .line 1451
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1452
    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    .line 1453
    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    .line 1459
    .end local v3    # "bStop":Z
    .end local v4    # "oEdge":Lcom/voovio/sweep/Edge;
    :pswitch_5
    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_11

    move v5, v7

    .line 1460
    goto/16 :goto_1

    .line 1462
    :cond_11
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    .line 1463
    .restart local v4    # "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v3, 0x0

    .line 1465
    .restart local v3    # "bStop":Z
    :cond_12
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getPrevKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    .line 1466
    if-eqz v4, :cond_13

    .line 1467
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    .line 1468
    .restart local v0    # "bAvailableDirections":B
    and-int/lit8 v5, v0, 0xf

    int-to-byte v2, v5

    .line 1469
    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_13

    .line 1470
    const/4 v3, 0x1

    .line 1472
    .end local v0    # "bAvailableDirections":B
    :cond_13
    if-eqz v4, :cond_14

    if-eqz v3, :cond_12

    .line 1474
    :cond_14
    if-eqz v4, :cond_0

    .line 1475
    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1476
    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    .line 1477
    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    .line 1483
    .end local v3    # "bStop":Z
    .end local v4    # "oEdge":Lcom/voovio/sweep/Edge;
    :pswitch_6
    and-int/lit8 v5, v1, 0x4

    if-nez v5, :cond_15

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_15

    move v5, v7

    .line 1484
    goto/16 :goto_1

    .line 1486
    :cond_15
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    .line 1487
    .restart local v4    # "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v3, 0x0

    .line 1488
    .restart local v3    # "bStop":Z
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_17

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_17

    .line 1489
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    iget v5, v5, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v6, v6, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-ge v5, v6, :cond_1b

    .line 1490
    :cond_16
    const/4 v1, 0x4

    .line 1491
    const/4 v2, 0x0

    .line 1499
    :cond_17
    :goto_4
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1c

    .line 1501
    :cond_18
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getNextKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    .line 1502
    if-eqz v4, :cond_19

    .line 1503
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    .line 1504
    .restart local v0    # "bAvailableDirections":B
    shr-int/lit8 v5, v0, 0x4

    int-to-byte v1, v5

    .line 1505
    and-int/lit8 v5, v1, 0x4

    if-nez v5, :cond_19

    .line 1506
    const/4 v3, 0x1

    .line 1508
    .end local v0    # "bAvailableDirections":B
    :cond_19
    if-eqz v4, :cond_1a

    if-eqz v3, :cond_18

    .line 1510
    :cond_1a
    if-eqz v4, :cond_0

    .line 1511
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1512
    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    .line 1513
    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    .line 1494
    :cond_1b
    const/4 v1, 0x0

    .line 1495
    const/4 v2, 0x4

    goto :goto_4

    .line 1518
    :cond_1c
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getPrevKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    .line 1519
    if-eqz v4, :cond_1d

    .line 1520
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    .line 1521
    .restart local v0    # "bAvailableDirections":B
    and-int/lit8 v5, v0, 0xf

    int-to-byte v2, v5

    .line 1522
    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_1d

    .line 1523
    const/4 v3, 0x1

    .line 1525
    .end local v0    # "bAvailableDirections":B
    :cond_1d
    if-eqz v4, :cond_1e

    if-eqz v3, :cond_1c

    .line 1527
    :cond_1e
    if-eqz v4, :cond_0

    .line 1528
    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1529
    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    .line 1530
    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    .line 1537
    .end local v3    # "bStop":Z
    .end local v4    # "oEdge":Lcom/voovio/sweep/Edge;
    :pswitch_7
    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_1f

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_1f

    move v5, v7

    .line 1538
    goto/16 :goto_1

    .line 1540
    :cond_1f
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    .line 1541
    .restart local v4    # "oEdge":Lcom/voovio/sweep/Edge;
    const/4 v3, 0x0

    .line 1542
    .restart local v3    # "bStop":Z
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_21

    and-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_21

    .line 1543
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    iget v5, v5, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v6, v6, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-ge v5, v6, :cond_25

    .line 1544
    :cond_20
    const/16 v1, 0x8

    .line 1545
    const/4 v2, 0x0

    .line 1553
    :cond_21
    :goto_5
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    .line 1555
    :cond_22
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getNextKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    .line 1556
    if-eqz v4, :cond_23

    .line 1557
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    .line 1558
    .restart local v0    # "bAvailableDirections":B
    shr-int/lit8 v5, v0, 0x4

    int-to-byte v1, v5

    .line 1559
    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_23

    .line 1560
    const/4 v3, 0x1

    .line 1562
    .end local v0    # "bAvailableDirections":B
    :cond_23
    if-eqz v4, :cond_24

    if-eqz v3, :cond_22

    .line 1564
    :cond_24
    if-eqz v4, :cond_0

    .line 1565
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1566
    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    .line 1567
    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    .line 1548
    :cond_25
    const/4 v1, 0x0

    .line 1549
    const/16 v2, 0x8

    goto :goto_5

    .line 1572
    :cond_26
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getPrevKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    .line 1573
    if-eqz v4, :cond_27

    .line 1574
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    .line 1575
    .restart local v0    # "bAvailableDirections":B
    and-int/lit8 v5, v0, 0xf

    int-to-byte v2, v5

    .line 1576
    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_27

    .line 1577
    const/4 v3, 0x1

    .line 1579
    .end local v0    # "bAvailableDirections":B
    :cond_27
    if-eqz v4, :cond_28

    if-eqz v3, :cond_26

    .line 1581
    :cond_28
    if-eqz v4, :cond_0

    .line 1582
    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1583
    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    .line 1584
    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    .line 1399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public autodriveTo(I)Z
    .locals 9
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    .line 1350
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v7, :cond_0

    move v3, v5

    .line 1390
    :goto_0
    return v3

    .line 1353
    :cond_0
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Edge;

    .line 1354
    .local v1, "oStartEdge":Lcom/voovio/sweep/Edge;
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Edge;

    .line 1356
    .local v0, "oEndEdge":Lcom/voovio/sweep/Edge;
    const v7, 0x7ffffffe

    if-ne p1, v7, :cond_1

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eq v7, v0, :cond_1

    .line 1357
    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1358
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepView;->getNextKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v3

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    .line 1383
    :goto_1
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-ne v3, v4, :cond_8

    .line 1384
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    move v3, v5

    .line 1385
    goto :goto_0

    .line 1360
    :cond_1
    const v7, -0x7fffffff

    if-ne p1, v7, :cond_2

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eq v7, v1, :cond_2

    .line 1361
    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1362
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepView;->getPrevKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v3

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    goto :goto_1

    .line 1364
    :cond_2
    const v7, 0x7fffffff

    if-ne p1, v7, :cond_3

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eq v7, v0, :cond_3

    .line 1365
    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1366
    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    goto :goto_1

    .line 1368
    :cond_3
    const/high16 v7, -0x80000000

    if-ne p1, v7, :cond_4

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eq v7, v1, :cond_4

    .line 1369
    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1370
    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    goto :goto_1

    .line 1372
    :cond_4
    if-ltz p1, :cond_7

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v7}, Lcom/voovio/sweep/Sweep;->size()I

    move-result v7

    if-ge p1, v7, :cond_7

    .line 1373
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Edge;

    .line 1374
    .local v2, "oTargetEdge":Lcom/voovio/sweep/Edge;
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-ne v2, v7, :cond_5

    move v3, v5

    .line 1375
    goto :goto_0

    .line 1377
    :cond_5
    iget v7, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v8, v8, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-le v7, v8, :cond_6

    :goto_2
    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1378
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    goto :goto_1

    :cond_6
    move v3, v4

    .line 1377
    goto :goto_2

    .end local v2    # "oTargetEdge":Lcom/voovio/sweep/Edge;
    :cond_7
    move v3, v5

    .line 1381
    goto/16 :goto_0

    .line 1388
    :cond_8
    invoke-direct {p0, v6}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    move v3, v6

    .line 1390
    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 443
    iget-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    if-eqz v3, :cond_0

    .line 444
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 446
    :cond_0
    iput-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    .line 449
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v3, :cond_1

    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-lt v0, v1, :cond_4

    .line 459
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    invoke-virtual {v3, v6}, Lcom/voovio/sweep/VoovioGeometry;->DestroyVertexBuffer(Z)V

    .line 462
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    invoke-virtual {p0, v5}, Lcom/voovio/sweep/SweepView;->setSweep(Lcom/voovio/sweep/Sweep;)V

    .line 464
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    if-eqz v3, :cond_2

    .line 465
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v3}, Lcom/voovio/sweep/SweepOffScreen;->dispose()V

    .line 466
    iput-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    .line 469
    :cond_2
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    if-eqz v3, :cond_3

    .line 470
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v3}, Lcom/voovio/sweep/ResourceManager;->dispose()V

    .line 471
    iput-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 473
    :cond_3
    return-void

    .line 451
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_4
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    .line 452
    .local v2, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v3, v4, :cond_5

    .line 453
    invoke-virtual {v2, v6}, Lcom/voovio/sweep/Voovio;->DestroyHighResTexture(Z)V

    .line 454
    invoke-virtual {v2, v6}, Lcom/voovio/sweep/Voovio;->DestroyLowResTexture(Z)V

    .line 455
    sget v3, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 450
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public drawAlphaGradientStrip(Lcom/voovio/sweep/Voovio;[FIII)V
    .locals 7
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p2, "fM"    # [F
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "nInverseGradient"    # I

    .prologue
    .line 1937
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1939
    iget v0, p1, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    if-eqz v0, :cond_0

    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    .line 1940
    .local v6, "textureID":I
    :goto_0
    if-nez v6, :cond_1

    .line 1974
    :goto_1
    return-void

    .line 1939
    .end local v6    # "textureID":I
    :cond_0
    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    goto :goto_0

    .line 1945
    .restart local v6    # "textureID":I
    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1946
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_2:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1948
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_2:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1949
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_2:I

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1950
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iInvGradLoc_2:I

    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1953
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1954
    const/16 v0, 0xde1

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1955
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_2:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1958
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1959
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_2:I

    const/4 v1, 0x1

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1961
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1962
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_2:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1964
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1965
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_2:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1967
    const/4 v0, 0x1

    if-ne p5, v0, :cond_2

    .line 1968
    add-int/lit8 p3, p3, -0xc

    .line 1972
    :goto_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1973
    const/4 v0, 0x5

    sub-int v1, p4, p3

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v3, v3, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto/16 :goto_1

    .line 1970
    :cond_2
    add-int/lit8 p4, p4, 0xc

    goto :goto_2
.end method

.method public drawTransitionOverlappingArea(Lcom/voovio/sweep/Voovio;FLcom/voovio/sweep/Transition;)V
    .locals 20
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p2, "fFactor"    # F
    .param p3, "oTransition"    # Lcom/voovio/sweep/Transition;

    .prologue
    .line 1862
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1864
    move-object/from16 v0, p1

    iget v2, v0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    move/from16 v19, v0

    .line 1865
    .local v19, "textureID":I
    :goto_0
    if-nez v19, :cond_1

    .line 1932
    :goto_1
    return-void

    .line 1864
    .end local v19    # "textureID":I
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    move/from16 v19, v0

    goto :goto_0

    .line 1869
    .restart local v19    # "textureID":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_3:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v5, v5, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/VoovioGeometry;->Clip([F)I

    move-result v15

    .line 1872
    .local v15, "p":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget v0, v2, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v18, v0

    .line 1873
    .local v18, "slices":I
    move-object/from16 v0, p3

    iget v2, v0, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v14, v2

    .line 1877
    .local v14, "overlapping":I
    const/high16 v12, 0x3f000000    # 0.5f

    .local v12, "fFactor1":F
    const/high16 v13, 0x3f000000    # 0.5f

    .line 1878
    .local v13, "fFactor2":F
    move-object/from16 v0, p3

    iget v2, v0, Lcom/voovio/sweep/Transition;->m_fTurnDirection:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    .line 1879
    add-int/lit8 v2, v18, 0x1

    sub-int v16, v2, v14

    .line 1880
    .local v16, "p1":I
    add-int/lit8 v17, v18, 0x1

    .line 1881
    .local v17, "p2":I
    cmpg-float v2, p2, v12

    if-gtz v2, :cond_2

    .line 1882
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1883
    .local v10, "fAlpha1":F
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p2, v12

    sub-float v11, v2, v3

    .line 1905
    .local v11, "fAlpha2":F
    :goto_2
    sub-float v2, v11, v10

    sub-int v3, v17, v16

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 1906
    .local v8, "a":F
    move/from16 v0, v16

    int-to-float v2, v0

    mul-float/2addr v2, v8

    sub-float v9, v10, v2

    .line 1908
    .local v9, "b":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_3:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1909
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_3:I

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1910
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iALoc_3:I

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1911
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iBLoc_3:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1914
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1915
    const/16 v2, 0xde1

    move/from16 v0, v19

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1916
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_3:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1919
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_3:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1920
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_3:I

    const/4 v3, 0x1

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1922
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_3:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1923
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_3:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x4

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1925
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_3:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1926
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_3:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/16 v7, 0x10

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1928
    const v2, 0xffff

    and-int v16, v15, v2

    .line 1929
    shr-int/lit8 v17, v15, 0x10

    .line 1930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v2, v2, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v3, v16, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1931
    const/4 v2, 0x5

    sub-int v3, v17, v16

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    const/16 v4, 0x1403

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v5, v5, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v5, v5, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto/16 :goto_1

    .line 1884
    .end local v8    # "a":F
    .end local v9    # "b":F
    .end local v10    # "fAlpha1":F
    .end local v11    # "fAlpha2":F
    :cond_2
    cmpl-float v2, p2, v12

    if-lez v2, :cond_3

    cmpg-float v2, p2, v13

    if-gtz v2, :cond_3

    .line 1885
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1886
    .restart local v10    # "fAlpha1":F
    const/4 v11, 0x0

    .line 1887
    .restart local v11    # "fAlpha2":F
    goto/16 :goto_2

    .line 1888
    .end local v10    # "fAlpha1":F
    .end local v11    # "fAlpha2":F
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, p2, v13

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v13

    div-float/2addr v3, v4

    sub-float v10, v2, v3

    .line 1889
    .restart local v10    # "fAlpha1":F
    const/4 v11, 0x0

    .line 1891
    .restart local v11    # "fAlpha2":F
    goto/16 :goto_2

    .line 1892
    .end local v10    # "fAlpha1":F
    .end local v11    # "fAlpha2":F
    .end local v16    # "p1":I
    .end local v17    # "p2":I
    :cond_4
    const/16 v16, 0x0

    .line 1893
    .restart local v16    # "p1":I
    add-int/lit8 v17, v14, -0x1

    .line 1894
    .restart local v17    # "p2":I
    cmpg-float v2, p2, v12

    if-gtz v2, :cond_5

    .line 1895
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p2, v12

    sub-float v10, v2, v3

    .line 1896
    .restart local v10    # "fAlpha1":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1897
    .restart local v11    # "fAlpha2":F
    goto/16 :goto_2

    .end local v10    # "fAlpha1":F
    .end local v11    # "fAlpha2":F
    :cond_5
    cmpl-float v2, p2, v12

    if-lez v2, :cond_6

    cmpg-float v2, p2, v13

    if-gtz v2, :cond_6

    .line 1898
    const/4 v10, 0x0

    .line 1899
    .restart local v10    # "fAlpha1":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1900
    .restart local v11    # "fAlpha2":F
    goto/16 :goto_2

    .line 1901
    .end local v10    # "fAlpha1":F
    .end local v11    # "fAlpha2":F
    :cond_6
    const/4 v10, 0x0

    .line 1902
    .restart local v10    # "fAlpha1":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, p2, v13

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v13

    div-float/2addr v3, v4

    sub-float v11, v2, v3

    .restart local v11    # "fAlpha2":F
    goto/16 :goto_2
.end method

.method public drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V
    .locals 10
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p2, "fAlpha"    # F
    .param p3, "fM"    # [F

    .prologue
    .line 1819
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1821
    iget v0, p1, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    if-eqz v0, :cond_0

    iget v9, p1, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    .line 1822
    .local v9, "textureID":I
    :goto_0
    if-nez v9, :cond_1

    .line 1857
    :goto_1
    return-void

    .line 1821
    .end local v9    # "textureID":I
    :cond_0
    iget v9, p1, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    goto :goto_0

    .line 1827
    .restart local v9    # "textureID":I
    :cond_1
    if-eqz p3, :cond_2

    .line 1829
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1830
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1832
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/VoovioGeometry;->Clip([F)I

    move-result v6

    .line 1839
    .local v6, "p":I
    :goto_2
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iAlphaLoc_1:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1842
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1843
    const/16 v0, 0xde1

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1844
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_1:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1847
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1848
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_1:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1850
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1851
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_1:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1853
    const v0, 0xffff

    and-int v7, v6, v0

    .line 1854
    .local v7, "p1":I
    shr-int/lit8 v8, v6, 0x10

    .line 1855
    .local v8, "p2":I
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v7, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1856
    const/4 v0, 0x5

    sub-int v1, v8, v7

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v3, v3, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto/16 :goto_1

    .line 1834
    .end local v6    # "p":I
    .end local v7    # "p1":I
    .end local v8    # "p2":I
    :cond_2
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1836
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, v1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/VoovioGeometry;->Clip([F)I

    move-result v6

    .restart local v6    # "p":I
    goto :goto_2
.end method

.method public enabledMipMaps(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .prologue
    .line 510
    sput-boolean p1, Lcom/voovio/sweep/Voovio;->MIPMAPS:Z

    .line 511
    return-void
.end method

.method public enabledPOTTextures(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .prologue
    .line 516
    sput-boolean p1, Lcom/voovio/sweep/Sweep;->POT_TEXTURES:Z

    .line 517
    return-void
.end method

.method public fastMoveToNearestImage()V
    .locals 5

    .prologue
    .line 1674
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1675
    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_0

    .line 1676
    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 1677
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1679
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v2, v2, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget v1, v2, Lcom/voovio/sweep/Voovio;->m_nId:I

    .line 1680
    .local v1, "prevVoovioIndex":I
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Edge;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    .line 1689
    .end local v1    # "prevVoovioIndex":I
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/voovio/sweep/SweepView;->m_bFastMove:Z

    .line 1674
    :cond_0
    monitor-exit v3

    .line 1692
    return-void

    .line 1683
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    .line 1685
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget-object v2, v2, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget v0, v2, Lcom/voovio/sweep/Voovio;->m_nId:I

    .line 1686
    .local v0, "nextVoovioIndex":I
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Edge;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    goto :goto_0

    .line 1674
    .end local v0    # "nextVoovioIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAutodrive()Z
    .locals 1

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    return v0
.end method

.method public getImagePositions()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 913
    const/4 v0, 0x0

    .line 915
    .local v0, "aImagePositions":[I
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 916
    .local v2, "nVoovios":I
    if-le v2, v4, :cond_1

    .line 917
    new-array v0, v2, [I

    .line 918
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lt v1, v3, :cond_0

    .line 920
    add-int/lit8 v4, v2, -0x1

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    aput v3, v0, v4

    .line 928
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 919
    .restart local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    aput v3, v0, v1

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 924
    aput v5, v0, v5

    .line 925
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    aput v3, v0, v4

    goto :goto_1
.end method

.method public getMaxPosition()I
    .locals 1

    .prologue
    .line 907
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    return v0
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public getSweep()Lcom/voovio/sweep/Sweep;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    return-object v0
.end method

.method public getTotalNumberOfFrames()I
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getTotalNumberOfFrames()I

    move-result v0

    return v0
.end method

.method public getZoomInFov()F
    .locals 1

    .prologue
    .line 2260
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    return v0
.end method

.method public hasAutodrive()Z
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1127
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    .line 1131
    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 1133
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1134
    :try_start_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    .line 1137
    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 1138
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V

    .line 1140
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v0, v0, Lcom/voovio/sweep/Node;->m_nPosition:I

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 1142
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraValues()V

    .line 1133
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveToPosition(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1149
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v5, :cond_0

    if-ltz p1, :cond_0

    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    if-le p1, v5, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    .line 1153
    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 1155
    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 1156
    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 1157
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 1159
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    .line 1161
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v5, :cond_2

    .line 1162
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    invoke-interface {v5, v7}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    .line 1165
    :cond_2
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1166
    :try_start_0
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1170
    .local v2, "nEdges":I
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    if-ne p1, v6, :cond_6

    .line 1171
    add-int/lit8 v1, v2, -0x1

    .line 1172
    .local v1, "index":I
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    .line 1184
    .local v3, "oEdge":Lcom/voovio/sweep/Edge;
    :cond_3
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eq v6, v3, :cond_4

    .line 1185
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    .line 1186
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    .line 1189
    :cond_4
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v6, v6, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v6, v6, Lcom/voovio/sweep/Node;->m_nPosition:I

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v7, v7, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v7, v7, Lcom/voovio/sweep/Node;->m_nPosition:I

    sub-int/2addr v6, v7

    int-to-float v0, v6

    .line 1190
    .local v0, "fDenom":F
    cmpl-float v6, v0, v4

    if-eqz v6, :cond_5

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v4, v4, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v4, v4, Lcom/voovio/sweep/Node;->m_nPosition:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    :cond_5
    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 1191
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V

    .line 1193
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    .line 1195
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraValues()V

    .line 1165
    monitor-exit v5

    goto :goto_0

    .end local v0    # "fDenom":F
    .end local v1    # "index":I
    .end local v2    # "nEdges":I
    .end local v3    # "oEdge":Lcom/voovio/sweep/Edge;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1175
    .restart local v2    # "nEdges":I
    :cond_6
    const/4 v1, 0x0

    .line 1176
    .restart local v1    # "index":I
    :try_start_1
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    .line 1178
    .restart local v3    # "oEdge":Lcom/voovio/sweep/Edge;
    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v6, v3, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v6, v6, Lcom/voovio/sweep/Node;->m_nPosition:I

    if-le p1, v6, :cond_3

    .line 1179
    add-int/lit8 v1, v1, 0x1

    .line 1180
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "oEdge":Lcom/voovio/sweep/Edge;
    check-cast v3, Lcom/voovio/sweep/Edge;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v3    # "oEdge":Lcom/voovio/sweep/Edge;
    goto :goto_1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 2409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2410
    .local v0, "currTimePick_ms":J
    iget-wide v4, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    iget-wide v4, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    sub-long v4, v0, v4

    long-to-float v2, v4

    .line 2414
    .local v2, "realTimeElapsed_ms":F
    :goto_0
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    const/high16 v4, 0x421c0000    # 39.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    const/high16 v4, 0x42200000    # 40.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    .line 2417
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    sub-float/2addr v4, v5

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    .line 2419
    iput-wide v0, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    .line 2425
    iget-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    if-nez v3, :cond_0

    .line 2426
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/voovio/sweep/ResourceManager;->loop(Z)V

    .line 2429
    :cond_0
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2430
    :try_start_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateScene()V

    .line 2431
    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->drawScene(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2429
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2433
    return-void

    .line 2410
    .end local v2    # "realTimeElapsed_ms":F
    :cond_1
    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    goto :goto_0

    .line 2429
    .restart local v2    # "realTimeElapsed_ms":F
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 481
    invoke-direct {p0, v2}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    .line 483
    const/high16 v0, 0x418c0000    # 17.5f

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    .line 484
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    .line 485
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    .line 487
    iput v2, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 490
    iput-boolean v2, p0, Lcom/voovio/sweep/SweepView;->m_bResumed:Z

    .line 491
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bResumed:Z

    .line 499
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 429
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 431
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_1

    .line 432
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    .line 434
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v2, v3}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    .line 432
    :cond_0
    monitor-exit v1

    .line 438
    :cond_1
    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2402
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v2, 0x0

    .line 2330
    const/16 v1, 0x901

    invoke-static {v1}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 2331
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 2333
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_strVShader1:Ljava/lang/String;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_strFShader:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/voovio/gles/ShaderHelper;->LoadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    .line 2334
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const-string v2, "a_vertex"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_1:I

    .line 2335
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const-string v2, "a_uvcoords"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_1:I

    .line 2336
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const-string v2, "u_MVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_1:I

    .line 2337
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const-string v2, "u_alpha"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iAlphaLoc_1:I

    .line 2338
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const-string v2, "u_texId"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_1:I

    .line 2340
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_strVShader2:Ljava/lang/String;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_strFShader:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/voovio/gles/ShaderHelper;->LoadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    .line 2341
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "a_position"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_2:I

    .line 2342
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "a_vertex"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_2:I

    .line 2343
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "a_uvcoords"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_2:I

    .line 2344
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_MVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_2:I

    .line 2345
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_p1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_2:I

    .line 2346
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_p2"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_2:I

    .line 2347
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_inverseGradient"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iInvGradLoc_2:I

    .line 2348
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_texId"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_2:I

    .line 2350
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2351
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_alphaGradient"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 2352
    .local v0, "iAlphaGradientLoc":I
    iget v1, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fbAlphaGradient:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 2354
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_strVShader3:Ljava/lang/String;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_strFShader:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/voovio/gles/ShaderHelper;->LoadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    .line 2355
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "a_position"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_3:I

    .line 2356
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "a_vertex"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_3:I

    .line 2357
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "a_uvcoords"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_3:I

    .line 2358
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_MVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_3:I

    .line 2359
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_p1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_3:I

    .line 2360
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_p2"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_3:I

    .line 2361
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_a"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iALoc_3:I

    .line 2362
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_b"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iBLoc_3:I

    .line 2363
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_texId"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_3:I

    .line 2365
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2366
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_alphaGradient"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 2367
    iget v1, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fbAlphaGradient:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 2369
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2370
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    .line 2372
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v1, :cond_0

    .line 2373
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, v1, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    invoke-virtual {v1}, Lcom/voovio/sweep/VoovioGeometry;->CreateVertexBuffer()V

    .line 2375
    iget-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    if-eqz v1, :cond_1

    .line 2376
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_nHighResSampleSize:I

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v3, v4, v5}, Lcom/voovio/sweep/Sweep;->createHighResTextures(Lcom/voovio/sweep/ResourceManager;ILandroid/graphics/Bitmap$Config;)V

    .line 2382
    :goto_0
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-nez v1, :cond_2

    .line 2383
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    .line 2384
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->start()V

    .line 2369
    :cond_0
    :goto_1
    monitor-exit v2

    .line 2396
    return-void

    .line 2378
    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_nLowResSampleSize:I

    invoke-virtual {v1, v3, v4}, Lcom/voovio/sweep/Sweep;->createLowResTextures(Lcom/voovio/sweep/ResourceManager;I)V

    .line 2379
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v1}, Lcom/voovio/sweep/ResourceManager;->fillTexturePool()V

    goto :goto_0

    .line 2369
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2388
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V

    .line 2391
    iget-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    if-nez v1, :cond_0

    .line 2392
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v1, v3}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public preloadSweepImages(Z)V
    .locals 0
    .param p1, "bPreload"    # Z

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImages:Z

    .line 523
    return-void
.end method

.method public preloadSweepImagesOnGPU(Z)V
    .locals 0
    .param p1, "bPreload"    # Z

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    .line 529
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v0, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1100
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    .line 1103
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/voovio/sweep/SweepView$9;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepView$9;-><init>(Lcom/voovio/sweep/SweepView;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAutodriveOnStart(I)V
    .locals 0
    .param p1, "nAutodriveOnStart"    # I

    .prologue
    .line 2116
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    .line 2117
    return-void
.end method

.method public setAutodriveVelocity(FF)V
    .locals 0
    .param p1, "fForward"    # F
    .param p2, "fSideward"    # F

    .prologue
    .line 2253
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    .line 2254
    iput p2, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    .line 2255
    return-void
.end method

.method public setBitmapPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 552
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/ResourceManager;->setBitmapPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 553
    return-void
.end method

.method public setCameraDisplacements(FF)V
    .locals 11
    .param p1, "fY"    # F
    .param p2, "fZ"    # F

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2248
    :cond_0
    :goto_0
    return-void

    .line 2242
    :cond_1
    iget-object v10, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2243
    const/high16 v0, 0x40000000    # 2.0f

    :try_start_0
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, v1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float v8, v0, v1

    .line 2244
    .local v8, "fH":F
    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v8, v0

    .line 2246
    .local v9, "fScale":F
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    mul-float v6, p1, v9

    mul-float v7, p2, v9

    invoke-virtual/range {v0 .. v7}, Lcom/voovio/sweep/FrustumLimiter;->Test(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;FFFFF)Z

    .line 2242
    monitor-exit v10

    goto :goto_0

    .end local v8    # "fH":F
    .end local v9    # "fScale":F
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCameraZoomIncrement(FFF)V
    .locals 12
    .param p1, "fIncrement"    # F
    .param p2, "fCenterX"    # F
    .param p3, "fCenterY"    # F

    .prologue
    const v11, 0x42652ee0

    const v10, 0x3c8efa35

    const/4 v9, 0x0

    .line 2180
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    if-eqz v6, :cond_1

    .line 2234
    :cond_0
    :goto_0
    return-void

    .line 2183
    :cond_1
    cmpl-float v6, p1, v9

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    cmpl-float v6, p1, v9

    if-gtz v6, :cond_0

    :cond_2
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    cmpg-float v6, p1, v9

    if-ltz v6, :cond_0

    .line 2186
    :cond_3
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2188
    :try_start_0
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 2190
    .local v3, "fPrevFOV":F
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, p1

    add-float/2addr v6, v8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 2191
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_a

    .line 2192
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 2196
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v6, v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 2198
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V

    .line 2201
    cmpl-float v6, p1, v9

    if-lez v6, :cond_7

    .line 2202
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    .line 2203
    .local v5, "vDstDir":Lcom/voovio/voo3d/data/Vector3;
    invoke-direct {p0, v5}, Lcom/voovio/sweep/SweepView;->getCurrentCameraDirection(Lcom/voovio/voo3d/data/Vector3;)V

    .line 2205
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v8}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    mul-float v0, v6, v11

    .line 2206
    .local v0, "fAngleDiffX":F
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v8, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v8}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    mul-float v1, v6, v11

    .line 2208
    .local v1, "fAngleDiffY":F
    cmpl-float v6, v0, v9

    if-nez v6, :cond_5

    cmpl-float v6, v1, v9

    if-eqz v6, :cond_6

    .line 2209
    :cond_5
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    sub-float/2addr v6, v3

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    sub-float/2addr v8, v3

    div-float v2, v6, v8

    .line 2211
    .local v2, "fPercentage":F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    .line 2213
    .local v4, "vDir":Lcom/voovio/voo3d/data/Vector3;
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 2214
    mul-float v6, v2, v0

    mul-float/2addr v6, v10

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6, v8}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 2215
    mul-float v6, v2, v1

    mul-float/2addr v6, v10

    sget-object v8, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6, v8}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 2217
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v8, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v9, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v10, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v11, 0x1

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 2219
    invoke-static {v4}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 2222
    .end local v2    # "fPercentage":F
    .end local v4    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_6
    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 2225
    .end local v0    # "fAngleDiffX":F
    .end local v1    # "fAngleDiffY":F
    .end local v5    # "vDstDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_7
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v6, v8, v9}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    .line 2227
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v6, :cond_9

    .line 2228
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v3, v6

    if-nez v6, :cond_8

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_8

    .line 2229
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    .line 2230
    :cond_8
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_9

    .line 2231
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    .line 2186
    :cond_9
    monitor-exit v7

    goto/16 :goto_0

    .end local v3    # "fPrevFOV":F
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2193
    .restart local v3    # "fPrevFOV":F
    :cond_a
    :try_start_1
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    .line 2194
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public setImageProvider(Lcom/voovio/sweep/ImageProvider;)V
    .locals 1
    .param p1, "oImageProvider"    # Lcom/voovio/sweep/ImageProvider;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/ResourceManager;->setImageProvider(Lcom/voovio/sweep/ImageProvider;)V

    .line 505
    return-void
.end method

.method public setImageSampleSize(I)V
    .locals 2
    .param p1, "imageSampleSize"    # I

    .prologue
    .line 534
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 535
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nHighResSampleSize:I

    .line 537
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-static {p1}, Lcom/voovio/util/ConversionUtil;->PreviousPowerOfTwo(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setImageSampleSize(I)V

    .line 539
    :cond_0
    return-void
.end method

.method public setLowResSampleSize(I)V
    .locals 1
    .param p1, "lowResSampleSize"    # I

    .prologue
    .line 544
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 545
    invoke-static {p1}, Lcom/voovio/util/ConversionUtil;->PreviousPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nLowResSampleSize:I

    .line 546
    :cond_0
    return-void
.end method

.method public setOnSweepViewListener(Lcom/voovio/sweep/SweepView$OnSweepViewListener;)V
    .locals 0
    .param p1, "oListener"    # Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    .prologue
    .line 2110
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    .line 2111
    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 9
    .param p1, "sweep"    # Lcom/voovio/sweep/Sweep;

    .prologue
    .line 940
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-ne v4, p1, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v5

    .line 945
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    .line 947
    const/4 v4, 0x0

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 949
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 951
    const/4 v4, 0x0

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 953
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    .line 954
    const/4 v4, -0x1

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    .line 955
    const/4 v4, 0x0

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    .line 957
    const/4 v4, 0x0

    iput-byte v4, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    .line 961
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v4, :cond_1

    .line 962
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 963
    .local v2, "oLastSweep":Lcom/voovio/sweep/Sweep;
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    new-instance v6, Lcom/voovio/sweep/SweepView$7;

    invoke-direct {v6, p0, v2}, Lcom/voovio/sweep/SweepView$7;-><init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Sweep;)V

    invoke-virtual {v4, v6}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 979
    .end local v2    # "oLastSweep":Lcom/voovio/sweep/Sweep;
    :cond_1
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 981
    iget-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    if-nez v4, :cond_3

    .line 982
    iget-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImages:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v4, :cond_2

    .line 984
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    :goto_1
    if-lt v0, v1, :cond_6

    .line 991
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_2
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v4, v6}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    .line 994
    :cond_3
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v4, :cond_5

    .line 995
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v4, v6}, Lcom/voovio/sweep/FrustumLimiter;->Init(Lcom/voovio/sweep/Sweep;)V

    .line 997
    iget-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    if-eqz v4, :cond_4

    .line 998
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    new-instance v6, Lcom/voovio/sweep/SweepView$8;

    invoke-direct {v6, p0}, Lcom/voovio/sweep/SweepView$8;-><init>(Lcom/voovio/sweep/SweepView;)V

    invoke-virtual {v4, v6}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1016
    :cond_4
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 1018
    .local v3, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v4, v3, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    .line 1019
    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 1021
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 1024
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computePath()V

    .line 943
    .end local v3    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_5
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 985
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 986
    .restart local v3    # "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v4, v3, Lcom/voovio/sweep/Voovio;->m_baSize:I

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    .line 987
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v4, v4, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v6, v6, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    iget-object v7, v3, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iget v8, v3, Lcom/voovio/sweep/Voovio;->m_nId:I

    invoke-virtual {v4, v6, v7, v8}, Lcom/voovio/sweep/ImageProvider;->getImageDataByIndex(Ljava/lang/String;[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setZoomInFov(F)V
    .locals 0
    .param p1, "fov"    # F

    .prologue
    .line 2266
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    .line 2267
    return-void
.end method

.method public startRequestingFrames(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I
    .param p4, "config"    # I

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    if-eqz v0, :cond_0

    .line 2284
    :goto_0
    return-void

    .line 2279
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2281
    new-instance v0, Lcom/voovio/sweep/SweepOffScreen;

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;-><init>(IIIILcom/voovio/sweep/ResourceManager;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    .line 2282
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/SweepOffScreen;->setAutodriveVelocity(FF)V

    .line 2283
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v1}, Lcom/voovio/sweep/Sweep;->clone()Lcom/voovio/sweep/Sweep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setSweep(Lcom/voovio/sweep/Sweep;)V

    goto :goto_0
.end method

.method public stopAutodrive()V
    .locals 1

    .prologue
    .line 1630
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    .line 1631
    return-void
.end method

.method public stopRequestingFrames()V
    .locals 2

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->dispose()V

    .line 2290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    .line 2292
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    .line 2293
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 2295
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2296
    return-void
.end method

.method public toogleZoomLevel(FF)V
    .locals 14
    .param p1, "posX"    # F
    .param p2, "posY"    # F

    .prologue
    .line 2122
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    if-eqz v6, :cond_1

    .line 2175
    :cond_0
    :goto_0
    return-void

    .line 2125
    :cond_1
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2126
    :try_start_0
    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->getWidth()I

    move-result v6

    int-to-float v1, v6

    .line 2127
    .local v1, "clientWidth":F
    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->getHeight()I

    move-result v6

    int-to-float v0, v6

    .line 2130
    .local v0, "clientHeight":F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    .line 2132
    .local v5, "vDstDir":Lcom/voovio/voo3d/data/Vector3;
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_4

    .line 2133
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_2

    .line 2134
    monitor-exit v7

    goto :goto_0

    .line 2125
    .end local v0    # "clientHeight":F
    .end local v1    # "clientWidth":F
    .end local v5    # "vDstDir":Lcom/voovio/voo3d/data/Vector3;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2136
    .restart local v0    # "clientHeight":F
    .restart local v1    # "clientWidth":F
    .restart local v5    # "vDstDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v8, v6

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    float-to-double v10, v6

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4076800000000000L    # 360.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v6, v8

    div-float v2, v6, v0

    .line 2137
    .local v2, "fScale":F
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v6, v6

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->x:F

    div-float v4, v6, v8

    .line 2138
    .local v4, "s":F
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v6, v4

    .line 2139
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v8, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v0, v9

    sub-float v9, v9, p2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 2140
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v9, v9, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v9, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v1, v10

    sub-float v10, p1, v10

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    .line 2138
    invoke-virtual {v5, v6, v8, v9}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 2141
    invoke-virtual {v5}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 2143
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    .line 2150
    .end local v2    # "fScale":F
    .end local v4    # "s":F
    :goto_1
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->Clone()Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-result-object v3

    .line 2151
    .local v3, "oTempCamera":Lcom/voovio/voo3d/scenegraph/Camera3D;
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v3, v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 2152
    iget v6, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v9, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v3, v6, v8, v9, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 2154
    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepView;->updateViewportForCamera(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 2156
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v6, v3, v8}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    .line 2158
    iget-object v6, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 2160
    const/16 v6, 0x8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    .line 2161
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v8

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    .line 2163
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v8}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    const v8, 0x42652ee0

    mul-float/2addr v6, v8

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    .line 2164
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v8, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v8}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    const v8, 0x42652ee0

    mul-float/2addr v6, v8

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    .line 2166
    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 2169
    const/4 v6, 0x0

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    .line 2170
    const/4 v6, 0x1

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    .line 2172
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v6, :cond_3

    .line 2173
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v8, v6}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    .line 2125
    :cond_3
    monitor-exit v7

    goto/16 :goto_0

    .line 2145
    .end local v3    # "oTempCamera":Lcom/voovio/voo3d/scenegraph/Camera3D;
    :cond_4
    invoke-direct {p0, v5}, Lcom/voovio/sweep/SweepView;->getCurrentCameraDirection(Lcom/voovio/voo3d/data/Vector3;)V

    .line 2147
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2173
    .restart local v3    # "oTempCamera":Lcom/voovio/voo3d/scenegraph/Camera3D;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method
