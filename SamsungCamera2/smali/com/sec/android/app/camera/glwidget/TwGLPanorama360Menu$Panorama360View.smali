.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Panorama360View"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    }
.end annotation


# static fields
.field public static final MSG_FINISH_RENDER_PREVIEW:I = 0x0

.field public static final MSG_REQUEST_REREGISTER_TEXTURE:I = 0x2

.field public static final MSG_REQUEST_SET_POSTVIEW_DATA:I = 0x1

.field public static final PANORAMA_POSTVIEW:I = 0x1

.field public static final PANORAMA_PREVIEW:I


# instance fields
.field private isDefault:Z

.field private isFileSelect:Z

.field private isRegistered:Z

.field private mActivity:Landroid/app/Activity;

.field private mAnimationEnable:Z

.field private mAnimationProgress:I

.field private mAnimationType:I

.field private mAttachStatus:[I

.field private mDispType:I

.field private mDrawBgBlankMode:I

.field private mGyroscopeType:I

.field private mHandler:Landroid/os/Handler;

.field private mIsShootable:[I

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

.field private mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

.field private mOrientation:I

.field private mPrevTimestamp:J

.field private mPreviewMode:I

.field private mRenderEnable:Z

.field private mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

.field private mRenderInfoID:[I

.field private mResetCalled:Z

.field private mResetCount:I

.field private mRotateAngleX:D

.field private mRotateAngleY:D

.field private mRotateRatioX:D

.field private mRotateRatioY:D

.field private mRotation:I

.field private mScale:D

.field private mStartAnimationTime:J

.field private mSyncObj:Ljava/lang/Object;

.field private mTouchSyncObj:Ljava/lang/Object;

.field private mViewHeight:I

.field private mViewWidth:I

.field private render_count:J

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/glview/TwGLContext;FFLandroid/app/Activity;Landroid/os/Handler;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;I)V
    .locals 3
    .param p2, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "activity"    # Landroid/app/Activity;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "image_stitcher"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    .param p8, "preview_buffer_size"    # I

    .prologue
    .line 887
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .line 888
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    .line 818
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    .line 819
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mIsShootable:[I

    .line 826
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    .line 827
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    .line 831
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 832
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    .line 833
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    .line 835
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    .line 837
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    .line 839
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mStartAnimationTime:J

    .line 840
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    .line 850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isRegistered:Z

    .line 852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    .line 853
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    .line 890
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv Panorama360View "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/high16 v0, 0x43fa0000    # 500.0f

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setSize(FF)V

    .line 893
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPreviewMode:I

    .line 894
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 895
    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mHandler:Landroid/os/Handler;

    .line 896
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    invoke-direct {v2, p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)V

    aput-object v2, v0, v1

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    invoke-direct {v2, p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)V

    aput-object v2, v0, v1

    .line 899
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    .line 900
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mActivity:Landroid/app/Activity;

    .line 901
    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;
    .param p1, "x1"    # Z

    .prologue
    .line 811
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    .prologue
    .line 811
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;
    .param p1, "x1"    # I

    .prologue
    .line 811
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    return p1
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;
    .param p1, "x1"    # Z

    .prologue
    .line 811
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    return-object v0
.end method

.method private pvGetDeviceRotate()I
    .locals 2

    .prologue
    .line 1237
    const/4 v0, 0x0

    .line 1238
    .local v0, "rotate":I
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    if-gez v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    .line 1241
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1244
    const/4 v0, 0x0

    .line 1257
    :goto_0
    return v0

    .line 1247
    :pswitch_0
    const/4 v0, 0x3

    .line 1248
    goto :goto_0

    .line 1250
    :pswitch_1
    const/4 v0, 0x2

    .line 1251
    goto :goto_0

    .line 1253
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private pvRenderEmptyPreview()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1261
    const/16 v0, 0x9

    new-array v6, v0, [D

    .line 1262
    .local v6, "screen_rot":[D
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v0, v6, v1, v1, v1}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorMatrix([D[D[D[I)I

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v2, 0x2

    invoke-virtual {v0, v6, v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetDeviceRotate()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPreview([BIIII)I

    .line 1265
    return-void
.end method

.method private pvRenderPreview(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;J)V
    .locals 26
    .param p1, "r_info"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    .param p2, "pre_odf_end_time"    # J

    .prologue
    .line 1269
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1270
    :try_start_0
    new-instance v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-direct {v15, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    .line 1273
    .local v15, "result":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->is_set:Z

    if-eqz v4, :cond_5

    .line 1274
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->is_set:Z

    .line 1275
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    .line 1277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1278
    .local v18, "now_time":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1279
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    sub-long v4, v18, v4

    iput-wide v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mFrameInterval:J

    .line 1281
    :cond_0
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    .line 1282
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoEndTime:J

    sub-long v4, v18, v4

    iput-wide v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mRQRenderToOnDrawFrame:J

    .line 1283
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    iput-wide v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mCount:J

    .line 1284
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoTime:J

    iput-wide v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mSetRenderInfoTime:J

    .line 1286
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_gr_mat:Z

    if-eqz v4, :cond_1

    .line 1287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->gr_mat:[D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGyroscopeType:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 1289
    :cond_1
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_rv_mat:Z

    if-eqz v4, :cond_2

    .line 1290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->rv_mat:[D

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 1292
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_ac_mat:Z

    if-eqz v4, :cond_3

    .line 1293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->ac_mat:[D

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 1296
    :cond_3
    const/4 v4, 0x1

    new-array v14, v4, [I

    .line 1297
    .local v14, "image_id":[I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1298
    .local v22, "s_time":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    move-object/from16 v0, p1

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_image:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    invoke-virtual {v4, v5, v6, v14, v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->attach([BI[I[I)I

    move-result v20

    .line 1299
    .local v20, "ret":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1300
    .local v12, "e_time":J
    const/4 v4, 0x0

    aget v4, v14, v4

    iput v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    .line 1301
    sub-long v4, v12, v22

    iput-wide v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mAttachTime:J

    .line 1302
    iget v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    if-lez v4, :cond_4

    .line 1303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3408(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    .line 1304
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pvRenderPreview mShootingNum "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mIsShootable:[I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->getIsShootable([I)I

    .line 1316
    .end local v12    # "e_time":J
    .end local v14    # "image_id":[I
    .end local v18    # "now_time":J
    .end local v20    # "ret":I
    .end local v22    # "s_time":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mAttachStatus:I

    .line 1317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mIsShootable:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mIsStootable:I

    .line 1318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1320
    .restart local v22    # "s_time":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1321
    const/4 v4, 0x0

    iput v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mIsStootable:I

    .line 1324
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    if-eqz v4, :cond_d

    .line 1326
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    if-gez v4, :cond_c

    .line 1327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1328
    .local v16, "now":J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    const/16 v21, 0xc8

    .line 1329
    .local v21, "time":I
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mStartAnimationTime:J

    sub-long v4, v16, v4

    const-wide/32 v6, 0x8000

    mul-long/2addr v4, v6

    move/from16 v0, v21

    int-to-long v6, v0

    div-long/2addr v4, v6

    long-to-int v10, v4

    .line 1330
    .local v10, "progress":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    add-int/lit16 v10, v10, 0x2aaa

    .line 1331
    :cond_7
    const v4, 0x8000

    if-lt v10, v4, :cond_8

    .line 1332
    const v10, 0x8000

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    .line 1337
    .end local v16    # "now":J
    .end local v21    # "time":I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    iget v6, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetDeviceRotate()I

    move-result v11

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPreviewWithAnimation([BIIIIII)I

    .line 1341
    .end local v10    # "progress":I
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1342
    .restart local v12    # "e_time":J
    sub-long v4, v12, v22

    iput-wide v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mRenderTime:J

    .line 1343
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    .line 1344
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoStartTime:J

    sub-long v4, v4, p2

    iput-wide v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mODFToOPF:J

    .line 1346
    :cond_9
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->preview_id:I

    iput v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mPreviewID:I

    .line 1347
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    iput-object v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->image:[B

    .line 1348
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->save_path:Ljava/lang/String;

    iput-object v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->save_path:Ljava/lang/String;

    .line 1349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    if-eqz v4, :cond_a

    .line 1350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    invoke-interface {v4, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;->onRenderPreview(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;)V

    .line 1352
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mOnDrawEndTime:J

    .line 1353
    monitor-exit v24

    .line 1355
    return-void

    .line 1328
    .end local v12    # "e_time":J
    .restart local v16    # "now":J
    :cond_b
    const/16 v21, 0x12c

    goto/16 :goto_0

    .line 1335
    .end local v16    # "now":J
    :cond_c
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    .restart local v10    # "progress":I
    goto :goto_1

    .line 1339
    .end local v10    # "progress":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    iget v6, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetDeviceRotate()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPreview([BIIII)I

    goto :goto_2

    .line 1353
    .end local v15    # "result":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;
    .end local v22    # "s_time":J
    :catchall_0
    move-exception v4

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public initSize()V
    .locals 2

    .prologue
    .line 906
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv initSize "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void
.end method

.method protected onDraw()V
    .locals 22

    .prologue
    .line 1119
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStartingPanorama360Time:J
    invoke-static {v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)J

    move-result-wide v18

    const-wide/16 v20, 0x7530

    add-long v18, v18, v20

    cmp-long v4, v4, v18

    if-gez v4, :cond_0

    .line 1120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->stopContinuousAF()V

    .line 1121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    .line 1122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 1124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusRect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    if-lez v4, :cond_1

    .line 1136
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    .line 1234
    :goto_1
    return-void

    .line 1128
    :catch_0
    move-exception v13

    .line 1129
    .local v13, "e":Ljava/lang/Exception;
    const-string v4, "TwGLPanorama360Menu"

    const-string v5, "ignore error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1139
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    if-eqz v4, :cond_5

    .line 1140
    const-string v4, "TwGLPanorama360Menu"

    const-string v5, "onDraw() mResetCalled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v12, 0xbea

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v5, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    .line 1143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v4

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1145
    const-string v4, "TwGLPanorama360Menu"

    const-string v5, "mActivityContext is NULL!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v4

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v4

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v5

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    move-result-object v5

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->access$3200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v4

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->showPostCaptureLayout()V

    .line 1156
    :cond_3
    const-string v4, "TwGLPanorama360Menu"

    const-string v5, "onDraw() resetGL(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->resetGL(I)I

    .line 1158
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    .line 1162
    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1163
    const/4 v4, 0x1

    const/16 v5, 0x303

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_1

    .line 1147
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v12

    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    const/16 v6, 0xbea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v18

    const v19, 0x7f0c000d

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Ljava/lang/String;)V

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v12, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    .line 1149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0xbea

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v12

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1168
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1169
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 1171
    .local v10, "scale":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v4, v18, v20

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v4, v18, v20

    if-lez v4, :cond_6

    .line 1172
    const/16 v17, 0x0

    .line 1173
    .local v17, "set_angle":Z
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    .line 1174
    .local v6, "x_rot":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    .line 1175
    .local v8, "y_rot":D
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    .line 1176
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    .line 1184
    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1186
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1187
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    if-nez v4, :cond_7

    .line 1188
    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1189
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v12, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1190
    const/4 v4, 0x1

    const/16 v12, 0x303

    invoke-static {v4, v12}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1191
    monitor-exit v5

    goto/16 :goto_1

    .line 1193
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1178
    .end local v6    # "x_rot":D
    .end local v8    # "y_rot":D
    .end local v17    # "set_angle":Z
    :cond_6
    const/16 v17, 0x1

    .line 1179
    .restart local v17    # "set_angle":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    .line 1180
    .restart local v6    # "x_rot":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    .line 1181
    .restart local v8    # "y_rot":D
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    .line 1182
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    goto :goto_3

    .line 1184
    .end local v6    # "x_rot":D
    .end local v8    # "y_rot":D
    .end local v10    # "scale":D
    .end local v17    # "set_angle":Z
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1193
    .restart local v6    # "x_rot":D
    .restart local v8    # "y_rot":D
    .restart local v10    # "scale":D
    .restart local v17    # "set_angle":Z
    :cond_7
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1196
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1197
    :try_start_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDrawBgBlankMode:I

    if-eqz v4, :cond_8

    .line 1198
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvRenderEmptyPreview()V

    .line 1199
    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1200
    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1201
    const/4 v4, 0x1

    const/16 v18, 0x303

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1202
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    monitor-exit v5

    goto/16 :goto_1

    .line 1205
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .line 1204
    :cond_8
    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1205
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1207
    :try_start_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPreviewMode:I

    if-nez v4, :cond_b

    .line 1210
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1211
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/4 v12, 0x0

    aget v4, v4, v12

    const/4 v12, 0x1

    if-ne v4, v12, :cond_a

    const/4 v14, 0x0

    .line 1212
    .local v14, "id":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    aget-object v16, v4, v14

    .line 1213
    .local v16, "render_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/16 v19, 0x0

    aget v12, v12, v19

    aget-object v15, v4, v12

    .line 1214
    .local v15, "pre_render_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1215
    :try_start_c
    iget-wide v4, v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mOnDrawEndTime:J

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvRenderPreview(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;J)V

    .line 1216
    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1217
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v4, v5, v12, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1230
    .end local v14    # "id":I
    .end local v15    # "pre_render_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    .end local v16    # "render_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    :cond_9
    :goto_5
    const/4 v4, 0x1

    const/16 v5, 0x303

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1231
    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1232
    monitor-exit v18

    goto/16 :goto_1

    :catchall_3
    move-exception v4

    monitor-exit v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v4

    .line 1204
    :catchall_4
    move-exception v4

    :try_start_d
    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1211
    :cond_a
    const/4 v14, 0x1

    goto :goto_4

    .line 1214
    :catchall_5
    move-exception v4

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    throw v4

    .line 1218
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPreviewMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 1219
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    if-eqz v4, :cond_c

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPostviewDefault(I)I

    .line 1221
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    goto :goto_5

    .line 1223
    :cond_c
    if-eqz v17, :cond_d

    .line 1224
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    invoke-virtual/range {v5 .. v12}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPostviewAngle(DDDI)I

    goto :goto_5

    .line 1226
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    invoke-virtual/range {v5 .. v12}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPostview(DDDI)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_5
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 913
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv onLoad "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v0, 0x1

    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1109
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pv onOrientationChanged orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onOrientationChanged(I)V

    .line 1111
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    .line 1112
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 921
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv onReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1802(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    .line 923
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    .line 924
    const/16 v0, 0x1388

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    .line 925
    return-void
.end method

.method public pvGetOrientation()I
    .locals 2

    .prologue
    .line 1093
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    if-gez v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    .line 1097
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1099
    const/4 v0, 0x0

    .line 1104
    .local v0, "orientation":I
    :goto_0
    return v0

    .line 1100
    .end local v0    # "orientation":I
    :pswitch_0
    const/16 v0, 0x5a

    .restart local v0    # "orientation":I
    goto :goto_0

    .line 1101
    .end local v0    # "orientation":I
    :pswitch_1
    const/16 v0, 0xb4

    .restart local v0    # "orientation":I
    goto :goto_0

    .line 1102
    .end local v0    # "orientation":I
    :pswitch_2
    const/16 v0, 0x10e

    .restart local v0    # "orientation":I
    goto :goto_0

    .line 1097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pvGetRenderEnable()Z
    .locals 2

    .prologue
    .line 1079
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvGetRenderEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    return v0
.end method

.method public pvSetAnimationEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1067
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetAnimationEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    .line 1069
    return-void
.end method

.method public pvSetAnimationInfo(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "progress"    # I

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1058
    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    .line 1059
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    .line 1060
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    if-gez v0, :cond_0

    .line 1061
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mStartAnimationTime:J

    .line 1063
    :cond_0
    monitor-exit v1

    .line 1064
    return-void

    .line 1063
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDefault()V
    .locals 4

    .prologue
    .line 1025
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetDefault"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1027
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    .line 1028
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    .line 1029
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    .line 1030
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    .line 1031
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    .line 1033
    monitor-exit v1

    .line 1034
    return-void

    .line 1033
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDefaultScale(D)V
    .locals 3
    .param p1, "scale"    # D

    .prologue
    .line 1018
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetDefaultScale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1020
    :try_start_0
    iput-wide p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 1021
    monitor-exit v1

    .line 1022
    return-void

    .line 1021
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDispType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1051
    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    .line 1052
    monitor-exit v1

    .line 1053
    return-void

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDrawBgBlankMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1085
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDrawBgBlankMode:I

    if-ne v0, p1, :cond_0

    .line 1090
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1087
    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDrawBgBlankMode:I

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setDrawBgBlankMode(I)I

    .line 1089
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetInputGyroscopeType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 932
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGyroscopeType:I

    .line 933
    return-void
.end method

.method public pvSetPanorama360ViewEventListener(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    .line 929
    return-void
.end method

.method public pvSetPreviewRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 1037
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetPreviewRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1039
    sparse-switch p1, :sswitch_data_0

    .line 1045
    :goto_0
    :try_start_0
    monitor-exit v1

    .line 1046
    return-void

    .line 1040
    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    goto :goto_0

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1041
    :sswitch_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    goto :goto_0

    .line 1042
    :sswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    goto :goto_0

    .line 1043
    :sswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1039
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public pvSetRenderEnable(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1074
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    .line 1075
    monitor-exit v1

    .line 1076
    return-void

    .line 1075
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetRenderInfo([BLjava/util/ArrayList;[D[D[DIILjava/lang/String;)V
    .locals 12
    .param p1, "input_img"    # [B
    .param p3, "gr_mat"    # [D
    .param p4, "rv_mat"    # [D
    .param p5, "ac_mat"    # [D
    .param p6, "use_image"    # I
    .param p7, "id"    # I
    .param p8, "save_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<[F>;[D[D[DII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 938
    .local p2, "gr_value_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    monitor-enter v8

    .line 940
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    aget-object v4, v5, v9

    .line 941
    .local v4, "r_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/4 v11, 0x0

    aget v5, v5, v11

    const/4 v11, 0x1

    if-ne v5, v11, :cond_2

    const/4 v5, 0x0

    :goto_0
    aput v5, v9, v10

    .line 942
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    iget-object v8, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 945
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 947
    .local v6, "s_time":J
    move-object/from16 v0, p8

    iput-object v0, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->save_path:Ljava/lang/String;

    .line 948
    if-eqz p1, :cond_0

    .line 949
    const/4 v5, 0x0

    iget-object v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    array-length v11, v11

    invoke-static {p1, v5, v9, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 951
    :cond_0
    if-eqz p2, :cond_1

    .line 952
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->gr_value_list:Ljava/util/ArrayList;

    .line 955
    :cond_1
    if-eqz p3, :cond_3

    .line 956
    const/4 v5, 0x0

    iget-object v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->gr_mat:[D

    const/4 v10, 0x0

    array-length v11, p3

    invoke-static {p3, v5, v9, v10, v11}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 957
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_gr_mat:Z

    .line 961
    :goto_1
    if-eqz p4, :cond_4

    .line 962
    const/4 v5, 0x0

    iget-object v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->rv_mat:[D

    const/4 v10, 0x0

    move-object/from16 v0, p4

    array-length v11, v0

    move-object/from16 v0, p4

    invoke-static {v0, v5, v9, v10, v11}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 963
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_rv_mat:Z

    .line 967
    :goto_2
    if-eqz p5, :cond_5

    .line 968
    const/4 v5, 0x0

    iget-object v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->ac_mat:[D

    const/4 v10, 0x0

    move-object/from16 v0, p5

    array-length v11, v0

    move-object/from16 v0, p5

    invoke-static {v0, v5, v9, v10, v11}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 969
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_ac_mat:Z

    .line 973
    :goto_3
    move/from16 v0, p6

    iput v0, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_image:I

    .line 974
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->is_set:Z

    .line 975
    move/from16 v0, p7

    iput v0, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->preview_id:I

    .line 977
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 978
    .local v2, "e_time":J
    sub-long v10, v2, v6

    iput-wide v10, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoTime:J

    .line 979
    iput-wide v6, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoStartTime:J

    .line 980
    iput-wide v2, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoEndTime:J

    .line 981
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 983
    return-void

    .line 941
    .end local v2    # "e_time":J
    .end local v6    # "s_time":J
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 942
    .end local v4    # "r_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 959
    .restart local v4    # "r_info":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    .restart local v6    # "s_time":J
    :cond_3
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_gr_mat:Z

    goto :goto_1

    .line 981
    .end local v6    # "s_time":J
    :catchall_1
    move-exception v5

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 965
    .restart local v6    # "s_time":J
    :cond_4
    const/4 v5, 0x0

    :try_start_4
    iput-boolean v5, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_rv_mat:Z

    goto :goto_2

    .line 971
    :cond_5
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_ac_mat:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3
.end method

.method public pvSetScale(F)V
    .locals 10
    .param p1, "scale"    # F

    .prologue
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const-wide v6, 0x3fe999999999999aL    # 0.8

    .line 1002
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetScale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1004
    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 1005
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    cmpl-double v0, v2, v8

    if-lez v0, :cond_1

    .line 1006
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    .line 1010
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    .line 1011
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    .line 1012
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    .line 1013
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    .line 1014
    monitor-exit v1

    .line 1015
    return-void

    .line 1007
    :cond_1
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    .line 1008
    const-wide v2, 0x3fe999999999999aL    # 0.8

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    goto :goto_0

    .line 1014
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetSwipeAngle(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 994
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetSwipeAngle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 996
    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    float-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    .line 997
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    float-to-double v4, p2

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    .line 998
    monitor-exit v1

    .line 999
    return-void

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetSwipeDistance(FF)V
    .locals 6
    .param p1, "distance_x"    # F
    .param p2, "distance_y"    # F

    .prologue
    .line 986
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetSwipeDistance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mViewWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    .line 989
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mViewHeight:I

    int-to-float v0, v0

    div-float v0, p2, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    .line 990
    monitor-exit v1

    .line 991
    return-void

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
