.class public Lcom/sec/android/glview/TwGLContext;
.super Ljava/lang/Object;
.source "TwGLContext.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/view/IGLContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;,
        Lcom/sec/android/glview/TwGLContext$hoverclass;,
        Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;
    }
.end annotation


# static fields
.field public static final FOCUSED:I = 0x1

.field public static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field public static final HOVER_ENTER:I = 0x0

.field public static final HOVER_EXIT:I = 0x1

.field public static final NOT_FOCUSED:I = 0x0

.field public static final ORIENTATION_CHANGE_MARGIN_IN_DEGREE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TwGLContext"

.field private static mLastOrientation:I

.field private static mOrientationCompensationValue:I

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field protected mApplicationContext:Landroid/content/Context;

.field private mAutoOrientationStatus:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

.field private mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

.field private mDensity:F

.field private mDirty:Z

.field private mFocusIndicatorVisibilityChanged:Z

.field private mFocusResId:I

.field private mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

.field private mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

.field private mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHeight:I

.field private mHover2ResId:I

.field private mHoverBaseView:Landroid/view/View;

.field public mHoverEventListener:Lcom/sec/android/glview/TwGLContext$hoverclass;

.field private mHoverResId:I

.field private mIdentityMatrix:[F

.field private mIsFocusIndicatorVisible:Z

.field public mIsFocusIndicatorrefresh:Z

.field private mIsTouchExplorationEnabled:Z

.field private mLastHoverView:Lcom/sec/android/glview/TwGLView;

.field private mLastTouchView:Lcom/sec/android/glview/TwGLView;

.field private mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mNeedToUpdateOrientation:Z

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPreviewTransparent:Z

.field private mProjMatrix:[F

.field private mRootView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mScrollBarAutoHide:Z

.field private mTapDir:I

.field private mTapDirState:I

.field private mTexturesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    sput v0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    .line 93
    sput v0, Lcom/sec/android/glview/TwGLContext;->mOrientationCompensationValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;Landroid/opengl/GLSurfaceView;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;
    .param p3, "surfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 86
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 88
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    .line 99
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z

    .line 109
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mHoverEventListener:Lcom/sec/android/glview/TwGLContext$hoverclass;

    .line 111
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 113
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 116
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    .line 118
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 121
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mProjMatrix:[F

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mMainHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    .line 137
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    .line 138
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 142
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    .line 144
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    .line 146
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    .line 149
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 151
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 153
    const v0, 0x7f0203dd

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    .line 155
    const v0, 0x7f0203f0

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverResId:I

    .line 160
    const v0, 0x7f0203f1

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mHover2ResId:I

    .line 162
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    .line 164
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 166
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 168
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    .line 171
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mPreviewTransparent:Z

    .line 173
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorrefresh:Z

    .line 175
    new-instance v0, Lcom/sec/android/glview/TwGLContext$1;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/glview/TwGLContext$1;-><init>(Lcom/sec/android/glview/TwGLContext;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    .line 225
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    .line 226
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    .line 227
    iput-object p2, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    .line 228
    iput-object p3, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 230
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    .line 232
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->setOrientationListener()V

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i).*talkback.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->updateTouchExplorationEnabled()V

    .line 239
    return-void
.end method

.method private HandlingKeyEventTap()Z
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1266
    const/4 v0, 0x0

    .line 1267
    .local v0, "res":Z
    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    if-nez v1, :cond_14

    .line 1268
    if-nez v0, :cond_0

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-nez v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1270
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1271
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1272
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1273
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1274
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1292
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v4, :cond_1

    .line 1293
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1294
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1295
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1296
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1297
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1298
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1316
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v6, :cond_2

    .line 1317
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1318
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1319
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1320
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1321
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1322
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1340
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v7, :cond_3

    .line 1341
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1342
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1343
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1344
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1345
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1346
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1462
    :cond_3
    :goto_3
    return v0

    .line 1276
    :cond_4
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1277
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1280
    :cond_5
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1281
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1284
    :cond_6
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1285
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1288
    :cond_7
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1289
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1300
    :cond_8
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1301
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1304
    :cond_9
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1305
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1308
    :cond_a
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1309
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1312
    :cond_b
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1313
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1324
    :cond_c
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1325
    const/4 v0, 0x1

    goto :goto_2

    .line 1328
    :cond_d
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1329
    const/4 v0, 0x1

    goto :goto_2

    .line 1332
    :cond_e
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1333
    const/4 v0, 0x1

    goto :goto_2

    .line 1336
    :cond_f
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1337
    const/4 v0, 0x1

    goto :goto_2

    .line 1348
    :cond_10
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1349
    const/4 v0, 0x1

    goto :goto_3

    .line 1352
    :cond_11
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1353
    const/4 v0, 0x1

    goto :goto_3

    .line 1356
    :cond_12
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1357
    const/4 v0, 0x1

    goto :goto_3

    .line 1360
    :cond_13
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1361
    const/4 v0, 0x1

    goto :goto_3

    .line 1365
    :cond_14
    if-nez v0, :cond_15

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v6, :cond_15

    .line 1366
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1367
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1368
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1369
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1370
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1371
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1389
    :cond_15
    :goto_4
    if-nez v0, :cond_16

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v4, :cond_16

    .line 1390
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1391
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1392
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1393
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1394
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1395
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1413
    :cond_16
    :goto_5
    if-nez v0, :cond_17

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-nez v1, :cond_17

    .line 1414
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1415
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1416
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1417
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1418
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1419
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1437
    :cond_17
    :goto_6
    if-nez v0, :cond_3

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    if-ne v1, v7, :cond_3

    .line 1438
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1439
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1440
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1441
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1442
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 1443
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    goto/16 :goto_3

    .line 1373
    :cond_18
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1374
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1377
    :cond_19
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1378
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1381
    :cond_1a
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1382
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1385
    :cond_1b
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1386
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1397
    :cond_1c
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1398
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1401
    :cond_1d
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1402
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1405
    :cond_1e
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1406
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1409
    :cond_1f
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1410
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1421
    :cond_20
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1422
    const/4 v0, 0x1

    goto :goto_6

    .line 1425
    :cond_21
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1426
    const/4 v0, 0x1

    goto :goto_6

    .line 1429
    :cond_22
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1430
    const/4 v0, 0x1

    goto :goto_6

    .line 1433
    :cond_23
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1434
    const/4 v0, 0x1

    goto :goto_6

    .line 1445
    :cond_24
    iput v5, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1446
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1449
    :cond_25
    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1450
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1453
    :cond_26
    iput v6, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1454
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1457
    :cond_27
    iput v7, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    .line 1458
    const/4 v0, 0x1

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->updateTouchExplorationEnabled()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 64
    sput p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/glview/TwGLContext;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLContext;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    return v0
.end method

.method private getAudioSoundOfTapDirection()I
    .locals 1

    .prologue
    .line 1466
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mTapDirState:I

    packed-switch v0, :pswitch_data_0

    .line 1476
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1468
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1470
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1472
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1474
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1466
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 275
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getDimension(I)F
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 267
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getInteger(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 271
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getLastOrientation()I
    .locals 1

    .prologue
    .line 1122
    sget v0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return v0
.end method

.method public static getOrientationCompensationValue()I
    .locals 1

    .prologue
    .line 1093
    sget v0, Lcom/sec/android/glview/TwGLContext;->mOrientationCompensationValue:I

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 279
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setOrientationComensationValue(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 1089
    sput p0, Lcom/sec/android/glview/TwGLContext;->mOrientationCompensationValue:I

    .line 1090
    return-void
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 1062
    new-instance v0, Lcom/sec/android/glview/TwGLContext$2;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/glview/TwGLContext$2;-><init>(Lcom/sec/android/glview/TwGLContext;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1086
    return-void
.end method

.method private declared-synchronized updateTouchExplorationEnabled()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1218
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mIsTouchExplorationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    monitor-exit p0

    return-void

    :cond_0
    move v0, v1

    .line 1218
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addTextureToDelete(Lcom/sec/android/glview/TwGLTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/sec/android/glview/TwGLTexture;

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1170
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    monitor-exit v1

    .line 1172
    return-void

    .line 1171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 292
    :cond_0
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 294
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    .line 296
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 298
    :cond_1
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 300
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    .line 302
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    .line 307
    return-void

    .line 304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 408
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 412
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 414
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 415
    return-void
.end method

.method public dumpViewHierarchy()V
    .locals 2

    .prologue
    .line 1161
    const-string v0, "DUMP"

    const-string v1, "=======================DUMP_START======================="

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->dumpViewHierarchy(I)V

    .line 1165
    :cond_0
    const-string v0, "DUMP"

    const-string v1, "=======================DUMP_END======================="

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-void
.end method

.method public enableOrientation(Z)V
    .locals 0
    .param p1, "orientation"    # Z

    .prologue
    .line 1149
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    .line 1150
    return-void
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .param p1, "rootView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p2, "focusedView"    # Lcom/sec/android/glview/TwGLView;
    .param p3, "direction"    # I

    .prologue
    .line 864
    const/4 v0, 0x0

    .line 865
    .local v0, "resultView":Lcom/sec/android/glview/TwGLView;
    if-nez p1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 870
    :goto_0
    return-object v0

    .line 868
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_0
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 857
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 860
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 843
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 846
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    return v0
.end method

.method public getFocusResourceId()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    return v0
.end method

.method public getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    return-object v0
.end method

.method public getGLLineProgram()Lcom/sec/android/glview/TwGLProgram;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    return-object v0
.end method

.method public getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    return-object v0
.end method

.method public getGLRootView()Landroid/view/IGLViewGroup;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getHover2ResourceId()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mHover2ResId:I

    return v0
.end method

.method public getHoverBaseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    return-object v0
.end method

.method public getHoverResourceId()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverResId:I

    return v0
.end method

.method public getLastHoverView()Lcom/sec/android/glview/TwGLView;
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProjMatrix()[F
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mProjMatrix:[F

    return-object v0
.end method

.method public getRootView()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getScreenAspectRatio()F
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getScreenGeometry()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    return v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getTts()Landroid/speech/tts/TextToSpeech;
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public isFocusIndicatorRefesh()Z
    .locals 1

    .prologue
    .line 1533
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorrefresh:Z

    return v0
.end method

.method public isFocusIndicatorVisible()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    return v0
.end method

.method public isHoveringEnabled()Z
    .locals 1

    .prologue
    .line 1481
    const/4 v0, 0x0

    return v0
.end method

.method protected isHoveringIconLabelEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1491
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_icon_label"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1494
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected isHoveringPointerEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1499
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_pointer"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1502
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isScreenReaderActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1193
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return v0

    .line 1196
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1201
    goto :goto_0
.end method

.method public isTalkBackServiceActive()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1240
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1241
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 1245
    .local v1, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1246
    const/4 v0, 0x0

    .line 1255
    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    return v2

    .line 1249
    .restart local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    const-string v2, "TwGLContext"

    const-string v4, "There cannot use TalkBack service."

    invoke-static {v2, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/4 v0, 0x0

    move v2, v3

    .line 1251
    goto :goto_0

    .line 1254
    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_1
    const/4 v0, 0x0

    move v2, v3

    .line 1255
    goto :goto_0
.end method

.method public isTalkbackPaused()Z
    .locals 1

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTalkBackServiceActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    const/4 v0, 0x0

    .line 1235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1207
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return v0

    .line 1210
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 1211
    goto :goto_0
.end method

.method public isTouchExplorationEnabledCheckingByAccessibilityManager()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1222
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1223
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1224
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1228
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    :goto_0
    return v1

    .line 1225
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected notifyHoverEventChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 392
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 395
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;->onHoverEventChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 398
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 946
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v3

    .line 947
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLTexture;

    .line 948
    .local v1, "texture":Lcom/sec/android/glview/TwGLTexture;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->clearTexture()V

    goto :goto_0

    .line 951
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "texture":Lcom/sec/android/glview/TwGLTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 950
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 951
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getScreenAspectRatio()F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_1

    .line 954
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 956
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 958
    const/16 v2, 0x4100

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 966
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_2

    .line 967
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->draw([FLandroid/graphics/Rect;)V

    .line 970
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mPreviewTransparent:Z

    if-nez v2, :cond_3

    .line 971
    invoke-static {v7, v7, v7, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 972
    invoke-static {v5, v5, v5, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 973
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 974
    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 975
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 978
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    if-eqz v2, :cond_4

    .line 979
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLPreviewData;->doUpdate()V

    .line 980
    :cond_4
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v2, 0x1

    .line 763
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 766
    :cond_0
    if-eqz p1, :cond_1

    .line 767
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 769
    :cond_1
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 770
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 771
    if-nez p1, :cond_4

    .line 772
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 775
    :cond_2
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 780
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 781
    return-void

    .line 777
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLContext;->onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 784
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabledCheckingByAccessibilityManager()Z

    move-result v2

    if-nez v2, :cond_6

    .line 788
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_2

    .line 790
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 792
    :cond_2
    invoke-virtual {p1, v4}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 793
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 794
    instance-of v2, p1, Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_5

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v4, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 803
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 804
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 805
    .local v1, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 808
    .end local v1    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 809
    invoke-virtual {p0, v5}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto :goto_0

    .line 796
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 797
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 798
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 799
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 800
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_1

    .line 811
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_7

    .line 813
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 815
    :cond_7
    invoke-virtual {p1, v4}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 816
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_8

    .line 817
    if-eqz p2, :cond_8

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 818
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;

    move-result-object v0

    .line 820
    .local v0, "popup":Lcom/sec/android/glview/HoverPopupWindow;
    if-eqz v0, :cond_8

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/HoverPopupWindow;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 821
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->setHoveringPoint(II)V

    .line 823
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 824
    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 831
    .end local v0    # "popup":Lcom/sec/android/glview/HoverPopupWindow;
    :cond_8
    :goto_2
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    goto/16 :goto_0

    .line 826
    .restart local v0    # "popup":Lcom/sec/android/glview/HoverPopupWindow;
    :cond_9
    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->show()V

    goto :goto_2
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 665
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    .line 666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 667
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    .line 668
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/glview/TwGLContext;->notifyHoverEventChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    .line 670
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/glview/TwGLContext;->onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    .line 702
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    :cond_1
    return v4

    .line 672
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 679
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 680
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 681
    .local v0, "tempView":Lcom/sec/android/glview/TwGLView;
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eq v0, v1, :cond_1

    .line 684
    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    .line 685
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_4

    .line 686
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/glview/TwGLContext;->onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 687
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 693
    .end local v0    # "tempView":Lcom/sec/android/glview/TwGLView;
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    goto :goto_0
.end method

.method public onInit(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 1183
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v9, 0x82

    const/16 v8, 0x42

    const/16 v7, 0x21

    const/16 v6, 0x11

    const/4 v3, 0x1

    .line 438
    const/4 v2, 0x0

    .line 439
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 441
    .local v1, "res":Z
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-nez v4, :cond_0

    .line 442
    sparse-switch p1, :sswitch_data_0

    .line 460
    :cond_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v4, :cond_2

    .line 462
    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    if-nez v4, :cond_1

    .line 463
    sparse-switch p1, :sswitch_data_1

    .line 478
    :cond_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/glview/TwGLView;->keyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 479
    if-nez v2, :cond_2

    .line 480
    sparse-switch p1, :sswitch_data_2

    .line 573
    :cond_2
    :goto_0
    if-eq v2, v3, :cond_3

    if-ne v1, v3, :cond_4

    .line 574
    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 575
    .local v0, "audioManager":Landroid/media/AudioManager;
    sparse-switch p1, :sswitch_data_3

    .line 598
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_4
    :goto_1
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v3, v2

    .line 599
    :goto_2
    :sswitch_0
    return v3

    .line 451
    :sswitch_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 452
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 453
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 454
    const/4 v3, 0x0

    goto :goto_2

    .line 456
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 472
    :sswitch_2
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 473
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 474
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto :goto_2

    .line 482
    :sswitch_3
    iget v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sec/android/glview/TwGLContext;->mTapDir:I

    .line 483
    const/4 v1, 0x1

    .line 484
    goto :goto_0

    .line 486
    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->HandlingKeyEventTap()Z

    move-result v1

    .line 487
    goto :goto_0

    .line 495
    :sswitch_5
    sget v4, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 497
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 498
    goto :goto_0

    .line 500
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 501
    goto :goto_0

    .line 503
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 504
    goto :goto_0

    .line 506
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    goto :goto_0

    .line 515
    :sswitch_6
    sget v4, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 517
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 518
    goto :goto_0

    .line 520
    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 521
    goto :goto_0

    .line 523
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 524
    goto/16 :goto_0

    .line 526
    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    goto/16 :goto_0

    .line 535
    :sswitch_7
    sget v4, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_0

    .line 537
    :pswitch_8
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 538
    goto/16 :goto_0

    .line 540
    :pswitch_9
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 541
    goto/16 :goto_0

    .line 543
    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 544
    goto/16 :goto_0

    .line 546
    :pswitch_b
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    goto/16 :goto_0

    .line 555
    :sswitch_8
    sget v4, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_0

    .line 557
    :pswitch_c
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 558
    goto/16 :goto_0

    .line 560
    :pswitch_d
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 561
    goto/16 :goto_0

    .line 563
    :pswitch_e
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    .line 564
    goto/16 :goto_0

    .line 566
    :pswitch_f
    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v2

    goto/16 :goto_0

    .line 577
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_9
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 580
    :sswitch_a
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 583
    :sswitch_b
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 586
    :sswitch_c
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 589
    :sswitch_d
    if-ne v1, v3, :cond_4

    .line 590
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->getAudioSoundOfTapDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 594
    :sswitch_e
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 442
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 463
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x3d -> :sswitch_2
        0x3e -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch

    .line 480
    :sswitch_data_2
    .sparse-switch
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_0
        0x3d -> :sswitch_4
        0x3e -> :sswitch_3
    .end sparse-switch

    .line 575
    :sswitch_data_3
    .sparse-switch
        0x13 -> :sswitch_b
        0x14 -> :sswitch_c
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0x3d -> :sswitch_d
        0x3e -> :sswitch_e
    .end sparse-switch

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 515
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 535
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 555
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 603
    const/4 v0, 0x0

    .line 643
    .local v0, "result":Z
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    if-eqz v2, :cond_0

    .line 644
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 661
    :goto_0
    return v1

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/glview/TwGLView;->keyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 652
    :cond_1
    if-nez v0, :cond_2

    .line 653
    packed-switch p1, :pswitch_data_0

    .line 660
    :cond_2
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v1, v0

    .line 661
    goto :goto_0

    .line 655
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->dumpViewHierarchy()V

    goto :goto_1

    .line 653
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 902
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    .line 903
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 904
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z

    .line 907
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getPreserveEGLContextOnPause()Z

    move-result v1

    if-nez v1, :cond_1

    .line 909
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v2

    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 911
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    invoke-static {v1}, Lcom/sec/android/glview/TwGLProgram;->releaseInstance(Lcom/sec/android/glview/TwGLProgram;)V

    .line 914
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    invoke-static {v1}, Lcom/sec/android/glview/TwGLProgram;->releaseInstance(Lcom/sec/android/glview/TwGLProgram;)V

    .line 916
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->reset()V

    .line 918
    :cond_1
    invoke-static {}, Lcom/sec/android/glview/TwGLPreviewData;->releaseInstance()V

    .line 920
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_2

    .line 921
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 922
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 923
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 926
    :cond_2
    const-string v1, "touch_exploration_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 927
    .local v0, "touchExplorationEnabledURI":Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 928
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 930
    :cond_3
    return-void

    .line 911
    .end local v0    # "touchExplorationEnabledURI":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 881
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 890
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->setHoverEventListener()V

    .line 893
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->updateTouchExplorationEnabled()V

    .line 895
    const-string v1, "touch_exploration_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 896
    .local v0, "touchExplorationEnabledURI":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 897
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 899
    :cond_2
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/16 v8, 0xc11

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 989
    const-string v0, "TwGLContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const-string v0, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLSurfaceChanged**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iput p2, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    .line 993
    iput p3, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    .line 995
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mProjMatrix:[F

    iget v3, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    neg-int v5, v5

    int-to-float v6, v5

    iget v5, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    int-to-float v7, v5

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 997
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 998
    invoke-static {v8}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 999
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1000
    invoke-static {v8}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1001
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1003
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 1010
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1011
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8
    .param p1, "gUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/16 v7, 0xcf

    const/16 v6, 0xcc

    const/16 v5, 0x66

    const/16 v4, 0x67

    const/4 v3, 0x0

    .line 1020
    const-string v0, "TwGLContext"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1025
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1027
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1029
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1030
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1032
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 1033
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1034
    const/16 v0, 0x203

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 1037
    invoke-static {p0}, Lcom/sec/android/glview/TwGLPreviewData;->getInstance(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    .line 1039
    const-string v0, "precision mediump float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v1, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n}\n"

    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    .line 1040
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "a_position"

    invoke-virtual {v0, v1, v5, v7}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1041
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "a_texcoord"

    const/16 v2, 0xcd

    invoke-virtual {v0, v1, v5, v2}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1042
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "u_MVPMatrix"

    const/16 v2, 0xd8

    invoke-virtual {v0, v1, v4, v2}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1043
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLBaseProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1, v4, v6}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1045
    const-string v0, "precision mediump float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute float a_pointsize;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  gl_PointSize = a_pointsize;\n}\n"

    const-string v1, "precision mediump float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha;\n}\n"

    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLProgram;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    .line 1046
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "a_position"

    invoke-virtual {v0, v1, v5, v7}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1047
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "a_pointsize"

    invoke-virtual {v0, v1, v5, v6}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1048
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "tex_sampler"

    invoke-virtual {v0, v1, v4, v7}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1049
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "u_MVPMatrix"

    const/16 v2, 0xd8

    invoke-virtual {v0, v1, v4, v2}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1050
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLLineProgram:Lcom/sec/android/glview/TwGLProgram;

    const-string v1, "u_alpha"

    invoke-virtual {v0, v1, v4, v6}, Lcom/sec/android/glview/TwGLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 1052
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_0

    .line 1053
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-direct {v0, p0, v3, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1055
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 716
    const/4 v0, 0x0

    .line 717
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_1

    .line 721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 722
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    .line 723
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabledCheckingByAccessibilityManager()Z

    move-result v1

    if-nez v1, :cond_2

    .line 724
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 758
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 759
    return v0

    .line 728
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 732
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 733
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabledCheckingByAccessibilityManager()Z

    move-result v1

    if-nez v1, :cond_4

    .line 734
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 735
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    .line 736
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    .line 737
    const/4 v0, 0x1

    goto :goto_0

    .line 740
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 741
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    .line 742
    iput-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    .line 743
    const/4 v0, 0x1

    goto :goto_0

    .line 747
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabledCheckingByAccessibilityManager()Z

    move-result v1

    if-nez v1, :cond_6

    .line 748
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 749
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 752
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public queueGLEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/Runnable;

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1538
    return-void
.end method

.method public refreshOrientation()V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 1131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1133
    :cond_0
    return-void
.end method

.method public registerHoverEventChangedObserver(Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    monitor-exit v1

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetOrientation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1139
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    .line 1141
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    if-nez v0, :cond_0

    .line 1142
    sput v2, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    .line 1143
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 1144
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1146
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1139
    goto :goto_0
.end method

.method public resumeOrientationListener()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z

    .line 935
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 937
    :cond_0
    return-void
.end method

.method public rotationFocusView()V
    .locals 2

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 1522
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1523
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1524
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 1527
    :cond_1
    return-void
.end method

.method public setDirty(Z)V
    .locals 1
    .param p1, "dirty"    # Z

    .prologue
    .line 874
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 875
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 878
    :cond_0
    return-void
.end method

.method public setFocusIndicatorRefesh(Z)V
    .locals 0
    .param p1, "refresh"    # Z

    .prologue
    .line 1530
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorrefresh:Z

    .line 1531
    return-void
.end method

.method public setFocusResourceId(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 418
    iput p1, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    .line 419
    return-void
.end method

.method public setHoverBaseView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    .line 1508
    return-void
.end method

.method public setHoverEventListener()V
    .locals 2

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverEventListener:Lcom/sec/android/glview/TwGLContext$hoverclass;

    if-nez v0, :cond_1

    .line 1102
    new-instance v0, Lcom/sec/android/glview/TwGLContext$hoverclass;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/glview/TwGLContext$hoverclass;-><init>(Lcom/sec/android/glview/TwGLContext;Lcom/sec/android/glview/TwGLContext$1;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverEventListener:Lcom/sec/android/glview/TwGLContext$hoverclass;

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mHoverEventListener:Lcom/sec/android/glview/TwGLContext$hoverclass;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1106
    :cond_2
    return-void
.end method

.method public setHoverResourceId(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/sec/android/glview/TwGLContext;->mHoverResId:I

    .line 427
    return-void
.end method

.method public declared-synchronized setPreviewData(II[B)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    .prologue
    .line 1260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLPreviewData:Lcom/sec/android/glview/TwGLPreviewData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/glview/TwGLPreviewData;->setPreviewData(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    :cond_0
    monitor-exit p0

    return-void

    .line 1260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreviewTransparent(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1177
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mPreviewTransparent:Z

    .line 1178
    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1153
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    .line 1154
    return-void
.end method

.method public unregisterHoverEventChangedObserver(Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;

    .prologue
    .line 386
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 388
    monitor-exit v1

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
